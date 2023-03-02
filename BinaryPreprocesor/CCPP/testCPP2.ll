; ModuleID = 'testCPP2.cpp'
source_filename = "testCPP2.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.28.29333"

%"class.std::basic_ostream" = type { ptr, [4 x i8], i32, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, ptr, i8 }
%"class.std::ios_base" = type { ptr, i64, i32, i32, i32, i64, i64, ptr, ptr, ptr }
%rtti.TypeDescriptor26 = type { ptr, ptr, [27 x i8] }
%eh.CatchableType = type { i32, i32, i32, i32, i32, i32, i32 }
%rtti.TypeDescriptor22 = type { ptr, ptr, [23 x i8] }
%rtti.TypeDescriptor23 = type { ptr, ptr, [24 x i8] }
%rtti.TypeDescriptor19 = type { ptr, ptr, [20 x i8] }
%eh.CatchableTypeArray.5 = type { i32, [5 x i32] }
%eh.ThrowInfo = type { i32, i32, i32, i32 }
%rtti.CompleteObjectLocator = type { i32, i32, i32, i32, i32, i32 }
%rtti.TypeDescriptor35 = type { ptr, ptr, [36 x i8] }
%rtti.ClassHierarchyDescriptor = type { i32, i32, i32, i32 }
%rtti.BaseClassDescriptor = type { i32, i32, i32, i32, i32, i32, i32 }
%rtti.TypeDescriptor24 = type { ptr, ptr, [25 x i8] }
%rtti.TypeDescriptor30 = type { ptr, ptr, [31 x i8] }
%eh.CatchableTypeArray.3 = type { i32, [3 x i32] }
%"class.std::basic_ostream<char>::sentry" = type { %"class.std::basic_ostream<char>::_Sentry_base", i8 }
%"class.std::basic_ostream<char>::_Sentry_base" = type { ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%"class.std::ios_base::failure" = type { %"class.std::system_error" }
%"class.std::system_error" = type { %"class.std::_System_error" }
%"class.std::_System_error" = type { %"class.std::runtime_error", %"class.std::error_code" }
%"class.std::runtime_error" = type { %"class.std::exception" }
%"class.std::exception" = type { ptr, %struct.__std_exception_data }
%struct.__std_exception_data = type { ptr, i8 }
%"class.std::error_code" = type { i32, ptr }
%"class.std::basic_string" = type { %"class.std::_Compressed_pair" }
%"class.std::_Compressed_pair" = type { %"class.std::_String_val" }
%"class.std::_String_val" = type { %"union.std::_String_val<std::_Simple_types<char>>::_Bxty", i64, i64 }
%"union.std::_String_val<std::_Simple_types<char>>::_Bxty" = type { ptr, [8 x i8] }
%"class.std::error_condition" = type { i32, ptr }
%"struct.std::_Zero_then_variadic_args_t" = type { i8 }
%"struct.std::_Fake_allocator" = type { i8 }
%"struct.std::_Fake_proxy_ptr_impl" = type { i8 }
%class.anon = type { i8 }
%"class.std::bad_array_new_length" = type { %"class.std::bad_alloc" }
%"class.std::bad_alloc" = type { %"class.std::exception" }
%"class.std::error_category" = type { ptr, i64 }
%"class.std::allocator" = type { i8 }
%"struct.std::_One_then_variadic_args_t" = type { i8 }
%"struct.std::integral_constant" = type { i8 }
%class.anon.0 = type { i8 }

$"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z" = comdat any

$"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z" = comdat any

$"?width@ios_base@std@@QEBA_JXZ" = comdat any

$"??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z" = comdat any

$"??Bsentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEBA_NXZ" = comdat any

$"?flags@ios_base@std@@QEBAHXZ" = comdat any

$"?eq_int_type@?$_Narrow_char_traits@DH@std@@SA_NAEBH0@Z" = comdat any

$"?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ" = comdat any

$"?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHD@Z" = comdat any

$"?fill@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBADXZ" = comdat any

$"?eof@?$_Narrow_char_traits@DH@std@@SAHXZ" = comdat any

$"?sputn@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAA_JPEBD_J@Z" = comdat any

$"?width@ios_base@std@@QEAA_J_J@Z" = comdat any

$"?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z" = comdat any

$"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ" = comdat any

$"??0_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z" = comdat any

$"?good@ios_base@std@@QEBA_NXZ" = comdat any

$"?tie@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_ostream@DU?$char_traits@D@std@@@2@XZ" = comdat any

$"?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ" = comdat any

$"??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ" = comdat any

$"?rdstate@ios_base@std@@QEBAHXZ" = comdat any

$"?pubsync@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHXZ" = comdat any

$"?_Pnavail@?$basic_streambuf@DU?$char_traits@D@std@@@std@@IEBA_JXZ" = comdat any

$"?to_int_type@?$_Narrow_char_traits@DH@std@@SAHAEBD@Z" = comdat any

$"?_Pninc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@IEAAPEADXZ" = comdat any

$"?clear@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z" = comdat any

$"?clear@ios_base@std@@QEAAXH_N@Z" = comdat any

$"?make_error_code@std@@YA?AVerror_code@1@W4io_errc@1@@Z" = comdat any

$"??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z" = comdat any

$"??0failure@ios_base@std@@QEAA@AEBV012@@Z" = comdat any

$"??0system_error@std@@QEAA@AEBV01@@Z" = comdat any

$"??0_System_error@std@@QEAA@AEBV01@@Z" = comdat any

$"??0runtime_error@std@@QEAA@AEBV01@@Z" = comdat any

$"??0exception@std@@QEAA@AEBV01@@Z" = comdat any

$"??1failure@ios_base@std@@UEAA@XZ" = comdat any

$"?iostream_category@std@@YAAEBVerror_category@1@XZ" = comdat any

$"??0error_code@std@@QEAA@HAEBVerror_category@1@@Z" = comdat any

$"??$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@0@XZ" = comdat any

$"??1_Iostream_error_category2@std@@UEAA@XZ" = comdat any

$"??_G_Iostream_error_category2@std@@UEAAPEAXI@Z" = comdat any

$"?name@_Iostream_error_category2@std@@UEBAPEBDXZ" = comdat any

$"?message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@H@Z" = comdat any

$"?default_error_condition@error_category@std@@UEBA?AVerror_condition@2@H@Z" = comdat any

$"?equivalent@error_category@std@@UEBA_NAEBVerror_code@2@H@Z" = comdat any

$"?equivalent@error_category@std@@UEBA_NHAEBVerror_condition@2@@Z" = comdat any

$"??1error_category@std@@UEAA@XZ" = comdat any

$"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD_K@Z" = comdat any

$"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z" = comdat any

$"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z" = comdat any

$"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z" = comdat any

$"?_Tidy_init@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ" = comdat any

$"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z" = comdat any

$"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ" = comdat any

$"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ" = comdat any

$"??0?$allocator@D@std@@QEAA@XZ" = comdat any

$"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z" = comdat any

$"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ" = comdat any

$"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z" = comdat any

$"??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??assign@01@QEAAAEAV01@QEBD0@Z@PEBD@Z" = comdat any

$"?_Large_string_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ" = comdat any

$"??$_Unfancy@D@std@@YAPEADPEAD@Z" = comdat any

$"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ" = comdat any

$"?_Xlen_string@std@@YAXXZ" = comdat any

$"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z" = comdat any

$"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ" = comdat any

$"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z" = comdat any

$"?_Orphan_all@_Container_base0@std@@QEAAXXZ" = comdat any

$"??R<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD10@Z" = comdat any

$"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z" = comdat any

$"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z" = comdat any

$"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z" = comdat any

$"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ" = comdat any

$"??$max@_K@std@@YAAEB_KAEB_K0@Z" = comdat any

$"??$min@_K@std@@YAAEB_KAEB_K0@Z" = comdat any

$"?max@?$numeric_limits@_J@std@@SA_JXZ" = comdat any

$"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ" = comdat any

$"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z" = comdat any

$"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ" = comdat any

$"??$_Allocate@$0BA@U_Default_allocate_traits@std@@$0A@@std@@YAPEAX_K@Z" = comdat any

$"??$_Get_size_of_n@$00@std@@YA_K_K@Z" = comdat any

$"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z" = comdat any

$"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z" = comdat any

$"?_Throw_bad_array_new_length@std@@YAXXZ" = comdat any

$"??0bad_array_new_length@std@@QEAA@XZ" = comdat any

$"??0bad_array_new_length@std@@QEAA@AEBV01@@Z" = comdat any

$"??0bad_alloc@std@@QEAA@AEBV01@@Z" = comdat any

$"??1bad_array_new_length@std@@UEAA@XZ" = comdat any

$"??0bad_alloc@std@@AEAA@QEBD@Z" = comdat any

$"??_Gbad_array_new_length@std@@UEAAPEAXI@Z" = comdat any

$"?what@exception@std@@UEBAPEBDXZ" = comdat any

$"??0exception@std@@QEAA@QEBDH@Z" = comdat any

$"??_Gbad_alloc@std@@UEAAPEAXI@Z" = comdat any

$"??_Gexception@std@@UEAAPEAXI@Z" = comdat any

$"??1exception@std@@UEAA@XZ" = comdat any

$"??1bad_alloc@std@@UEAA@XZ" = comdat any

$"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z" = comdat any

$"??$_Deallocate@$0BA@$0A@@std@@YAXPEAX_K@Z" = comdat any

$"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z" = comdat any

$"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z" = comdat any

$"??$_Convert_size@_K@std@@YA_K_K@Z" = comdat any

$"??0error_condition@std@@QEAA@HAEBVerror_category@1@@Z" = comdat any

$"??8error_category@std@@QEBA_NAEBV01@@Z" = comdat any

$"?category@error_code@std@@QEBAAEBVerror_category@2@XZ" = comdat any

$"?value@error_code@std@@QEBAHXZ" = comdat any

$"??8std@@YA_NAEBVerror_condition@0@0@Z" = comdat any

$"?category@error_condition@std@@QEBAAEBVerror_category@2@XZ" = comdat any

$"?value@error_condition@std@@QEBAHXZ" = comdat any

$"??0system_error@std@@QEAA@Verror_code@1@PEBD@Z" = comdat any

$"??_Gfailure@ios_base@std@@UEAAPEAXI@Z" = comdat any

$"??0_System_error@std@@IEAA@Verror_code@1@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z" = comdat any

$"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ" = comdat any

$"??_Gsystem_error@std@@UEAAPEAXI@Z" = comdat any

$"?_Makestr@_System_error@std@@CA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@Verror_code@2@V32@@Z" = comdat any

$"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z" = comdat any

$"??0runtime_error@std@@QEAA@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z" = comdat any

$"??_G_System_error@std@@UEAAPEAXI@Z" = comdat any

$"?empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NXZ" = comdat any

$"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z" = comdat any

$"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@AEBV12@@Z" = comdat any

$"?message@error_code@std@@QEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ" = comdat any

$"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@$$QEAV01@@Z" = comdat any

$"?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ" = comdat any

$"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z" = comdat any

$"??$_Reallocate_grow_by@V<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD_K@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??append@01@QEAAAEAV01@QEBD0@Z@PEBD_K@Z" = comdat any

$"??R<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD0101@Z" = comdat any

$"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ" = comdat any

$"??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z" = comdat any

$"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z" = comdat any

$"?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U?$integral_constant@_N$00@2@@Z" = comdat any

$"?_Memcpy_val_from@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z" = comdat any

$"?select_on_container_copy_construction@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA?AV?$allocator@D@2@AEBV32@@Z" = comdat any

$"?_Construct_lv_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z" = comdat any

$"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ" = comdat any

$"??0exception@std@@QEAA@QEBD@Z" = comdat any

$"??_Gruntime_error@std@@UEAAPEAXI@Z" = comdat any

$"??1runtime_error@std@@UEAA@XZ" = comdat any

$"??1_System_error@std@@UEAA@XZ" = comdat any

$"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ" = comdat any

$"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z" = comdat any

$"??1system_error@std@@UEAA@XZ" = comdat any

$"?_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAXXZ" = comdat any

$"??_C@_0BA@DOEKPICM@Sorted?5array?3?5?6?$AA@" = comdat any

$"??_C@_0BF@PHHKMMFD@ios_base?3?3badbit?5set?$AA@" = comdat any

$"??_C@_0BG@FMKFHCIL@ios_base?3?3failbit?5set?$AA@" = comdat any

$"??_C@_0BF@OOHOMBOF@ios_base?3?3eofbit?5set?$AA@" = comdat any

$"??_R0?AVfailure@ios_base@std@@@8" = comdat any

$"_CT??_R0?AVfailure@ios_base@std@@@8??0failure@ios_base@std@@QEAA@AEBV012@@Z40" = comdat any

$"??_R0?AVsystem_error@std@@@8" = comdat any

$"_CT??_R0?AVsystem_error@std@@@8??0system_error@std@@QEAA@AEBV01@@Z40" = comdat any

$"??_R0?AV_System_error@std@@@8" = comdat any

$"_CT??_R0?AV_System_error@std@@@8??0_System_error@std@@QEAA@AEBV01@@Z40" = comdat any

$"??_R0?AVruntime_error@std@@@8" = comdat any

$"_CT??_R0?AVruntime_error@std@@@8??0runtime_error@std@@QEAA@AEBV01@@Z24" = comdat any

$"??_R0?AVexception@std@@@8" = comdat any

$"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" = comdat any

$"_CTA5?AVfailure@ios_base@std@@" = comdat any

$"_TI5?AVfailure@ios_base@std@@" = comdat any

$"?_Static@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4V21@A" = comdat any

$"??_7_Iostream_error_category2@std@@6B@" = comdat largest

$"?$TSS0@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@0@XZ@4HA" = comdat any

$"??_R4_Iostream_error_category2@std@@6B@" = comdat any

$"??_R0?AV_Iostream_error_category2@std@@@8" = comdat any

$"??_R3_Iostream_error_category2@std@@8" = comdat any

$"??_R2_Iostream_error_category2@std@@8" = comdat any

$"??_R1A@?0A@EA@_Iostream_error_category2@std@@8" = comdat any

$"??_R1A@?0A@EA@error_category@std@@8" = comdat any

$"??_R0?AVerror_category@std@@@8" = comdat any

$"??_R3error_category@std@@8" = comdat any

$"??_R2error_category@std@@8" = comdat any

$"??_C@_08LLGCOLLL@iostream?$AA@" = comdat any

$"?_Iostream_error@?4??message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@3@H@Z@4QBDB" = comdat any

$"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@" = comdat any

$"??_R0?AVbad_array_new_length@std@@@8" = comdat any

$"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24" = comdat any

$"??_R0?AVbad_alloc@std@@@8" = comdat any

$"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24" = comdat any

$"_CTA3?AVbad_array_new_length@std@@" = comdat any

$"_TI3?AVbad_array_new_length@std@@" = comdat any

$"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@" = comdat any

$"??_7bad_array_new_length@std@@6B@" = comdat largest

$"??_R4bad_array_new_length@std@@6B@" = comdat any

$"??_R3bad_array_new_length@std@@8" = comdat any

$"??_R2bad_array_new_length@std@@8" = comdat any

$"??_R1A@?0A@EA@bad_array_new_length@std@@8" = comdat any

$"??_R1A@?0A@EA@bad_alloc@std@@8" = comdat any

$"??_R3bad_alloc@std@@8" = comdat any

$"??_R2bad_alloc@std@@8" = comdat any

$"??_R1A@?0A@EA@exception@std@@8" = comdat any

$"??_R3exception@std@@8" = comdat any

$"??_R2exception@std@@8" = comdat any

$"??_7bad_alloc@std@@6B@" = comdat largest

$"??_R4bad_alloc@std@@6B@" = comdat any

$"??_7exception@std@@6B@" = comdat largest

$"??_R4exception@std@@6B@" = comdat any

$"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@" = comdat any

$"??_7failure@ios_base@std@@6B@" = comdat largest

$"??_R4failure@ios_base@std@@6B@" = comdat any

$"??_R3failure@ios_base@std@@8" = comdat any

$"??_R2failure@ios_base@std@@8" = comdat any

$"??_R1A@?0A@EA@failure@ios_base@std@@8" = comdat any

$"??_R1A@?0A@EA@system_error@std@@8" = comdat any

$"??_R3system_error@std@@8" = comdat any

$"??_R2system_error@std@@8" = comdat any

$"??_R1A@?0A@EA@_System_error@std@@8" = comdat any

$"??_R3_System_error@std@@8" = comdat any

$"??_R2_System_error@std@@8" = comdat any

$"??_R1A@?0A@EA@runtime_error@std@@8" = comdat any

$"??_R3runtime_error@std@@8" = comdat any

$"??_R2runtime_error@std@@8" = comdat any

$"??_7system_error@std@@6B@" = comdat largest

$"??_R4system_error@std@@6B@" = comdat any

$"??_7_System_error@std@@6B@" = comdat largest

$"??_R4_System_error@std@@6B@" = comdat any

$"??_C@_02LMMGGCAJ@?3?5?$AA@" = comdat any

$"??_7runtime_error@std@@6B@" = comdat largest

$"??_R4runtime_error@std@@6B@" = comdat any

@__const.main.arr = private unnamed_addr constant [6 x i32] [i32 10, i32 7, i32 8, i32 9, i32 1, i32 5], align 16
@"?cout@std@@3V?$basic_ostream@DU?$char_traits@D@std@@@1@A" = external dso_local global %"class.std::basic_ostream", align 8
@"??_C@_0BA@DOEKPICM@Sorted?5array?3?5?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"Sorted array: \0A\00", comdat, align 1
@"??_C@_0BF@PHHKMMFD@ios_base?3?3badbit?5set?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"ios_base::badbit set\00", comdat, align 1
@"??_C@_0BG@FMKFHCIL@ios_base?3?3failbit?5set?$AA@" = linkonce_odr dso_local unnamed_addr constant [22 x i8] c"ios_base::failbit set\00", comdat, align 1
@"??_C@_0BF@OOHOMBOF@ios_base?3?3eofbit?5set?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"ios_base::eofbit set\00", comdat, align 1
@"??_7type_info@@6B@" = external constant ptr
@"??_R0?AVfailure@ios_base@std@@@8" = linkonce_odr global %rtti.TypeDescriptor26 { ptr @"??_7type_info@@6B@", ptr null, [27 x i8] c".?AVfailure@ios_base@std@@\00" }, comdat
@__ImageBase = external dso_local constant i8
@"_CT??_R0?AVfailure@ios_base@std@@@8??0failure@ios_base@std@@QEAA@AEBV012@@Z40" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVfailure@ios_base@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 40, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0failure@ios_base@std@@QEAA@AEBV012@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AVsystem_error@std@@@8" = linkonce_odr global %rtti.TypeDescriptor22 { ptr @"??_7type_info@@6B@", ptr null, [23 x i8] c".?AVsystem_error@std@@\00" }, comdat
@"_CT??_R0?AVsystem_error@std@@@8??0system_error@std@@QEAA@AEBV01@@Z40" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVsystem_error@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 40, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0system_error@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AV_System_error@std@@@8" = linkonce_odr global %rtti.TypeDescriptor23 { ptr @"??_7type_info@@6B@", ptr null, [24 x i8] c".?AV_System_error@std@@\00" }, comdat
@"_CT??_R0?AV_System_error@std@@@8??0_System_error@std@@QEAA@AEBV01@@Z40" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AV_System_error@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 40, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0_System_error@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AVruntime_error@std@@@8" = linkonce_odr global %rtti.TypeDescriptor23 { ptr @"??_7type_info@@6B@", ptr null, [24 x i8] c".?AVruntime_error@std@@\00" }, comdat
@"_CT??_R0?AVruntime_error@std@@@8??0runtime_error@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVruntime_error@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0runtime_error@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AVexception@std@@@8" = linkonce_odr global %rtti.TypeDescriptor19 { ptr @"??_7type_info@@6B@", ptr null, [20 x i8] c".?AVexception@std@@\00" }, comdat
@"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVexception@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0exception@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"_CTA5?AVfailure@ios_base@std@@" = linkonce_odr unnamed_addr constant %eh.CatchableTypeArray.5 { i32 5, [5 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVfailure@ios_base@std@@@8??0failure@ios_base@std@@QEAA@AEBV012@@Z40" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVsystem_error@std@@@8??0system_error@std@@QEAA@AEBV01@@Z40" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AV_System_error@std@@@8??0_System_error@std@@QEAA@AEBV01@@Z40" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVruntime_error@std@@@8??0runtime_error@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32)] }, section ".xdata", comdat
@"_TI5?AVfailure@ios_base@std@@" = linkonce_odr unnamed_addr constant %eh.ThrowInfo { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??1failure@ios_base@std@@UEAA@XZ" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CTA5?AVfailure@ios_base@std@@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"?_Static@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4V21@A" = linkonce_odr dso_local global { ptr, i64 } { ptr @"??_7_Iostream_error_category2@std@@6B@", i64 5 }, comdat, align 8
@0 = private unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr @"??_R4_Iostream_error_category2@std@@6B@", ptr @"??_G_Iostream_error_category2@std@@UEAAPEAXI@Z", ptr @"?name@_Iostream_error_category2@std@@UEBAPEBDXZ", ptr @"?message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@H@Z", ptr @"?default_error_condition@error_category@std@@UEBA?AVerror_condition@2@H@Z", ptr @"?equivalent@error_category@std@@UEBA_NAEBVerror_code@2@H@Z", ptr @"?equivalent@error_category@std@@UEBA_NHAEBVerror_condition@2@@Z"] }, comdat($"??_7_Iostream_error_category2@std@@6B@")
@"?$TSS0@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@0@XZ@4HA" = linkonce_odr global i32 0, comdat, align 4
@_Init_thread_epoch = external thread_local global i32, align 4
@"??_R4_Iostream_error_category2@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AV_Iostream_error_category2@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3_Iostream_error_category2@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R4_Iostream_error_category2@std@@6B@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R0?AV_Iostream_error_category2@std@@@8" = linkonce_odr global %rtti.TypeDescriptor35 { ptr @"??_7type_info@@6B@", ptr null, [36 x i8] c".?AV_Iostream_error_category2@std@@\00" }, comdat
@"??_R3_Iostream_error_category2@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 2, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R2_Iostream_error_category2@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R2_Iostream_error_category2@std@@8" = linkonce_odr constant [3 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@_Iostream_error_category2@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@error_category@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@_Iostream_error_category2@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AV_Iostream_error_category2@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 1, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3_Iostream_error_category2@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R1A@?0A@EA@error_category@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVerror_category@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3error_category@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R0?AVerror_category@std@@@8" = linkonce_odr global %rtti.TypeDescriptor24 { ptr @"??_7type_info@@6B@", ptr null, [25 x i8] c".?AVerror_category@std@@\00" }, comdat
@"??_R3error_category@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 1, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R2error_category@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R2error_category@std@@8" = linkonce_odr constant [2 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@error_category@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0], comdat
@"??_C@_08LLGCOLLL@iostream?$AA@" = linkonce_odr dso_local unnamed_addr constant [9 x i8] c"iostream\00", comdat, align 1
@"?_Iostream_error@?4??message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@3@H@Z@4QBDB" = linkonce_odr dso_local constant [22 x i8] c"iostream stream error\00", comdat, align 16
@"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"string too long\00", comdat, align 1
@"??_R0?AVbad_array_new_length@std@@@8" = linkonce_odr global %rtti.TypeDescriptor30 { ptr @"??_7type_info@@6B@", ptr null, [31 x i8] c".?AVbad_array_new_length@std@@\00" }, comdat
@"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVbad_array_new_length@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0bad_array_new_length@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AVbad_alloc@std@@@8" = linkonce_odr global %rtti.TypeDescriptor19 { ptr @"??_7type_info@@6B@", ptr null, [20 x i8] c".?AVbad_alloc@std@@\00" }, comdat
@"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 16, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVbad_alloc@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0bad_alloc@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"_CTA3?AVbad_array_new_length@std@@" = linkonce_odr unnamed_addr constant %eh.CatchableTypeArray.3 { i32 3, [3 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32)] }, section ".xdata", comdat
@"_TI3?AVbad_array_new_length@std@@" = linkonce_odr unnamed_addr constant %eh.ThrowInfo { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??1bad_array_new_length@std@@UEAA@XZ" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CTA3?AVbad_array_new_length@std@@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"bad array new length\00", comdat, align 1
@1 = private unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr @"??_R4bad_array_new_length@std@@6B@", ptr @"??_Gbad_array_new_length@std@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat($"??_7bad_array_new_length@std@@6B@")
@"??_R4bad_array_new_length@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVbad_array_new_length@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3bad_array_new_length@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R4bad_array_new_length@std@@6B@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R3bad_array_new_length@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 3, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R2bad_array_new_length@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R2bad_array_new_length@std@@8" = linkonce_odr constant [4 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@bad_array_new_length@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@bad_alloc@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@exception@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@bad_array_new_length@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVbad_array_new_length@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 2, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3bad_array_new_length@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R1A@?0A@EA@bad_alloc@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVbad_alloc@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 1, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3bad_alloc@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R3bad_alloc@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 2, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R2bad_alloc@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R2bad_alloc@std@@8" = linkonce_odr constant [3 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@bad_alloc@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@exception@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@exception@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVexception@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3exception@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R3exception@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 1, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R2exception@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R2exception@std@@8" = linkonce_odr constant [2 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@exception@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0], comdat
@2 = private unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr @"??_R4bad_alloc@std@@6B@", ptr @"??_Gbad_alloc@std@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat($"??_7bad_alloc@std@@6B@")
@"??_R4bad_alloc@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVbad_alloc@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3bad_alloc@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R4bad_alloc@std@@6B@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@3 = private unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr @"??_R4exception@std@@6B@", ptr @"??_Gexception@std@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat($"??_7exception@std@@6B@")
@"??_R4exception@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVexception@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3exception@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R4exception@std@@6B@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@" = linkonce_odr dso_local unnamed_addr constant [18 x i8] c"Unknown exception\00", comdat, align 1
@4 = private unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr @"??_R4failure@ios_base@std@@6B@", ptr @"??_Gfailure@ios_base@std@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat($"??_7failure@ios_base@std@@6B@")
@"??_R4failure@ios_base@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVfailure@ios_base@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3failure@ios_base@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R4failure@ios_base@std@@6B@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R3failure@ios_base@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 5, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R2failure@ios_base@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R2failure@ios_base@std@@8" = linkonce_odr constant [6 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@failure@ios_base@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@system_error@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@_System_error@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@runtime_error@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@exception@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@failure@ios_base@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVfailure@ios_base@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 4, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3failure@ios_base@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R1A@?0A@EA@system_error@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVsystem_error@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 3, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3system_error@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R3system_error@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 4, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R2system_error@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R2system_error@std@@8" = linkonce_odr constant [5 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@system_error@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@_System_error@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@runtime_error@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@exception@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@_System_error@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AV_System_error@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 2, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3_System_error@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R3_System_error@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 3, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R2_System_error@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R2_System_error@std@@8" = linkonce_odr constant [4 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@_System_error@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@runtime_error@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@exception@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@runtime_error@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVruntime_error@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 1, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3runtime_error@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R3runtime_error@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 2, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R2runtime_error@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R2runtime_error@std@@8" = linkonce_odr constant [3 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@runtime_error@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@exception@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0], comdat
@5 = private unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr @"??_R4system_error@std@@6B@", ptr @"??_Gsystem_error@std@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat($"??_7system_error@std@@6B@")
@"??_R4system_error@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVsystem_error@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3system_error@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R4system_error@std@@6B@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@6 = private unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr @"??_R4_System_error@std@@6B@", ptr @"??_G_System_error@std@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat($"??_7_System_error@std@@6B@")
@"??_R4_System_error@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AV_System_error@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3_System_error@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R4_System_error@std@@6B@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_C@_02LMMGGCAJ@?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c": \00", comdat, align 1
@7 = private unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr @"??_R4runtime_error@std@@6B@", ptr @"??_Gruntime_error@std@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat($"??_7runtime_error@std@@6B@")
@"??_R4runtime_error@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVruntime_error@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3runtime_error@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R4runtime_error@std@@6B@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat

@"??_7_Iostream_error_category2@std@@6B@" = unnamed_addr alias ptr, getelementptr inbounds ({ [7 x ptr] }, ptr @0, i32 0, i32 0, i32 1)
@"??_7bad_array_new_length@std@@6B@" = unnamed_addr alias ptr, getelementptr inbounds ({ [3 x ptr] }, ptr @1, i32 0, i32 0, i32 1)
@"??_7bad_alloc@std@@6B@" = unnamed_addr alias ptr, getelementptr inbounds ({ [3 x ptr] }, ptr @2, i32 0, i32 0, i32 1)
@"??_7exception@std@@6B@" = unnamed_addr alias ptr, getelementptr inbounds ({ [3 x ptr] }, ptr @3, i32 0, i32 0, i32 1)
@"??_7failure@ios_base@std@@6B@" = unnamed_addr alias ptr, getelementptr inbounds ({ [3 x ptr] }, ptr @4, i32 0, i32 0, i32 1)
@"??_7system_error@std@@6B@" = unnamed_addr alias ptr, getelementptr inbounds ({ [3 x ptr] }, ptr @5, i32 0, i32 0, i32 1)
@"??_7_System_error@std@@6B@" = unnamed_addr alias ptr, getelementptr inbounds ({ [3 x ptr] }, ptr @6, i32 0, i32 0, i32 1)
@"??_7runtime_error@std@@6B@" = unnamed_addr alias ptr, getelementptr inbounds ({ [3 x ptr] }, ptr @7, i32 0, i32 0, i32 1)

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [6 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %2, ptr align 16 @__const.main.arr, i64 24, i1 false)
  store i32 6, ptr %3, align 4
  %4 = load i32, ptr %3, align 4
  %5 = sub nsw i32 %4, 1
  %6 = getelementptr inbounds [6 x i32], ptr %2, i64 0, i64 0
  call void @"?quickSort@@YAXQEAHHH@Z"(ptr noundef %6, i32 noundef 0, i32 noundef %5)
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"(ptr noundef nonnull align 8 dereferenceable(8) @"?cout@std@@3V?$basic_ostream@DU?$char_traits@D@std@@@1@A", ptr noundef @"??_C@_0BA@DOEKPICM@Sorted?5array?3?5?6?$AA@")
  %8 = load i32, ptr %3, align 4
  %9 = getelementptr inbounds [6 x i32], ptr %2, i64 0, i64 0
  call void @"?printArray@@YAXQEAHH@Z"(ptr noundef %9, i32 noundef %8)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @"?quickSort@@YAXQEAHHH@Z"(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #3 comdat personality ptr @__CxxFrameHandler3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %"class.std::basic_ostream<char>::sentry", align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  store i32 0, ptr %5, align 4
  %13 = load ptr, ptr %3, align 8
  %14 = call noundef i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(ptr noundef %13) #7
  store i64 %14, ptr %6, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds i8, ptr %15, i64 0
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds i32, ptr %17, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 0, %20
  %22 = getelementptr inbounds i8, ptr %15, i64 %21
  %23 = call noundef i64 @"?width@ios_base@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(72) %22)
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %2
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds i8, ptr %26, i64 0
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds i32, ptr %28, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 0, %31
  %33 = getelementptr inbounds i8, ptr %26, i64 %32
  %34 = call noundef i64 @"?width@ios_base@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(72) %33)
  %35 = load i64, ptr %6, align 8
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %25, %2
  br label %50

38:                                               ; preds = %25
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr inbounds i8, ptr %39, i64 0
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds i32, ptr %41, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 0, %44
  %46 = getelementptr inbounds i8, ptr %39, i64 %45
  %47 = call noundef i64 @"?width@ios_base@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(72) %46)
  %48 = load i64, ptr %6, align 8
  %49 = sub nsw i64 %47, %48
  br label %50

50:                                               ; preds = %38, %37
  %51 = phi i64 [ 0, %37 ], [ %49, %38 ]
  store i64 %51, ptr %7, align 8
  %52 = load ptr, ptr %4, align 8
  %53 = call noundef ptr @"??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %52)
  %54 = invoke noundef zeroext i1 @"??Bsentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %55 unwind label %210

55:                                               ; preds = %50
  br i1 %54, label %59, label %56

56:                                               ; preds = %55
  %57 = load i32, ptr %5, align 4
  %58 = or i32 %57, 4
  store i32 %58, ptr %5, align 4
  br label %198

59:                                               ; preds = %55
  %60 = load ptr, ptr %4, align 8
  %61 = getelementptr inbounds i8, ptr %60, i64 0
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds i32, ptr %62, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 0, %65
  %67 = getelementptr inbounds i8, ptr %60, i64 %66
  %68 = invoke noundef i32 @"?flags@ios_base@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(72) %67)
          to label %69 unwind label %182

69:                                               ; preds = %59
  %70 = and i32 %68, 448
  %71 = icmp ne i32 %70, 64
  br i1 %71, label %72, label %109

72:                                               ; preds = %69
  br label %73

73:                                               ; preds = %105, %72
  %74 = load i64, ptr %7, align 8
  %75 = icmp slt i64 0, %74
  br i1 %75, label %76, label %108

76:                                               ; preds = %73
  %77 = load ptr, ptr %4, align 8
  %78 = getelementptr inbounds i8, ptr %77, i64 0
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr inbounds i32, ptr %79, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 0, %82
  %84 = getelementptr inbounds i8, ptr %77, i64 %83
  %85 = invoke noundef ptr @"?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(96) %84)
          to label %86 unwind label %182

86:                                               ; preds = %76
  %87 = load ptr, ptr %4, align 8
  %88 = getelementptr inbounds i8, ptr %87, i64 0
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds i32, ptr %89, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 0, %92
  %94 = getelementptr inbounds i8, ptr %87, i64 %93
  %95 = invoke noundef i8 @"?fill@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBADXZ"(ptr noundef nonnull align 8 dereferenceable(96) %94)
          to label %96 unwind label %182

96:                                               ; preds = %86
  %97 = invoke noundef i32 @"?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHD@Z"(ptr noundef nonnull align 8 dereferenceable(104) %85, i8 noundef %95)
          to label %98 unwind label %182

98:                                               ; preds = %96
  store i32 %97, ptr %9, align 4
  %99 = call noundef i32 @"?eof@?$_Narrow_char_traits@DH@std@@SAHXZ"() #7
  store i32 %99, ptr %10, align 4
  %100 = call noundef zeroext i1 @"?eq_int_type@?$_Narrow_char_traits@DH@std@@SA_NAEBH0@Z"(ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull align 4 dereferenceable(4) %9) #7
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, ptr %5, align 4
  %103 = or i32 %102, 4
  store i32 %103, ptr %5, align 4
  br label %108

104:                                              ; preds = %98
  br label %105

105:                                              ; preds = %104
  %106 = load i64, ptr %7, align 8
  %107 = add nsw i64 %106, -1
  store i64 %107, ptr %7, align 8
  br label %73, !llvm.loop !9

108:                                              ; preds = %101, %73
  br label %109

109:                                              ; preds = %108, %69
  %110 = load i32, ptr %5, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %132

112:                                              ; preds = %109
  %113 = load ptr, ptr %4, align 8
  %114 = getelementptr inbounds i8, ptr %113, i64 0
  %115 = load ptr, ptr %114, align 8
  %116 = getelementptr inbounds i32, ptr %115, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 0, %118
  %120 = getelementptr inbounds i8, ptr %113, i64 %119
  %121 = invoke noundef ptr @"?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(96) %120)
          to label %122 unwind label %182

122:                                              ; preds = %112
  %123 = load i64, ptr %6, align 8
  %124 = load ptr, ptr %3, align 8
  %125 = invoke noundef i64 @"?sputn@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAA_JPEBD_J@Z"(ptr noundef nonnull align 8 dereferenceable(104) %121, ptr noundef %124, i64 noundef %123)
          to label %126 unwind label %182

126:                                              ; preds = %122
  %127 = load i64, ptr %6, align 8
  %128 = icmp ne i64 %125, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i32, ptr %5, align 4
  %131 = or i32 %130, 4
  store i32 %131, ptr %5, align 4
  br label %132

132:                                              ; preds = %129, %126, %109
  %133 = load i32, ptr %5, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %172

135:                                              ; preds = %132
  br label %136

136:                                              ; preds = %168, %135
  %137 = load i64, ptr %7, align 8
  %138 = icmp slt i64 0, %137
  br i1 %138, label %139, label %171

139:                                              ; preds = %136
  %140 = load ptr, ptr %4, align 8
  %141 = getelementptr inbounds i8, ptr %140, i64 0
  %142 = load ptr, ptr %141, align 8
  %143 = getelementptr inbounds i32, ptr %142, i32 1
  %144 = load i32, ptr %143, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 0, %145
  %147 = getelementptr inbounds i8, ptr %140, i64 %146
  %148 = invoke noundef ptr @"?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(96) %147)
          to label %149 unwind label %182

149:                                              ; preds = %139
  %150 = load ptr, ptr %4, align 8
  %151 = getelementptr inbounds i8, ptr %150, i64 0
  %152 = load ptr, ptr %151, align 8
  %153 = getelementptr inbounds i32, ptr %152, i32 1
  %154 = load i32, ptr %153, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 0, %155
  %157 = getelementptr inbounds i8, ptr %150, i64 %156
  %158 = invoke noundef i8 @"?fill@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBADXZ"(ptr noundef nonnull align 8 dereferenceable(96) %157)
          to label %159 unwind label %182

159:                                              ; preds = %149
  %160 = invoke noundef i32 @"?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHD@Z"(ptr noundef nonnull align 8 dereferenceable(104) %148, i8 noundef %158)
          to label %161 unwind label %182

161:                                              ; preds = %159
  store i32 %160, ptr %11, align 4
  %162 = call noundef i32 @"?eof@?$_Narrow_char_traits@DH@std@@SAHXZ"() #7
  store i32 %162, ptr %12, align 4
  %163 = call noundef zeroext i1 @"?eq_int_type@?$_Narrow_char_traits@DH@std@@SA_NAEBH0@Z"(ptr noundef nonnull align 4 dereferenceable(4) %12, ptr noundef nonnull align 4 dereferenceable(4) %11) #7
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32, ptr %5, align 4
  %166 = or i32 %165, 4
  store i32 %166, ptr %5, align 4
  br label %171

167:                                              ; preds = %161
  br label %168

168:                                              ; preds = %167
  %169 = load i64, ptr %7, align 8
  %170 = add nsw i64 %169, -1
  store i64 %170, ptr %7, align 8
  br label %136, !llvm.loop !11

171:                                              ; preds = %164, %136
  br label %172

172:                                              ; preds = %171, %132
  %173 = load ptr, ptr %4, align 8
  %174 = getelementptr inbounds i8, ptr %173, i64 0
  %175 = load ptr, ptr %174, align 8
  %176 = getelementptr inbounds i32, ptr %175, i32 1
  %177 = load i32, ptr %176, align 4
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 0, %178
  %180 = getelementptr inbounds i8, ptr %173, i64 %179
  %181 = invoke noundef i64 @"?width@ios_base@std@@QEAA_J_J@Z"(ptr noundef nonnull align 8 dereferenceable(72) %180, i64 noundef 0)
          to label %197 unwind label %182

182:                                              ; preds = %172, %159, %149, %139, %122, %112, %96, %86, %76, %59
  %183 = catchswitch within none [label %184] unwind label %210

184:                                              ; preds = %182
  %185 = catchpad within %183 [ptr null, i32 64, ptr null]
  %186 = load ptr, ptr %4, align 8
  %187 = getelementptr inbounds i8, ptr %186, i64 0
  %188 = load ptr, ptr %187, align 8
  %189 = getelementptr inbounds i32, ptr %188, i32 1
  %190 = load i32, ptr %189, align 4
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 0, %191
  %193 = getelementptr inbounds i8, ptr %186, i64 %192
  invoke void @"?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z"(ptr noundef nonnull align 8 dereferenceable(96) %193, i32 noundef 4, i1 noundef zeroext true) [ "funclet"(token %185) ]
          to label %194 unwind label %210

194:                                              ; preds = %184
  catchret from %185 to label %195

195:                                              ; preds = %194
  br label %196

196:                                              ; preds = %195, %197
  br label %198

197:                                              ; preds = %172
  br label %196

198:                                              ; preds = %196, %56
  %199 = load ptr, ptr %4, align 8
  %200 = getelementptr inbounds i8, ptr %199, i64 0
  %201 = load ptr, ptr %200, align 8
  %202 = getelementptr inbounds i32, ptr %201, i32 1
  %203 = load i32, ptr %202, align 4
  %204 = sext i32 %203 to i64
  %205 = add nsw i64 0, %204
  %206 = getelementptr inbounds i8, ptr %199, i64 %205
  %207 = load i32, ptr %5, align 4
  invoke void @"?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z"(ptr noundef nonnull align 8 dereferenceable(96) %206, i32 noundef %207, i1 noundef zeroext false)
          to label %208 unwind label %210

208:                                              ; preds = %198
  %209 = load ptr, ptr %4, align 8
  call void @"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %8) #7
  ret ptr %209

210:                                              ; preds = %198, %184, %182, %50
  %211 = cleanuppad within none []
  call void @"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %8) #7 [ "funclet"(token %211) ]
  cleanupret from %211 unwind to caller
}

declare dso_local void @"?printArray@@YAXQEAHH@Z"(ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(ptr noundef %0) #4 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = invoke i64 @strlen(ptr noundef %3)
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret i64 %4

6:                                                ; preds = %1
  %7 = cleanuppad within none []
  call void @__std_terminate() #15 [ "funclet"(token %7) ]
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?width@ios_base@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(72) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::ios_base", ptr %3, i32 0, i32 6
  %5 = load i64, ptr %4, align 8
  ret i64 %5
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z"(ptr noundef nonnull returned align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8
  store ptr %0, ptr %5, align 8
  %7 = load ptr, ptr %5, align 8
  store ptr %7, ptr %3, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = call noundef ptr @"??0_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds i8, ptr %10, i64 0
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds i32, ptr %12, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 0, %15
  %17 = getelementptr inbounds i8, ptr %10, i64 %16
  %18 = invoke noundef zeroext i1 @"?good@ios_base@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(72) %17)
          to label %19 unwind label %59

19:                                               ; preds = %2
  br i1 %18, label %22, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %"class.std::basic_ostream<char>::sentry", ptr %7, i32 0, i32 1
  store i8 0, ptr %21, align 8
  br label %57

22:                                               ; preds = %19
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds i8, ptr %23, i64 0
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds i32, ptr %25, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 0, %28
  %30 = getelementptr inbounds i8, ptr %23, i64 %29
  %31 = invoke noundef ptr @"?tie@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_ostream@DU?$char_traits@D@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(96) %30)
          to label %32 unwind label %59

32:                                               ; preds = %22
  store ptr %31, ptr %6, align 8
  %33 = load ptr, ptr %6, align 8
  %34 = icmp ne ptr %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load ptr, ptr %6, align 8
  %37 = load ptr, ptr %4, align 8
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %32
  %40 = getelementptr inbounds %"class.std::basic_ostream<char>::sentry", ptr %7, i32 0, i32 1
  store i8 1, ptr %40, align 8
  br label %57

41:                                               ; preds = %35
  %42 = load ptr, ptr %6, align 8
  %43 = invoke noundef nonnull align 8 dereferenceable(8) ptr @"?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %44 unwind label %59

44:                                               ; preds = %41
  %45 = load ptr, ptr %4, align 8
  %46 = getelementptr inbounds i8, ptr %45, i64 0
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds i32, ptr %47, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 0, %50
  %52 = getelementptr inbounds i8, ptr %45, i64 %51
  %53 = invoke noundef zeroext i1 @"?good@ios_base@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(72) %52)
          to label %54 unwind label %59

54:                                               ; preds = %44
  %55 = getelementptr inbounds %"class.std::basic_ostream<char>::sentry", ptr %7, i32 0, i32 1
  %56 = zext i1 %53 to i8
  store i8 %56, ptr %55, align 8
  br label %57

57:                                               ; preds = %54, %39, %20
  %58 = load ptr, ptr %3, align 8
  ret ptr %58

59:                                               ; preds = %44, %41, %22, %2
  %60 = cleanuppad within none []
  call void @"??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %7) #7 [ "funclet"(token %60) ]
  cleanupret from %60 unwind to caller
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"??Bsentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::basic_ostream<char>::sentry", ptr %3, i32 0, i32 1
  %5 = load i8, ptr %4, align 8
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

declare dso_local i32 @__CxxFrameHandler3(...)

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @"?flags@ios_base@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(72) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::ios_base", ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"?eq_int_type@?$_Narrow_char_traits@DH@std@@SA_NAEBH0@Z"(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #4 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr %3, align 8
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %6, %8
  ret i1 %9
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(96) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::basic_ios", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i32 @"?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHD@Z"(ptr noundef nonnull align 8 dereferenceable(104) %0, i8 noundef %1) #3 comdat align 2 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  store i8 %1, ptr %3, align 1
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = call noundef i64 @"?_Pnavail@?$basic_streambuf@DU?$char_traits@D@std@@@std@@IEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %7 = icmp slt i64 0, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i8, ptr %3, align 1
  %10 = call noundef ptr @"?_Pninc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@IEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(104) %5)
  store i8 %9, ptr %10, align 1
  %11 = call noundef i32 @"?to_int_type@?$_Narrow_char_traits@DH@std@@SAHAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %10) #7
  br label %18

12:                                               ; preds = %2
  %13 = call noundef i32 @"?to_int_type@?$_Narrow_char_traits@DH@std@@SAHAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %3) #7
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  %17 = call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(104) %5, i32 noundef %13)
  br label %18

18:                                               ; preds = %12, %8
  %19 = phi i32 [ %11, %8 ], [ %17, %12 ]
  ret i32 %19
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8 @"?fill@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBADXZ"(ptr noundef nonnull align 8 dereferenceable(96) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::basic_ios", ptr %3, i32 0, i32 3
  %5 = load i8, ptr %4, align 8
  ret i8 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @"?eof@?$_Narrow_char_traits@DH@std@@SAHXZ"() #4 comdat align 2 {
  ret i32 -1
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i64 @"?sputn@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAA_JPEBD_J@Z"(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i64 noundef %2) #3 comdat align 2 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i64 %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load i64, ptr %4, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %7, align 8
  %11 = getelementptr inbounds ptr, ptr %10, i64 9
  %12 = load ptr, ptr %11, align 8
  %13 = call noundef i64 %12(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef %9, i64 noundef %8)
  ret i64 %13
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?width@ios_base@std@@QEAA_J_J@Z"(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1) #4 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds %"class.std::ios_base", ptr %6, i32 0, i32 6
  %8 = load i64, ptr %7, align 8
  store i64 %8, ptr %5, align 8
  %9 = load i64, ptr %3, align 8
  %10 = getelementptr inbounds %"class.std::ios_base", ptr %6, i32 0, i32 6
  store i64 %9, ptr %10, align 8
  %11 = load i64, ptr %5, align 8
  ret i64 %11
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z"(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, i1 noundef zeroext %2) #3 comdat align 2 {
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = zext i1 %2 to i8
  store i8 %7, ptr %4, align 1
  store i32 %1, ptr %5, align 4
  store ptr %0, ptr %6, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load i8, ptr %4, align 1
  %10 = trunc i8 %9 to i1
  %11 = call noundef i32 @"?rdstate@ios_base@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(72) %8)
  %12 = load i32, ptr %5, align 4
  %13 = or i32 %11, %12
  call void @"?clear@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z"(ptr noundef nonnull align 8 dereferenceable(96) %8, i32 noundef %13, i1 noundef zeroext %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = call noundef zeroext i1 @"?uncaught_exception@std@@YA_NXZ"() #7
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i8
  store i8 %7, ptr %3, align 1
  %8 = load i8, ptr %3, align 1
  %9 = trunc i8 %8 to i1
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = getelementptr inbounds %"class.std::basic_ostream<char>::_Sentry_base", ptr %4, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8
  invoke void @"?_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %13 unwind label %15

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %13, %1
  call void @"??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  ret void

15:                                               ; preds = %10
  %16 = cleanuppad within none []
  call void @__std_terminate() #15 [ "funclet"(token %16) ]
  unreachable
}

declare dso_local i64 @strlen(ptr noundef) #2

declare dso_local void @__std_terminate()

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8
  store ptr %0, ptr %5, align 8
  %7 = load ptr, ptr %5, align 8
  store ptr %7, ptr %3, align 8
  %8 = getelementptr inbounds %"class.std::basic_ostream<char>::_Sentry_base", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %4, align 8
  store ptr %9, ptr %8, align 8
  %10 = getelementptr inbounds %"class.std::basic_ostream<char>::_Sentry_base", ptr %7, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds i8, ptr %11, i64 0
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds i32, ptr %13, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 0, %16
  %18 = getelementptr inbounds i8, ptr %11, i64 %17
  %19 = call noundef ptr @"?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(96) %18)
  store ptr %19, ptr %6, align 8
  %20 = load ptr, ptr %6, align 8
  %21 = icmp ne ptr %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load ptr, ptr %6, align 8
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef nonnull align 8 dereferenceable(104) %23)
  br label %27

27:                                               ; preds = %22, %2
  %28 = load ptr, ptr %3, align 8
  ret ptr %28
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"?good@ios_base@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(72) %0) #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef i32 @"?rdstate@ios_base@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(72) %3)
  %5 = icmp eq i32 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?tie@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_ostream@DU?$char_traits@D@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(96) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::basic_ios", ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @"?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) #3 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %"class.std::basic_ostream<char>::sentry", align 8
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds i8, ptr %5, i64 0
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds i32, ptr %7, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 0, %10
  %12 = getelementptr inbounds i8, ptr %5, i64 %11
  %13 = call noundef ptr @"?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(96) %12)
  store ptr %13, ptr %3, align 8
  %14 = load ptr, ptr %3, align 8
  %15 = icmp ne ptr %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %1
  %17 = call noundef ptr @"??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %18 = invoke noundef zeroext i1 @"??Bsentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %19 unwind label %35

19:                                               ; preds = %16
  br i1 %18, label %20, label %34

20:                                               ; preds = %19
  %21 = load ptr, ptr %3, align 8
  %22 = invoke noundef i32 @"?pubsync@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHXZ"(ptr noundef nonnull align 8 dereferenceable(104) %21)
          to label %23 unwind label %35

23:                                               ; preds = %20
  %24 = icmp eq i32 %22, -1
  br i1 %24, label %25, label %34

25:                                               ; preds = %23
  %26 = getelementptr inbounds i8, ptr %5, i64 0
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds i32, ptr %27, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 0, %30
  %32 = getelementptr inbounds i8, ptr %5, i64 %31
  invoke void @"?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z"(ptr noundef nonnull align 8 dereferenceable(96) %32, i32 noundef 4, i1 noundef zeroext false)
          to label %33 unwind label %35

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %23, %19
  call void @"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %4) #7
  br label %37

35:                                               ; preds = %25, %20, %16
  %36 = cleanuppad within none []
  call void @"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %4) #7 [ "funclet"(token %36) ]
  cleanupret from %36 unwind to caller

37:                                               ; preds = %34, %1
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %"class.std::basic_ostream<char>::_Sentry_base", ptr %4, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds i8, ptr %6, i64 0
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds i32, ptr %8, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 0, %11
  %13 = getelementptr inbounds i8, ptr %6, i64 %12
  %14 = invoke noundef ptr @"?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(96) %13)
          to label %15 unwind label %25

15:                                               ; preds = %1
  store ptr %14, ptr %3, align 8
  %16 = load ptr, ptr %3, align 8
  %17 = icmp ne ptr %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load ptr, ptr %3, align 8
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(104) %19)
          to label %23 unwind label %25

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %15
  ret void

25:                                               ; preds = %18, %1
  %26 = cleanuppad within none []
  call void @__std_terminate() #15 [ "funclet"(token %26) ]
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @"?rdstate@ios_base@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(72) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::ios_base", ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  ret i32 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i32 @"?pubsync@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHXZ"(ptr noundef nonnull align 8 dereferenceable(104) %0) #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds ptr, ptr %4, i64 13
  %6 = load ptr, ptr %5, align 8
  %7 = call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(104) %3)
  ret i32 %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?_Pnavail@?$basic_streambuf@DU?$char_traits@D@std@@@std@@IEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(104) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::basic_streambuf", ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.std::basic_streambuf", ptr %3, i32 0, i32 12
  %10 = load ptr, ptr %9, align 8
  %11 = load i32, ptr %10, align 4
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi i32 [ %11, %8 ], [ 0, %12 ]
  %15 = sext i32 %14 to i64
  ret i64 %15
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @"?to_int_type@?$_Narrow_char_traits@DH@std@@SAHAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?_Pninc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@IEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(104) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::basic_streambuf", ptr %3, i32 0, i32 12
  %5 = load ptr, ptr %4, align 8
  %6 = load i32, ptr %5, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, ptr %5, align 4
  %8 = getelementptr inbounds %"class.std::basic_streambuf", ptr %3, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %11, ptr %9, align 8
  ret ptr %10
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?clear@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z"(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, i1 noundef zeroext %2) #3 comdat align 2 {
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = zext i1 %2 to i8
  store i8 %7, ptr %4, align 1
  store i32 %1, ptr %5, align 4
  store ptr %0, ptr %6, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load i8, ptr %4, align 1
  %10 = trunc i8 %9 to i1
  %11 = load i32, ptr %5, align 4
  %12 = getelementptr inbounds %"class.std::basic_ios", ptr %8, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = icmp ne ptr %13, null
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 0, i32 4
  %17 = or i32 %11, %16
  call void @"?clear@ios_base@std@@QEAAXH_N@Z"(ptr noundef nonnull align 8 dereferenceable(72) %8, i32 noundef %17, i1 noundef zeroext %10)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?clear@ios_base@std@@QEAAXH_N@Z"(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i1 noundef zeroext %2) #3 comdat align 2 {
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca %"class.std::ios_base::failure", align 8
  %10 = alloca %"class.std::error_code", align 8
  %11 = zext i1 %2 to i8
  store i8 %11, ptr %4, align 1
  store i32 %1, ptr %5, align 4
  store ptr %0, ptr %6, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load i32, ptr %5, align 4
  %14 = and i32 %13, 23
  store i32 %14, ptr %5, align 4
  %15 = load i32, ptr %5, align 4
  %16 = getelementptr inbounds %"class.std::ios_base", ptr %12, i32 0, i32 2
  store i32 %15, ptr %16, align 8
  %17 = load i32, ptr %5, align 4
  %18 = getelementptr inbounds %"class.std::ios_base", ptr %12, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %17, %19
  store i32 %20, ptr %7, align 4
  %21 = load i32, ptr %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %3
  %24 = load i8, ptr %4, align 1
  %25 = trunc i8 %24 to i1
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  call void @_CxxThrowException(ptr null, ptr null) #16
  unreachable

27:                                               ; preds = %23
  %28 = load i32, ptr %7, align 4
  %29 = and i32 %28, 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store ptr @"??_C@_0BF@PHHKMMFD@ios_base?3?3badbit?5set?$AA@", ptr %8, align 8
  br label %39

32:                                               ; preds = %27
  %33 = load i32, ptr %7, align 4
  %34 = and i32 %33, 2
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store ptr @"??_C@_0BG@FMKFHCIL@ios_base?3?3failbit?5set?$AA@", ptr %8, align 8
  br label %38

37:                                               ; preds = %32
  store ptr @"??_C@_0BF@OOHOMBOF@ios_base?3?3eofbit?5set?$AA@", ptr %8, align 8
  br label %38

38:                                               ; preds = %37, %36
  br label %39

39:                                               ; preds = %38, %31
  call void @"?make_error_code@std@@YA?AVerror_code@1@W4io_errc@1@@Z"(ptr sret(%"class.std::error_code") align 8 %10, i32 noundef 1) #7
  %40 = load ptr, ptr %8, align 8
  %41 = call noundef ptr @"??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z"(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef %40, ptr noundef nonnull align 8 dereferenceable(16) %10)
  call void @_CxxThrowException(ptr %9, ptr @"_TI5?AVfailure@ios_base@std@@") #16
  unreachable

42:                                               ; preds = %3
  ret void
}

declare dso_local void @_CxxThrowException(ptr, ptr)

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?make_error_code@std@@YA?AVerror_code@1@W4io_errc@1@@Z"(ptr noalias sret(%"class.std::error_code") align 8 %0, i32 noundef %1) #4 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = call noundef nonnull align 8 dereferenceable(16) ptr @"?iostream_category@std@@YAAEBVerror_category@1@XZ"() #7
  %6 = load i32, ptr %4, align 4
  %7 = call noundef ptr @"??0error_code@std@@QEAA@HAEBVerror_category@1@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %5) #7
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z"(ptr noundef nonnull returned align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"class.std::error_code", align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %10, i64 16, i1 false)
  %11 = call noundef ptr @"??0system_error@std@@QEAA@Verror_code@1@PEBD@Z"(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %7, ptr noundef %9)
  store ptr @"??_7failure@ios_base@std@@6B@", ptr %8, align 8
  ret ptr %8
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0failure@ios_base@std@@QEAA@AEBV012@@Z"(ptr noundef nonnull returned align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #6 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"??0system_error@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %6) #7
  store ptr @"??_7failure@ios_base@std@@6B@", ptr %5, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0system_error@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #6 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"??0_System_error@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %6) #7
  store ptr @"??_7system_error@std@@6B@", ptr %5, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0_System_error@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #6 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"??0runtime_error@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #7
  store ptr @"??_7_System_error@std@@6B@", ptr %5, align 8
  %8 = getelementptr inbounds %"class.std::_System_error", ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %"class.std::_System_error", ptr %9, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %10, i64 16, i1 false)
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0runtime_error@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"??0exception@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #7
  store ptr @"??_7runtime_error@std@@6B@", ptr %5, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0exception@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  store ptr @"??_7exception@std@@6B@", ptr %5, align 8
  %6 = getelementptr inbounds %"class.std::exception", ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds %"class.std::exception", ptr %5, i32 0, i32 1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %"class.std::exception", ptr %8, i32 0, i32 1
  invoke void @__std_exception_copy(ptr noundef %9, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %2
  ret ptr %5

11:                                               ; preds = %2
  %12 = cleanuppad within none []
  call void @__std_terminate() #15 [ "funclet"(token %12) ]
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1failure@ios_base@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1system_error@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %3) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @"?iostream_category@std@@YAAEBVerror_category@1@XZ"() #4 comdat {
  %1 = call noundef nonnull align 8 dereferenceable(16) ptr @"??$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@0@XZ"() #7
  ret ptr %1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0error_code@std@@QEAA@HAEBVerror_category@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #6 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %"class.std::error_code", ptr %7, i32 0, i32 0
  %9 = load i32, ptr %5, align 4
  store i32 %9, ptr %8, align 8
  %10 = getelementptr inbounds %"class.std::error_code", ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %4, align 8
  store ptr %11, ptr %10, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @"??$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@0@XZ"() #4 comdat {
  %1 = load atomic i32, ptr @"?$TSS0@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@0@XZ@4HA" unordered, align 4
  %2 = load i32, ptr @_Init_thread_epoch, align 4
  %3 = icmp sgt i32 %1, %2
  br i1 %3, label %4, label %9, !prof !12

4:                                                ; preds = %0
  call void @_Init_thread_header(ptr @"?$TSS0@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@0@XZ@4HA") #7
  %5 = load atomic i32, ptr @"?$TSS0@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@0@XZ@4HA" unordered, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = call i32 @atexit(ptr @"??__F_Static@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@YAXXZ") #7
  call void @_Init_thread_footer(ptr @"?$TSS0@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@0@XZ@4HA") #7
  br label %9

9:                                                ; preds = %7, %4, %0
  ret ptr @"?_Static@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4V21@A"
}

; Function Attrs: nounwind
declare dso_local void @_Init_thread_header(ptr) #7

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1_Iostream_error_category2@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1error_category@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %3) #7
  ret void
}

; Function Attrs: noinline uwtable
define internal void @"??__F_Static@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@YAXXZ"() #8 {
  call void @"??1_Iostream_error_category2@std@@UEAA@XZ"(ptr @"?_Static@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4V21@A")
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @atexit(ptr) #7

; Function Attrs: nounwind
declare dso_local void @_Init_thread_footer(ptr) #7

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??_G_Iostream_error_category2@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1_Iostream_error_category2@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %6) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX@Z"(ptr noundef %6) #17
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?name@_Iostream_error_category2@std@@UEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr @"??_C@_08LLGCOLLL@iostream?$AA@"
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@H@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias sret(%"class.std::basic_string") align 8 %1, i32 noundef %2) unnamed_addr #3 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  store ptr %1, ptr %4, align 8
  store i32 %2, ptr %5, align 4
  store ptr %0, ptr %6, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load i32, ptr %5, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  store i64 21, ptr %7, align 8
  %12 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef @"?_Iostream_error@?4??message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@3@H@Z@4QBDB", i64 noundef 21)
  br label %17

13:                                               ; preds = %3
  %14 = load i32, ptr %5, align 4
  %15 = call noundef ptr @"?_Syserror_map@std@@YAPEBDH@Z"(i32 noundef %14)
  %16 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %15)
  br label %17

17:                                               ; preds = %13, %11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?default_error_condition@error_category@std@@UEBA?AVerror_condition@2@H@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias sret(%"class.std::error_condition") align 8 %1, i32 noundef %2) unnamed_addr #4 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8
  store i32 %2, ptr %5, align 4
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load i32, ptr %5, align 4
  %9 = call noundef ptr @"??0error_condition@std@@QEAA@HAEBVerror_category@1@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %8, ptr noundef nonnull align 8 dereferenceable(16) %7) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"?equivalent@error_category@std@@UEBA_NAEBVerror_code@2@H@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #4 comdat align 2 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i32 %2, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = call noundef nonnull align 8 dereferenceable(16) ptr @"?category@error_code@std@@QEBAAEBVerror_category@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %8) #7
  %10 = call noundef zeroext i1 @"??8error_category@std@@QEBA_NAEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %9) #7
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load ptr, ptr %5, align 8
  %13 = call noundef i32 @"?value@error_code@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(16) %12) #7
  %14 = load i32, ptr %4, align 4
  %15 = icmp eq i32 %13, %14
  br label %16

16:                                               ; preds = %11, %3
  %17 = phi i1 [ false, %3 ], [ %15, %11 ]
  ret i1 %17
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"?equivalent@error_category@std@@UEBA_NHAEBVerror_condition@2@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca %"class.std::error_condition", align 8
  store ptr %2, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store ptr %0, ptr %6, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = load i32, ptr %5, align 4
  %11 = load ptr, ptr %8, align 8
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  call void %13(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr sret(%"class.std::error_condition") align 8 %7, i32 noundef %10) #7
  %14 = call noundef zeroext i1 @"??8std@@YA_NAEBVerror_condition@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %9) #7
  ret i1 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1error_category@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @"??3@YAXPEAX@Z"(ptr noundef) #9

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD_K@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #5 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  %8 = alloca ptr, align 8
  %9 = alloca %"struct.std::_Fake_allocator", align 1
  %10 = alloca %"struct.std::_Fake_proxy_ptr_impl", align 1
  store i64 %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr inbounds %"class.std::basic_string", ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds %"struct.std::_Zero_then_variadic_args_t", ptr %7, i32 0, i32 0
  %14 = load i8, ptr %13, align 1
  %15 = call noundef ptr @"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 %14) #7
  store ptr %9, ptr %8, align 8
  %16 = getelementptr inbounds %"class.std::basic_string", ptr %11, i32 0, i32 0
  %17 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %16, i32 0, i32 0
  %18 = load ptr, ptr %8, align 8
  %19 = call noundef ptr @"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull align 1 dereferenceable(1) %17) #7
  call void @"?_Tidy_init@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %11) #7
  %20 = load i64, ptr %4, align 8
  %21 = load ptr, ptr %5, align 8
  %22 = invoke noundef nonnull align 8 dereferenceable(32) ptr @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %21, i64 noundef %20)
          to label %23 unwind label %24

23:                                               ; preds = %3
  call void @"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %10) #7
  ret ptr %11

24:                                               ; preds = %3
  %25 = cleanuppad within none []
  call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %12) #7 [ "funclet"(token %25) ]
  cleanupret from %25 unwind to caller
}

declare dso_local noundef ptr @"?_Syserror_map@std@@YAPEBDH@Z"(i32 noundef) #2

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.std::_Fake_allocator", align 1
  %8 = alloca %"struct.std::_Fake_proxy_ptr_impl", align 1
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %"class.std::basic_string", ptr %9, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Zero_then_variadic_args_t", ptr %5, i32 0, i32 0
  %12 = load i8, ptr %11, align 1
  %13 = call noundef ptr @"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 %12) #7
  store ptr %7, ptr %6, align 8
  %14 = getelementptr inbounds %"class.std::basic_string", ptr %9, i32 0, i32 0
  %15 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %14, i32 0, i32 0
  %16 = load ptr, ptr %6, align 8
  %17 = call noundef ptr @"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 1 dereferenceable(1) %15) #7
  call void @"?_Tidy_init@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %9) #7
  %18 = load ptr, ptr %3, align 8
  %19 = invoke noundef nonnull align 8 dereferenceable(32) ptr @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %18)
          to label %20 unwind label %21

20:                                               ; preds = %2
  call void @"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %8) #7
  ret ptr %9

21:                                               ; preds = %2
  %22 = cleanuppad within none []
  call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %10) #7 [ "funclet"(token %22) ]
  cleanupret from %22 unwind to caller
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, i8 %1) unnamed_addr #6 comdat align 2 {
  %3 = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %"struct.std::_Zero_then_variadic_args_t", ptr %3, i32 0, i32 0
  store i8 %1, ptr %5, align 1
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call noundef ptr @"??0?$allocator@D@std@@QEAA@XZ"(ptr noundef nonnull align 1 dereferenceable(1) %6) #7
  %8 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %6, i32 0, i32 0
  %9 = call noundef ptr @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %8) #7
  ret ptr %6
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z"(ptr noundef nonnull returned align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #6 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Tidy_init@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %"class.std::basic_string", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds %"class.std::_String_val", ptr %6, i32 0, i32 1
  store i64 0, ptr %7, align 8
  %8 = getelementptr inbounds %"class.std::basic_string", ptr %4, i32 0, i32 0
  %9 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %8, i32 0, i32 0
  %10 = getelementptr inbounds %"class.std::_String_val", ptr %9, i32 0, i32 2
  store i64 15, ptr %10, align 8
  store i8 0, ptr %3, align 1
  %11 = getelementptr inbounds %"class.std::basic_string", ptr %4, i32 0, i32 0
  %12 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds %"class.std::_String_val", ptr %12, i32 0, i32 0
  %14 = getelementptr inbounds [16 x i8], ptr %13, i64 0, i64 0
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 1 dereferenceable(1) %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2) #3 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  %10 = alloca %class.anon, align 1
  store i64 %2, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %0, ptr %7, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load i64, ptr %5, align 8
  %13 = getelementptr inbounds %"class.std::basic_string", ptr %11, i32 0, i32 0
  %14 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %13, i32 0, i32 0
  %15 = getelementptr inbounds %"class.std::_String_val", ptr %14, i32 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = icmp ule i64 %12, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %3
  %19 = getelementptr inbounds %"class.std::basic_string", ptr %11, i32 0, i32 0
  %20 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %19, i32 0, i32 0
  %21 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(32) %20) #7
  store ptr %21, ptr %8, align 8
  %22 = load i64, ptr %5, align 8
  %23 = getelementptr inbounds %"class.std::basic_string", ptr %11, i32 0, i32 0
  %24 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %23, i32 0, i32 0
  %25 = getelementptr inbounds %"class.std::_String_val", ptr %24, i32 0, i32 1
  store i64 %22, ptr %25, align 8
  %26 = load i64, ptr %5, align 8
  %27 = load ptr, ptr %6, align 8
  %28 = load ptr, ptr %8, align 8
  %29 = call noundef ptr @"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %28, ptr noundef %27, i64 noundef %26) #7
  store i8 0, ptr %9, align 1
  %30 = load ptr, ptr %8, align 8
  %31 = load i64, ptr %5, align 8
  %32 = getelementptr inbounds i8, ptr %30, i64 %31
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %32, ptr noundef nonnull align 1 dereferenceable(1) %9) #7
  store ptr %11, ptr %4, align 8
  br label %39

33:                                               ; preds = %3
  %34 = load ptr, ptr %6, align 8
  %35 = load i64, ptr %5, align 8
  %36 = getelementptr inbounds %class.anon, ptr %10, i32 0, i32 0
  %37 = load i8, ptr %36, align 1
  %38 = call noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??assign@01@QEAAAEAV01@QEBD0@Z@PEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %35, i8 %37, ptr noundef %34)
  store ptr %38, ptr %4, align 8
  br label %39

39:                                               ; preds = %33, %18
  %40 = load ptr, ptr %4, align 8
  ret ptr %40
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %3, i32 0, i32 0
  call void @"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %4) #7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$allocator@D@std@@QEAA@XZ"(ptr noundef nonnull returned align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::_String_val", ptr %3, i32 0, i32 0
  %5 = call noundef ptr @"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %4) #7
  %6 = getelementptr inbounds %"class.std::_String_val", ptr %3, i32 0, i32 1
  store i64 0, ptr %6, align 8
  %7 = getelementptr inbounds %"class.std::_String_val", ptr %3, i32 0, i32 2
  store i64 0, ptr %7, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #4 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i8, ptr %5, align 1
  %7 = load ptr, ptr %4, align 8
  store i8 %6, ptr %7, align 1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %"class.std::_String_val", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds [16 x i8], ptr %5, i64 0, i64 0
  store ptr %6, ptr %3, align 8
  %7 = call noundef zeroext i1 @"?_Large_string_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %4) #7
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.std::_String_val", ptr %4, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %10) #7
  store ptr %11, ptr %3, align 8
  br label %12

12:                                               ; preds = %8, %1
  %13 = load ptr, ptr %3, align 8
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) #4 comdat align 2 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i64 %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %4, align 8
  %10 = mul i64 %9, 1
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %7, ptr align 1 %8, i64 %10, i1 false)
  %11 = load ptr, ptr %6, align 8
  ret ptr %11
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??assign@01@QEAAAEAV01@QEBD0@Z@PEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 %2, ptr noundef %3) #3 comdat align 2 {
  %5 = alloca %class.anon, align 1
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = getelementptr inbounds %class.anon, ptr %5, i32 0, i32 0
  store i8 %2, ptr %13, align 1
  store ptr %3, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %14 = load ptr, ptr %8, align 8
  %15 = load i64, ptr %7, align 8
  %16 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %14) #7
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  call void @"?_Xlen_string@std@@YAXXZ"() #16
  unreachable

19:                                               ; preds = %4
  %20 = getelementptr inbounds %"class.std::basic_string", ptr %14, i32 0, i32 0
  %21 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %20, i32 0, i32 0
  %22 = getelementptr inbounds %"class.std::_String_val", ptr %21, i32 0, i32 2
  %23 = load i64, ptr %22, align 8
  store i64 %23, ptr %9, align 8
  %24 = load i64, ptr %7, align 8
  %25 = call noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %24) #7
  store i64 %25, ptr %10, align 8
  %26 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %14) #7
  store ptr %26, ptr %11, align 8
  %27 = load ptr, ptr %11, align 8
  %28 = load i64, ptr %10, align 8
  %29 = add i64 %28, 1
  %30 = call noundef ptr @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %27, i64 noundef %29)
  store ptr %30, ptr %12, align 8
  %31 = getelementptr inbounds %"class.std::basic_string", ptr %14, i32 0, i32 0
  %32 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %31, i32 0, i32 0
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %32) #7
  %33 = load i64, ptr %7, align 8
  %34 = getelementptr inbounds %"class.std::basic_string", ptr %14, i32 0, i32 0
  %35 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %34, i32 0, i32 0
  %36 = getelementptr inbounds %"class.std::_String_val", ptr %35, i32 0, i32 1
  store i64 %33, ptr %36, align 8
  %37 = load i64, ptr %10, align 8
  %38 = getelementptr inbounds %"class.std::basic_string", ptr %14, i32 0, i32 0
  %39 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %38, i32 0, i32 0
  %40 = getelementptr inbounds %"class.std::_String_val", ptr %39, i32 0, i32 2
  store i64 %37, ptr %40, align 8
  %41 = load ptr, ptr %6, align 8
  %42 = load i64, ptr %7, align 8
  %43 = load ptr, ptr %12, align 8
  %44 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %43) #7
  call void @"??R<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD10@Z"(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %44, i64 noundef %42, ptr noundef %41)
  %45 = load i64, ptr %9, align 8
  %46 = icmp ule i64 16, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %19
  %48 = load ptr, ptr %11, align 8
  %49 = load i64, ptr %9, align 8
  %50 = add i64 %49, 1
  %51 = getelementptr inbounds %"class.std::basic_string", ptr %14, i32 0, i32 0
  %52 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %51, i32 0, i32 0
  %53 = getelementptr inbounds %"class.std::_String_val", ptr %52, i32 0, i32 0
  %54 = load ptr, ptr %53, align 8
  call void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %48, ptr noundef %54, i64 noundef %50)
  %55 = load ptr, ptr %12, align 8
  %56 = getelementptr inbounds %"class.std::basic_string", ptr %14, i32 0, i32 0
  %57 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %56, i32 0, i32 0
  %58 = getelementptr inbounds %"class.std::_String_val", ptr %57, i32 0, i32 0
  store ptr %55, ptr %58, align 8
  br label %63

59:                                               ; preds = %19
  %60 = getelementptr inbounds %"class.std::basic_string", ptr %14, i32 0, i32 0
  %61 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %60, i32 0, i32 0
  %62 = getelementptr inbounds %"class.std::_String_val", ptr %61, i32 0, i32 0
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef nonnull align 8 dereferenceable(8) %12) #7
  br label %63

63:                                               ; preds = %59, %47
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"?_Large_string_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::_String_val", ptr %3, i32 0, i32 2
  %5 = load i64, ptr %4, align 8
  %6 = icmp ule i64 16, %5
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %0) #4 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  %8 = load ptr, ptr %2, align 8
  %9 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %8) #7
  %10 = call noundef i64 @"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %9) #7
  store i64 %10, ptr %3, align 8
  store i64 16, ptr %5, align 8
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @"??$max@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  %12 = load i64, ptr %11, align 8
  store i64 %12, ptr %4, align 8
  %13 = load i64, ptr %4, align 8
  %14 = sub i64 %13, 1
  store i64 %14, ptr %6, align 8
  %15 = call noundef i64 @"?max@?$numeric_limits@_J@std@@SA_JXZ"() #7
  store i64 %15, ptr %7, align 8
  %16 = call noundef nonnull align 8 dereferenceable(8) ptr @"??$min@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  %17 = load i64, ptr %16, align 8
  ret i64 %17
}

; Function Attrs: mustprogress noinline noreturn optnone uwtable
define linkonce_odr dso_local void @"?_Xlen_string@std@@YAXXZ"() #10 comdat {
  call void @"?_Xlength_error@std@@YAXPEBD@Z"(ptr noundef @"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@") #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #4 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %5) #7
  %7 = getelementptr inbounds %"class.std::basic_string", ptr %5, i32 0, i32 0
  %8 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %7, i32 0, i32 0
  %9 = getelementptr inbounds %"class.std::_String_val", ptr %8, i32 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = load i64, ptr %3, align 8
  %12 = call noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z"(i64 noundef %11, i64 noundef %10, i64 noundef %6) #7
  ret i64 %12
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::basic_string", ptr %3, i32 0, i32 0
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %4) #7
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #3 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load i64, ptr %3, align 8
  %7 = call noundef i64 @"??$_Get_size_of_n@$00@std@@YA_K_K@Z"(i64 noundef %6)
  %8 = call noundef ptr @"??$_Allocate@$0BA@U_Default_allocate_traits@std@@$0A@@std@@YAPEAX_K@Z"(i64 noundef %7)
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??R<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD10@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #4 comdat align 2 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  store ptr %3, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %10 = load ptr, ptr %8, align 8
  %11 = load i64, ptr %6, align 8
  %12 = load ptr, ptr %5, align 8
  %13 = load ptr, ptr %7, align 8
  %14 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %13, ptr noundef %12, i64 noundef %11) #7
  store i8 0, ptr %9, align 1
  %15 = load ptr, ptr %7, align 8
  %16 = load i64, ptr %6, align 8
  %17 = getelementptr inbounds i8, ptr %15, i64 %16
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef nonnull align 1 dereferenceable(1) %9) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #4 comdat align 2 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i64 %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load i64, ptr %4, align 8
  %9 = mul i64 1, %8
  %10 = load ptr, ptr %5, align 8
  call void @"??$_Deallocate@$0BA@$0A@@std@@YAXPEAX_K@Z"(ptr noundef %10, i64 noundef %9) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #4 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %6, align 8
  store ptr %7, ptr %5, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  ret i64 -1
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::basic_string", ptr %3, i32 0, i32 0
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %4) #7
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @"??$max@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #4 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load i64, ptr %5, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = load i64, ptr %7, align 8
  %9 = icmp ult i64 %6, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8
  br label %14

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %11, %10 ], [ %13, %12 ]
  ret ptr %15
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @"??$min@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #4 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %5, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load i64, ptr %7, align 8
  %9 = icmp ult i64 %6, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8
  br label %14

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %11, %10 ], [ %13, %12 ]
  ret ptr %15
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?max@?$numeric_limits@_J@std@@SA_JXZ"() #4 comdat align 2 {
  ret i64 9223372036854775807
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: noreturn
declare dso_local void @"?_Xlength_error@std@@YAXPEBD@Z"(ptr noundef) #11

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z"(i64 noundef %0, i64 noundef %1, i64 noundef %2) #4 comdat align 2 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %2, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i64 %0, ptr %7, align 8
  %10 = load i64, ptr %7, align 8
  %11 = or i64 %10, 15
  store i64 %11, ptr %8, align 8
  %12 = load i64, ptr %8, align 8
  %13 = load i64, ptr %5, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, ptr %5, align 8
  store i64 %16, ptr %4, align 8
  br label %33

17:                                               ; preds = %3
  %18 = load i64, ptr %6, align 8
  %19 = load i64, ptr %5, align 8
  %20 = load i64, ptr %6, align 8
  %21 = udiv i64 %20, 2
  %22 = sub i64 %19, %21
  %23 = icmp ugt i64 %18, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i64, ptr %5, align 8
  store i64 %25, ptr %4, align 8
  br label %33

26:                                               ; preds = %17
  %27 = load i64, ptr %6, align 8
  %28 = load i64, ptr %6, align 8
  %29 = udiv i64 %28, 2
  %30 = add i64 %27, %29
  store i64 %30, ptr %9, align 8
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @"??$max@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #7
  %32 = load i64, ptr %31, align 8
  store i64 %32, ptr %4, align 8
  br label %33

33:                                               ; preds = %26, %24, %15
  %34 = load i64, ptr %4, align 8
  ret i64 %34
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Allocate@$0BA@U_Default_allocate_traits@std@@$0A@@std@@YAPEAX_K@Z"(i64 noundef %0) #3 comdat {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  %4 = load i64, ptr %3, align 8
  %5 = icmp uge i64 %4, 4096
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i64, ptr %3, align 8
  %8 = call noundef ptr @"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"(i64 noundef %7)
  store ptr %8, ptr %2, align 8
  br label %16

9:                                                ; preds = %1
  %10 = load i64, ptr %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i64, ptr %3, align 8
  %14 = call noundef ptr @"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z"(i64 noundef %13)
  store ptr %14, ptr %2, align 8
  br label %16

15:                                               ; preds = %9
  store ptr null, ptr %2, align 8
  br label %16

16:                                               ; preds = %15, %12, %6
  %17 = load ptr, ptr %2, align 8
  ret ptr %17
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"??$_Get_size_of_n@$00@std@@YA_K_K@Z"(i64 noundef %0) #4 comdat {
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  store i64 %0, ptr %2, align 8
  store i8 0, ptr %3, align 1
  %4 = load i64, ptr %2, align 8
  %5 = mul i64 %4, 1
  ret i64 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"(i64 noundef %0) #3 comdat {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store i64 %0, ptr %2, align 8
  %6 = load i64, ptr %2, align 8
  %7 = add i64 39, %6
  store i64 %7, ptr %3, align 8
  %8 = load i64, ptr %3, align 8
  %9 = load i64, ptr %2, align 8
  %10 = icmp ule i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  call void @"?_Throw_bad_array_new_length@std@@YAXXZ"() #16
  unreachable

12:                                               ; preds = %1
  %13 = load i64, ptr %3, align 8
  %14 = call noundef ptr @"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z"(i64 noundef %13)
  %15 = ptrtoint ptr %14 to i64
  store i64 %15, ptr %4, align 8
  br label %16

16:                                               ; preds = %12
  %17 = load i64, ptr %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %23

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %20
  call void @_invalid_parameter_noinfo_noreturn() #16
  unreachable

22:                                               ; No predecessors!
  br label %23

23:                                               ; preds = %22, %19
  br label %24

24:                                               ; preds = %23
  %25 = load i64, ptr %4, align 8
  %26 = add i64 %25, 39
  %27 = and i64 %26, -32
  %28 = inttoptr i64 %27 to ptr
  store ptr %28, ptr %5, align 8
  %29 = load i64, ptr %4, align 8
  %30 = load ptr, ptr %5, align 8
  %31 = getelementptr inbounds i64, ptr %30, i64 -1
  store i64 %29, ptr %31, align 8
  %32 = load ptr, ptr %5, align 8
  ret ptr %32
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z"(i64 noundef %0) #3 comdat align 2 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = call noalias noundef nonnull ptr @"??2@YAPEAX_K@Z"(i64 noundef %3) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline noreturn optnone uwtable
define linkonce_odr dso_local void @"?_Throw_bad_array_new_length@std@@YAXXZ"() #10 comdat {
  %1 = alloca %"class.std::bad_array_new_length", align 8
  %2 = call noundef ptr @"??0bad_array_new_length@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %1) #7
  call void @_CxxThrowException(ptr %1, ptr @"_TI3?AVbad_array_new_length@std@@") #16
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @_invalid_parameter_noinfo_noreturn() #11

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_array_new_length@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @"??0bad_alloc@std@@AEAA@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef @"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@") #7
  store ptr @"??_7bad_array_new_length@std@@6B@", ptr %3, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_array_new_length@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"??0bad_alloc@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #7
  store ptr @"??_7bad_array_new_length@std@@6B@", ptr %5, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_alloc@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"??0exception@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #7
  store ptr @"??_7bad_alloc@std@@6B@", ptr %5, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1bad_array_new_length@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1bad_alloc@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_alloc@std@@AEAA@QEBD@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"??0exception@std@@QEAA@QEBDH@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %6, i32 noundef 1) #7
  store ptr @"??_7bad_alloc@std@@6B@", ptr %5, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??_Gbad_array_new_length@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1bad_array_new_length@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %6) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX@Z"(ptr noundef %6) #17
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?what@exception@std@@UEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::exception", ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.__std_exception_data, ptr %4, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.std::exception", ptr %3, i32 0, i32 1
  %10 = getelementptr inbounds %struct.__std_exception_data, ptr %9, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi ptr [ %11, %8 ], [ @"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@", %12 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0exception@std@@QEAA@QEBDH@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #6 comdat align 2 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i32 %2, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  store ptr @"??_7exception@std@@6B@", ptr %7, align 8
  %8 = getelementptr inbounds %"class.std::exception", ptr %7, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 16, i1 false)
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds %"class.std::exception", ptr %7, i32 0, i32 1
  %11 = getelementptr inbounds %struct.__std_exception_data, ptr %10, i32 0, i32 0
  store ptr %9, ptr %11, align 8
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??_Gbad_alloc@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1bad_alloc@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %6) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX@Z"(ptr noundef %6) #17
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??_Gexception@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1exception@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %6) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX@Z"(ptr noundef %6) #17
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1exception@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  store ptr @"??_7exception@std@@6B@", ptr %3, align 8
  %4 = getelementptr inbounds %"class.std::exception", ptr %3, i32 0, i32 1
  invoke void @__std_exception_destroy(ptr noundef %4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret void

6:                                                ; preds = %1
  %7 = cleanuppad within none []
  call void @__std_terminate() #15 [ "funclet"(token %7) ]
  unreachable
}

declare dso_local void @__std_exception_destroy(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1bad_alloc@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1exception@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull ptr @"??2@YAPEAX_K@Z"(i64 noundef) #13

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) #4 comdat align 2 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i64 %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %4, align 8
  %10 = mul i64 %9, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %8, i64 %10, i1 false)
  %11 = load ptr, ptr %6, align 8
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Deallocate@$0BA@$0A@@std@@YAXPEAX_K@Z"(ptr noundef %0, i64 noundef %1) #4 comdat personality ptr @__CxxFrameHandler3 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load i64, ptr %3, align 8
  %6 = icmp uge i64 %5, 4096
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  invoke void @"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %8 unwind label %12

8:                                                ; preds = %7
  br label %9

9:                                                ; preds = %8, %2
  %10 = load i64, ptr %3, align 8
  %11 = load ptr, ptr %4, align 8
  call void @"??3@YAXPEAX_K@Z"(ptr noundef %11, i64 noundef %10) #7
  ret void

12:                                               ; preds = %7
  %13 = cleanuppad within none []
  call void @__std_terminate() #15 [ "funclet"(token %13) ]
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #3 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = load i64, ptr %9, align 8
  %11 = add i64 %10, 39
  store i64 %11, ptr %9, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %5, align 8
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds i64, ptr %14, i64 -1
  %16 = load i64, ptr %15, align 8
  store i64 %16, ptr %6, align 8
  store i64 8, ptr %7, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = load ptr, ptr %17, align 8
  %19 = ptrtoint ptr %18 to i64
  %20 = load i64, ptr %6, align 8
  %21 = sub i64 %19, %20
  store i64 %21, ptr %8, align 8
  br label %22

22:                                               ; preds = %2
  %23 = load i64, ptr %8, align 8
  %24 = icmp uge i64 %23, 8
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i64, ptr %8, align 8
  %27 = icmp ule i64 %26, 39
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %32

29:                                               ; preds = %25, %22
  br label %30

30:                                               ; preds = %29
  call void @_invalid_parameter_noinfo_noreturn() #16
  unreachable

31:                                               ; No predecessors!
  br label %32

32:                                               ; preds = %31, %28
  br label %33

33:                                               ; preds = %32
  %34 = load i64, ptr %6, align 8
  %35 = inttoptr i64 %34 to ptr
  %36 = load ptr, ptr %4, align 8
  store ptr %35, ptr %36, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local void @"??3@YAXPEAX_K@Z"(ptr noundef, i64 noundef) #14

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::_String_val", ptr %3, i32 0, i32 0
  call void @"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %4) #7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(ptr noundef %6) #7
  %8 = call noundef i64 @"??$_Convert_size@_K@std@@YA_K_K@Z"(i64 noundef %7) #7
  %9 = load ptr, ptr %3, align 8
  %10 = call noundef nonnull align 8 dereferenceable(32) ptr @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %9, i64 noundef %8)
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"??$_Convert_size@_K@std@@YA_K_K@Z"(i64 noundef %0) #4 comdat {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  ret i64 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0error_condition@std@@QEAA@HAEBVerror_category@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #6 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %"class.std::error_condition", ptr %7, i32 0, i32 0
  %9 = load i32, ptr %5, align 4
  store i32 %9, ptr %8, align 8
  %10 = getelementptr inbounds %"class.std::error_condition", ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %4, align 8
  store ptr %11, ptr %10, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"??8error_category@std@@QEBA_NAEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #4 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"class.std::error_category", ptr %5, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %"class.std::error_category", ptr %8, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = icmp eq i64 %7, %10
  ret i1 %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @"?category@error_code@std@@QEBAAEBVerror_category@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::error_code", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @"?value@error_code@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::error_code", ptr %3, i32 0, i32 0
  %5 = load i32, ptr %4, align 8
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"??8std@@YA_NAEBVerror_condition@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #4 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = call noundef nonnull align 8 dereferenceable(16) ptr @"?category@error_condition@std@@QEBAAEBVerror_category@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %5) #7
  %7 = load ptr, ptr %3, align 8
  %8 = call noundef nonnull align 8 dereferenceable(16) ptr @"?category@error_condition@std@@QEBAAEBVerror_category@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %7) #7
  %9 = call noundef zeroext i1 @"??8error_category@std@@QEBA_NAEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %8) #7
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8
  %12 = call noundef i32 @"?value@error_condition@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(16) %11) #7
  %13 = load ptr, ptr %3, align 8
  %14 = call noundef i32 @"?value@error_condition@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(16) %13) #7
  %15 = icmp eq i32 %12, %14
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi i1 [ false, %2 ], [ %15, %10 ]
  ret i1 %17
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @"?category@error_condition@std@@QEBAAEBVerror_category@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::error_condition", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @"?value@error_condition@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::error_condition", ptr %3, i32 0, i32 0
  %5 = load i32, ptr %4, align 8
  ret i32 %5
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0system_error@std@@QEAA@Verror_code@1@PEBD@Z"(ptr noundef nonnull returned align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %"class.std::basic_string", align 8
  %7 = alloca %"class.std::error_code", align 8
  store ptr %2, ptr %4, align 8
  store ptr %0, ptr %5, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %9)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %1, i64 16, i1 false)
  %11 = invoke noundef ptr @"??0_System_error@std@@IEAA@Verror_code@1@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z"(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %12 unwind label %13

12:                                               ; preds = %3
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %6) #7
  store ptr @"??_7system_error@std@@6B@", ptr %8, align 8
  ret ptr %8

13:                                               ; preds = %3
  %14 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %6) #7 [ "funclet"(token %14) ]
  cleanupret from %14 unwind to caller
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??_Gfailure@ios_base@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1failure@ios_base@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %6) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX@Z"(ptr noundef %6) #17
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0_System_error@std@@IEAA@Verror_code@1@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #5 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %"class.std::basic_string", align 8
  %7 = alloca %"class.std::basic_string", align 8
  %8 = alloca %"class.std::error_code", align 8
  store ptr %2, ptr %4, align 8
  store ptr %0, ptr %5, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %10)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %1, i64 16, i1 false)
  call void @"?_Makestr@_System_error@std@@CA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@Verror_code@2@V32@@Z"(ptr sret(%"class.std::basic_string") align 8 %6, ptr noundef %8, ptr noundef %7)
  %12 = invoke noundef ptr @"??0runtime_error@std@@QEAA@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %13 unwind label %15

13:                                               ; preds = %3
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %6) #7
  store ptr @"??_7_System_error@std@@6B@", ptr %9, align 8
  %14 = getelementptr inbounds %"class.std::_System_error", ptr %9, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 8 %1, i64 16, i1 false)
  ret ptr %9

15:                                               ; preds = %3
  %16 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %6) #7 [ "funclet"(token %16) ]
  cleanupret from %16 unwind to caller
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %3) #7
  %4 = getelementptr inbounds %"class.std::basic_string", ptr %3, i32 0, i32 0
  call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %4) #7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??_Gsystem_error@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1system_error@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %6) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX@Z"(ptr noundef %6) #17
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?_Makestr@_System_error@std@@CA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@Verror_code@2@V32@@Z"(ptr noalias sret(%"class.std::basic_string") align 8 %0, ptr noundef %1, ptr noundef %2) #3 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::basic_string", align 8
  store ptr %0, ptr %4, align 8
  %6 = call noundef zeroext i1 @"?empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %2) #7
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = invoke noundef nonnull align 8 dereferenceable(32) ptr @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef @"??_C@_02LMMGGCAJ@?3?5?$AA@")
          to label %9 unwind label %17

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9, %3
  invoke void @"?message@error_code@std@@QEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr sret(%"class.std::basic_string") align 8 %5)
          to label %11 unwind label %17

11:                                               ; preds = %10
  %12 = invoke noundef nonnull align 8 dereferenceable(32) ptr @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@AEBV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %13 unwind label %15

13:                                               ; preds = %11
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %5) #7
  %14 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@$$QEAV01@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #7
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %2) #7
  ret void

15:                                               ; preds = %11
  %16 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %5) #7 [ "funclet"(token %16) ]
  cleanupret from %16 unwind label %17

17:                                               ; preds = %15, %10, %7
  %18 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %2) #7 [ "funclet"(token %18) ]
  cleanupret from %18 unwind to caller
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #5 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::allocator", align 1
  %6 = alloca %"struct.std::_One_then_variadic_args_t", align 1
  %7 = alloca ptr, align 8
  %8 = alloca %"struct.std::_Fake_allocator", align 1
  %9 = alloca %"struct.std::_Fake_proxy_ptr_impl", align 1
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds %"class.std::basic_string", ptr %10, i32 0, i32 0
  %12 = load ptr, ptr %3, align 8
  %13 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %12) #7
  call void @"?select_on_container_copy_construction@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA?AV?$allocator@D@2@AEBV32@@Z"(ptr sret(%"class.std::allocator") align 1 %5, ptr noundef nonnull align 1 dereferenceable(1) %13)
  %14 = getelementptr inbounds %"struct.std::_One_then_variadic_args_t", ptr %6, i32 0, i32 0
  %15 = load i8, ptr %14, align 1
  %16 = call noundef ptr @"??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 %15, ptr noundef nonnull align 1 dereferenceable(1) %5) #7
  store ptr %8, ptr %7, align 8
  %17 = getelementptr inbounds %"class.std::basic_string", ptr %10, i32 0, i32 0
  %18 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %17, i32 0, i32 0
  %19 = load ptr, ptr %7, align 8
  %20 = call noundef ptr @"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %19, ptr noundef nonnull align 1 dereferenceable(1) %18) #7
  %21 = load ptr, ptr %3, align 8
  invoke void @"?_Construct_lv_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %22 unwind label %23

22:                                               ; preds = %2
  call void @"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %9) #7
  ret ptr %10

23:                                               ; preds = %2
  %24 = cleanuppad within none []
  call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %11) #7 [ "funclet"(token %24) ]
  cleanupret from %24 unwind to caller
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0runtime_error@std@@QEAA@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #6 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %6) #7
  %8 = call noundef ptr @"??0exception@std@@QEAA@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %7) #7
  store ptr @"??_7runtime_error@std@@6B@", ptr %5, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??_G_System_error@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1_System_error@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %6) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX@Z"(ptr noundef %6) #17
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"?empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef i64 @"?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %3) #7
  %5 = icmp eq i64 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(ptr noundef %6) #7
  %8 = call noundef i64 @"??$_Convert_size@_K@std@@YA_K_K@Z"(i64 noundef %7) #7
  %9 = load ptr, ptr %3, align 8
  %10 = call noundef nonnull align 8 dereferenceable(32) ptr @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %9, i64 noundef %8)
  ret ptr %10
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@AEBV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %"class.std::basic_string", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %7, i32 0, i32 0
  %9 = getelementptr inbounds %"class.std::_String_val", ptr %8, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %"class.std::basic_string", ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %12, i32 0, i32 0
  %14 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %13) #7
  %15 = call noundef nonnull align 8 dereferenceable(32) ptr @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, i64 noundef %10)
  ret ptr %15
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?message@error_code@std@@QEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias sret(%"class.std::basic_string") align 8 %1) #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = call noundef nonnull align 8 dereferenceable(16) ptr @"?category@error_code@std@@QEBAAEBVerror_category@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %5) #7
  %7 = call noundef i32 @"?value@error_code@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(16) %5) #7
  %8 = load ptr, ptr %6, align 8
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  call void %10(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr sret(%"class.std::basic_string") align 8 %1, i32 noundef %7)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@$$QEAV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #6 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::_One_then_variadic_args_t", align 1
  %6 = alloca %"struct.std::_Fake_allocator", align 1
  %7 = alloca %"struct.std::integral_constant", align 1
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds %"class.std::basic_string", ptr %8, i32 0, i32 0
  %10 = load ptr, ptr %3, align 8
  %11 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %10) #7
  %12 = getelementptr inbounds %"struct.std::_One_then_variadic_args_t", ptr %5, i32 0, i32 0
  %13 = load i8, ptr %12, align 1
  %14 = call noundef ptr @"??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 %13, ptr noundef nonnull align 1 dereferenceable(1) %11) #7
  %15 = getelementptr inbounds %"class.std::basic_string", ptr %8, i32 0, i32 0
  %16 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %15, i32 0, i32 0
  call void @"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 1 dereferenceable(1) %6) #7
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %"struct.std::integral_constant", ptr %7, i32 0, i32 0
  %19 = load i8, ptr %18, align 1
  call void @"?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U?$integral_constant@_N$00@2@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %17, i8 %19) #7
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::basic_string", ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds %"class.std::_String_val", ptr %5, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  ret i64 %7
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2) #3 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  %11 = alloca %class.anon.0, align 1
  store i64 %2, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %0, ptr %7, align 8
  %12 = load ptr, ptr %7, align 8
  %13 = getelementptr inbounds %"class.std::basic_string", ptr %12, i32 0, i32 0
  %14 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %13, i32 0, i32 0
  %15 = getelementptr inbounds %"class.std::_String_val", ptr %14, i32 0, i32 1
  %16 = load i64, ptr %15, align 8
  store i64 %16, ptr %8, align 8
  %17 = load i64, ptr %5, align 8
  %18 = getelementptr inbounds %"class.std::basic_string", ptr %12, i32 0, i32 0
  %19 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %18, i32 0, i32 0
  %20 = getelementptr inbounds %"class.std::_String_val", ptr %19, i32 0, i32 2
  %21 = load i64, ptr %20, align 8
  %22 = load i64, ptr %8, align 8
  %23 = sub i64 %21, %22
  %24 = icmp ule i64 %17, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %3
  %26 = load i64, ptr %8, align 8
  %27 = load i64, ptr %5, align 8
  %28 = add i64 %26, %27
  %29 = getelementptr inbounds %"class.std::basic_string", ptr %12, i32 0, i32 0
  %30 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %29, i32 0, i32 0
  %31 = getelementptr inbounds %"class.std::_String_val", ptr %30, i32 0, i32 1
  store i64 %28, ptr %31, align 8
  %32 = getelementptr inbounds %"class.std::basic_string", ptr %12, i32 0, i32 0
  %33 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %32, i32 0, i32 0
  %34 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(32) %33) #7
  store ptr %34, ptr %9, align 8
  %35 = load i64, ptr %5, align 8
  %36 = load ptr, ptr %6, align 8
  %37 = load ptr, ptr %9, align 8
  %38 = load i64, ptr %8, align 8
  %39 = getelementptr inbounds i8, ptr %37, i64 %38
  %40 = call noundef ptr @"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %39, ptr noundef %36, i64 noundef %35) #7
  store i8 0, ptr %10, align 1
  %41 = load ptr, ptr %9, align 8
  %42 = load i64, ptr %8, align 8
  %43 = load i64, ptr %5, align 8
  %44 = add i64 %42, %43
  %45 = getelementptr inbounds i8, ptr %41, i64 %44
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %45, ptr noundef nonnull align 1 dereferenceable(1) %10) #7
  store ptr %12, ptr %4, align 8
  br label %53

46:                                               ; preds = %3
  %47 = load i64, ptr %5, align 8
  %48 = load ptr, ptr %6, align 8
  %49 = load i64, ptr %5, align 8
  %50 = getelementptr inbounds %class.anon.0, ptr %11, i32 0, i32 0
  %51 = load i8, ptr %50, align 1
  %52 = call noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_grow_by@V<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD_K@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??append@01@QEAAAEAV01@QEBD0@Z@PEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %49, i8 %51, ptr noundef %48, i64 noundef %47)
  store ptr %52, ptr %4, align 8
  br label %53

53:                                               ; preds = %46, %25
  %54 = load ptr, ptr %4, align 8
  ret ptr %54
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_grow_by@V<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD_K@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??append@01@QEAAAEAV01@QEBD0@Z@PEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 %2, ptr noundef %3, i64 noundef %4) #3 comdat align 2 {
  %6 = alloca %class.anon.0, align 1
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = getelementptr inbounds %class.anon.0, ptr %6, i32 0, i32 0
  store i8 %2, ptr %20, align 1
  store i64 %4, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  store i64 %1, ptr %9, align 8
  store ptr %0, ptr %10, align 8
  %21 = load ptr, ptr %10, align 8
  %22 = getelementptr inbounds %"class.std::basic_string", ptr %21, i32 0, i32 0
  %23 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %22, i32 0, i32 0
  store ptr %23, ptr %11, align 8
  %24 = load ptr, ptr %11, align 8
  %25 = getelementptr inbounds %"class.std::_String_val", ptr %24, i32 0, i32 1
  %26 = load i64, ptr %25, align 8
  store i64 %26, ptr %12, align 8
  %27 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %21) #7
  %28 = load i64, ptr %12, align 8
  %29 = sub i64 %27, %28
  %30 = load i64, ptr %9, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %5
  call void @"?_Xlen_string@std@@YAXXZ"() #16
  unreachable

33:                                               ; preds = %5
  %34 = load i64, ptr %12, align 8
  %35 = load i64, ptr %9, align 8
  %36 = add i64 %34, %35
  store i64 %36, ptr %13, align 8
  %37 = load ptr, ptr %11, align 8
  %38 = getelementptr inbounds %"class.std::_String_val", ptr %37, i32 0, i32 2
  %39 = load i64, ptr %38, align 8
  store i64 %39, ptr %14, align 8
  %40 = load i64, ptr %13, align 8
  %41 = call noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef %40) #7
  store i64 %41, ptr %15, align 8
  %42 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %21) #7
  store ptr %42, ptr %16, align 8
  %43 = load ptr, ptr %16, align 8
  %44 = load i64, ptr %15, align 8
  %45 = add i64 %44, 1
  %46 = call noundef ptr @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %43, i64 noundef %45)
  store ptr %46, ptr %17, align 8
  %47 = load ptr, ptr %11, align 8
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %47) #7
  %48 = load i64, ptr %13, align 8
  %49 = load ptr, ptr %11, align 8
  %50 = getelementptr inbounds %"class.std::_String_val", ptr %49, i32 0, i32 1
  store i64 %48, ptr %50, align 8
  %51 = load i64, ptr %15, align 8
  %52 = load ptr, ptr %11, align 8
  %53 = getelementptr inbounds %"class.std::_String_val", ptr %52, i32 0, i32 2
  store i64 %51, ptr %53, align 8
  %54 = load ptr, ptr %17, align 8
  %55 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %54) #7
  store ptr %55, ptr %18, align 8
  %56 = load i64, ptr %14, align 8
  %57 = icmp ule i64 16, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %33
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds %"class.std::_String_val", ptr %59, i32 0, i32 0
  %61 = load ptr, ptr %60, align 8
  store ptr %61, ptr %19, align 8
  %62 = load i64, ptr %7, align 8
  %63 = load ptr, ptr %8, align 8
  %64 = load i64, ptr %12, align 8
  %65 = load ptr, ptr %19, align 8
  %66 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %65) #7
  %67 = load ptr, ptr %18, align 8
  call void @"??R<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD0101@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %67, ptr noundef %66, i64 noundef %64, ptr noundef %63, i64 noundef %62)
  %68 = load ptr, ptr %16, align 8
  %69 = load i64, ptr %14, align 8
  %70 = add i64 %69, 1
  %71 = load ptr, ptr %19, align 8
  call void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %68, ptr noundef %71, i64 noundef %70)
  %72 = load ptr, ptr %17, align 8
  %73 = load ptr, ptr %11, align 8
  %74 = getelementptr inbounds %"class.std::_String_val", ptr %73, i32 0, i32 0
  store ptr %72, ptr %74, align 8
  br label %85

75:                                               ; preds = %33
  %76 = load i64, ptr %7, align 8
  %77 = load ptr, ptr %8, align 8
  %78 = load i64, ptr %12, align 8
  %79 = load ptr, ptr %11, align 8
  %80 = getelementptr inbounds %"class.std::_String_val", ptr %79, i32 0, i32 0
  %81 = getelementptr inbounds [16 x i8], ptr %80, i64 0, i64 0
  %82 = load ptr, ptr %18, align 8
  call void @"??R<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD0101@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %82, ptr noundef %81, i64 noundef %78, ptr noundef %77, i64 noundef %76)
  %83 = load ptr, ptr %11, align 8
  %84 = getelementptr inbounds %"class.std::_String_val", ptr %83, i32 0, i32 0
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %84, ptr noundef nonnull align 8 dereferenceable(8) %17) #7
  br label %85

85:                                               ; preds = %75, %58
  ret ptr %21
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??R<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD0101@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) #4 comdat align 2 {
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i8, align 1
  store i64 %5, ptr %7, align 8
  store ptr %4, ptr %8, align 8
  store i64 %3, ptr %9, align 8
  store ptr %2, ptr %10, align 8
  store ptr %1, ptr %11, align 8
  store ptr %0, ptr %12, align 8
  %14 = load ptr, ptr %12, align 8
  %15 = load i64, ptr %9, align 8
  %16 = load ptr, ptr %10, align 8
  %17 = load ptr, ptr %11, align 8
  %18 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %17, ptr noundef %16, i64 noundef %15) #7
  %19 = load i64, ptr %7, align 8
  %20 = load ptr, ptr %8, align 8
  %21 = load ptr, ptr %11, align 8
  %22 = load i64, ptr %9, align 8
  %23 = getelementptr inbounds i8, ptr %21, i64 %22
  %24 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %23, ptr noundef %20, i64 noundef %19) #7
  store i8 0, ptr %13, align 1
  %25 = load ptr, ptr %11, align 8
  %26 = load i64, ptr %9, align 8
  %27 = load i64, ptr %7, align 8
  %28 = add i64 %26, %27
  %29 = getelementptr inbounds i8, ptr %25, i64 %28
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %29, ptr noundef nonnull align 1 dereferenceable(1) %13) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %"class.std::_String_val", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds [16 x i8], ptr %5, i64 0, i64 0
  store ptr %6, ptr %3, align 8
  %7 = call noundef zeroext i1 @"?_Large_string_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %4) #7
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.std::_String_val", ptr %4, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %10) #7
  store ptr %11, ptr %3, align 8
  br label %12

12:                                               ; preds = %8, %1
  %13 = load ptr, ptr %3, align 8
  ret ptr %13
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, i8 %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #6 comdat align 2 {
  %4 = alloca %"struct.std::_One_then_variadic_args_t", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %"struct.std::_One_then_variadic_args_t", ptr %4, i32 0, i32 0
  store i8 %1, ptr %7, align 1
  store ptr %2, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %8, i32 0, i32 0
  %11 = call noundef ptr @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %10) #7
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #4 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U?$integral_constant@_N$00@2@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 %2) #4 comdat align 2 {
  %4 = alloca %"struct.std::integral_constant", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %"struct.std::integral_constant", ptr %4, i32 0, i32 0
  store i8 %2, ptr %7, align 1
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %5, align 8
  call void @"?_Memcpy_val_from@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9) #7
  %10 = load ptr, ptr %5, align 8
  call void @"?_Tidy_init@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %10) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Memcpy_val_from@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #4 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"class.std::basic_string", ptr %7, i32 0, i32 0
  %9 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %8, i32 0, i32 0
  %10 = getelementptr inbounds i8, ptr %9, i64 0
  store ptr %10, ptr %5, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %"class.std::basic_string", ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %12, i32 0, i32 0
  %14 = getelementptr inbounds i8, ptr %13, i64 0
  store ptr %14, ptr %6, align 8
  %15 = load ptr, ptr %5, align 8
  %16 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr align 1 %16, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?select_on_container_copy_construction@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA?AV?$allocator@D@2@AEBV32@@Z"(ptr noalias sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #4 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?_Construct_lv_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %"class.std::basic_string", ptr %15, i32 0, i32 0
  %17 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %16, i32 0, i32 0
  store ptr %17, ptr %5, align 8
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds %"class.std::_String_val", ptr %18, i32 0, i32 1
  %20 = load i64, ptr %19, align 8
  store i64 %20, ptr %6, align 8
  %21 = load ptr, ptr %5, align 8
  %22 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %21) #7
  store ptr %22, ptr %7, align 8
  %23 = getelementptr inbounds %"class.std::basic_string", ptr %14, i32 0, i32 0
  %24 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %23, i32 0, i32 0
  store ptr %24, ptr %8, align 8
  %25 = load i64, ptr %6, align 8
  %26 = icmp ult i64 %25, 16
  br i1 %26, label %27, label %38

27:                                               ; preds = %2
  %28 = load ptr, ptr %7, align 8
  %29 = load ptr, ptr %8, align 8
  %30 = getelementptr inbounds %"class.std::_String_val", ptr %29, i32 0, i32 0
  %31 = getelementptr inbounds [16 x i8], ptr %30, i64 0, i64 0
  %32 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %31, ptr noundef %28, i64 noundef 16) #7
  %33 = load i64, ptr %6, align 8
  %34 = load ptr, ptr %8, align 8
  %35 = getelementptr inbounds %"class.std::_String_val", ptr %34, i32 0, i32 1
  store i64 %33, ptr %35, align 8
  %36 = load ptr, ptr %8, align 8
  %37 = getelementptr inbounds %"class.std::_String_val", ptr %36, i32 0, i32 2
  store i64 15, ptr %37, align 8
  br label %63

38:                                               ; preds = %2
  %39 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %14) #7
  store ptr %39, ptr %9, align 8
  %40 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %14) #7
  store i64 %40, ptr %11, align 8
  %41 = load i64, ptr %6, align 8
  %42 = or i64 %41, 15
  store i64 %42, ptr %12, align 8
  %43 = call noundef nonnull align 8 dereferenceable(8) ptr @"??$min@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11) #7
  %44 = load i64, ptr %43, align 8
  store i64 %44, ptr %10, align 8
  %45 = load ptr, ptr %9, align 8
  %46 = load i64, ptr %10, align 8
  %47 = add i64 %46, 1
  %48 = call noundef ptr @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %45, i64 noundef %47)
  store ptr %48, ptr %13, align 8
  %49 = load ptr, ptr %8, align 8
  %50 = getelementptr inbounds %"class.std::_String_val", ptr %49, i32 0, i32 0
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef nonnull align 8 dereferenceable(8) %13) #7
  %51 = load i64, ptr %6, align 8
  %52 = add i64 %51, 1
  %53 = load ptr, ptr %7, align 8
  %54 = load ptr, ptr %13, align 8
  %55 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %54) #7
  %56 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %55, ptr noundef %53, i64 noundef %52) #7
  %57 = load i64, ptr %6, align 8
  %58 = load ptr, ptr %8, align 8
  %59 = getelementptr inbounds %"class.std::_String_val", ptr %58, i32 0, i32 1
  store i64 %57, ptr %59, align 8
  %60 = load i64, ptr %10, align 8
  %61 = load ptr, ptr %8, align 8
  %62 = getelementptr inbounds %"class.std::_String_val", ptr %61, i32 0, i32 2
  store i64 %60, ptr %62, align 8
  br label %63

63:                                               ; preds = %38, %27
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::basic_string", ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %4, i32 0, i32 0
  %6 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %5) #7
  ret ptr %6
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0exception@std@@QEAA@QEBD@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.__std_exception_data, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  store ptr @"??_7exception@std@@6B@", ptr %6, align 8
  %7 = getelementptr inbounds %"class.std::exception", ptr %6, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 16, i1 false)
  %8 = getelementptr inbounds %struct.__std_exception_data, ptr %5, i32 0, i32 0
  %9 = load ptr, ptr %3, align 8
  store ptr %9, ptr %8, align 8
  %10 = getelementptr inbounds %struct.__std_exception_data, ptr %5, i32 0, i32 1
  store i8 1, ptr %10, align 8
  %11 = getelementptr inbounds %"class.std::exception", ptr %6, i32 0, i32 1
  invoke void @__std_exception_copy(ptr noundef %5, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %2
  ret ptr %6

13:                                               ; preds = %2
  %14 = cleanuppad within none []
  call void @__std_terminate() #15 [ "funclet"(token %14) ]
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??_Gruntime_error@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1runtime_error@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %6) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX@Z"(ptr noundef %6) #17
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

declare dso_local void @__std_exception_copy(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1runtime_error@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1exception@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1_System_error@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1runtime_error@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #4 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %"class.std::basic_string", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %7, i32 0, i32 0
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %8) #7
  %9 = getelementptr inbounds %"class.std::basic_string", ptr %6, i32 0, i32 0
  %10 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %9, i32 0, i32 0
  %11 = call noundef zeroext i1 @"?_Large_string_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %10) #7
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.std::basic_string", ptr %6, i32 0, i32 0
  %14 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %13, i32 0, i32 0
  %15 = getelementptr inbounds %"class.std::_String_val", ptr %14, i32 0, i32 0
  %16 = load ptr, ptr %15, align 8
  store ptr %16, ptr %3, align 8
  %17 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %6) #7
  store ptr %17, ptr %4, align 8
  %18 = getelementptr inbounds %"class.std::basic_string", ptr %6, i32 0, i32 0
  %19 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %18, i32 0, i32 0
  %20 = getelementptr inbounds %"class.std::_String_val", ptr %19, i32 0, i32 0
  call void @"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %20) #7
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds %"class.std::basic_string", ptr %6, i32 0, i32 0
  %23 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %22, i32 0, i32 0
  %24 = getelementptr inbounds %"class.std::_String_val", ptr %23, i32 0, i32 2
  %25 = load i64, ptr %24, align 8
  %26 = add i64 %25, 1
  %27 = load ptr, ptr %3, align 8
  call void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef %27, i64 noundef %26)
  br label %28

28:                                               ; preds = %12, %1
  %29 = getelementptr inbounds %"class.std::basic_string", ptr %6, i32 0, i32 0
  %30 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %29, i32 0, i32 0
  %31 = getelementptr inbounds %"class.std::_String_val", ptr %30, i32 0, i32 1
  store i64 0, ptr %31, align 8
  %32 = getelementptr inbounds %"class.std::basic_string", ptr %6, i32 0, i32 0
  %33 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %32, i32 0, i32 0
  %34 = getelementptr inbounds %"class.std::_String_val", ptr %33, i32 0, i32 2
  store i64 15, ptr %34, align 8
  store i8 0, ptr %5, align 1
  %35 = getelementptr inbounds %"class.std::basic_string", ptr %6, i32 0, i32 0
  %36 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %35, i32 0, i32 0
  %37 = getelementptr inbounds %"class.std::_String_val", ptr %36, i32 0, i32 0
  %38 = getelementptr inbounds [16 x i8], ptr %37, i64 0, i64 0
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %38, ptr noundef nonnull align 1 dereferenceable(1) %5) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0) #4 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1system_error@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1_System_error@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %3) #7
  ret void
}

; Function Attrs: nounwind
declare dso_local noundef zeroext i1 @"?uncaught_exception@std@@YA_NXZ"() #14

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) #3 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds i8, ptr %3, i64 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds i32, ptr %5, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = add nsw i64 0, %8
  %10 = getelementptr inbounds i8, ptr %3, i64 %9
  %11 = invoke noundef zeroext i1 @"?good@ios_base@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(72) %10)
          to label %12 unwind label %44

12:                                               ; preds = %1
  br i1 %11, label %13, label %52

13:                                               ; preds = %12
  %14 = getelementptr inbounds i8, ptr %3, i64 0
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds i32, ptr %15, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 0, %18
  %20 = getelementptr inbounds i8, ptr %3, i64 %19
  %21 = call noundef i32 @"?flags@ios_base@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(72) %20)
  %22 = and i32 %21, 2
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %13
  %25 = getelementptr inbounds i8, ptr %3, i64 0
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds i32, ptr %26, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 0, %29
  %31 = getelementptr inbounds i8, ptr %3, i64 %30
  %32 = call noundef ptr @"?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(96) %31)
  %33 = invoke noundef i32 @"?pubsync@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHXZ"(ptr noundef nonnull align 8 dereferenceable(104) %32)
          to label %34 unwind label %44

34:                                               ; preds = %24
  %35 = icmp eq i32 %33, -1
  br i1 %35, label %36, label %51

36:                                               ; preds = %34
  %37 = getelementptr inbounds i8, ptr %3, i64 0
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds i32, ptr %38, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 0, %41
  %43 = getelementptr inbounds i8, ptr %3, i64 %42
  invoke void @"?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z"(ptr noundef nonnull align 8 dereferenceable(96) %43, i32 noundef 4, i1 noundef zeroext false)
          to label %50 unwind label %44

44:                                               ; preds = %36, %24, %1
  %45 = catchswitch within none [label %46] unwind to caller

46:                                               ; preds = %44
  %47 = catchpad within %45 [ptr null, i32 64, ptr null]
  catchret from %47 to label %48

48:                                               ; preds = %46
  br label %49

49:                                               ; preds = %48, %52
  ret void

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %50, %34
  br label %52

52:                                               ; preds = %51, %13, %12
  br label %49
}

attributes #0 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noinline uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline noreturn optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #13 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin nounwind }
attributes #18 = { allocsize(0) }

!llvm.linker.options = !{!0, !1, !2, !3, !4}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"/FAILIFMISMATCH:\22_MSC_VER=1900\22"}
!1 = !{!"/FAILIFMISMATCH:\22_ITERATOR_DEBUG_LEVEL=0\22"}
!2 = !{!"/FAILIFMISMATCH:\22RuntimeLibrary=MT_StaticRelease\22"}
!3 = !{!"/DEFAULTLIB:libcpmt.lib"}
!4 = !{!"/FAILIFMISMATCH:\22_CRT_STDIO_ISO_WIDE_SPECIFIERS=0\22"}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"clang version 15.0.7"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = !{!"branch_weights", i32 1, i32 1048575}
