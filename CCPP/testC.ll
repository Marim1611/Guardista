; ModuleID = 'testC.cpp'
source_filename = "testC.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.28.29333"

%"class.std::basic_ostream" = type { ptr, [4 x i8], i32, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, ptr, i8 }
%"class.std::ios_base" = type { ptr, i64, i32, i32, i32, i64, i64, ptr, ptr, ptr }
%"class.std::locale::id" = type { i64 }
%rtti.CompleteObjectLocator = type { i32, i32, i32, i32, i32, i32 }
%rtti.TypeDescriptor73 = type { ptr, ptr, [74 x i8] }
%rtti.ClassHierarchyDescriptor = type { i32, i32, i32, i32 }
%rtti.BaseClassDescriptor = type { i32, i32, i32, i32, i32, i32, i32 }
%rtti.TypeDescriptor22 = type { ptr, ptr, [23 x i8] }
%rtti.TypeDescriptor21 = type { ptr, ptr, [22 x i8] }
%rtti.TypeDescriptor25 = type { ptr, ptr, [26 x i8] }
%rtti.TypeDescriptor19 = type { ptr, ptr, [20 x i8] }
%rtti.TypeDescriptor20 = type { ptr, ptr, [21 x i8] }
%rtti.TypeDescriptor30 = type { ptr, ptr, [31 x i8] }
%eh.CatchableType = type { i32, i32, i32, i32, i32, i32, i32 }
%eh.CatchableTypeArray.3 = type { i32, [3 x i32] }
%eh.ThrowInfo = type { i32, i32, i32, i32 }
%rtti.TypeDescriptor18 = type { ptr, ptr, [19 x i8] }
%eh.CatchableTypeArray.2 = type { i32, [2 x i32] }
%rtti.TypeDescriptor26 = type { ptr, ptr, [27 x i8] }
%rtti.TypeDescriptor23 = type { ptr, ptr, [24 x i8] }
%eh.CatchableTypeArray.5 = type { i32, [5 x i32] }
%rtti.TypeDescriptor35 = type { ptr, ptr, [36 x i8] }
%rtti.TypeDescriptor24 = type { ptr, ptr, [25 x i8] }
%"class.std::basic_ostream<char>::sentry" = type { %"class.std::basic_ostream<char>::_Sentry_base", i8 }
%"class.std::basic_ostream<char>::_Sentry_base" = type { ptr }
%"class.std::locale" = type { [8 x i8], ptr }
%"class.std::ostreambuf_iterator" = type { i8, ptr }
%"class.std::_Lockit" = type { i32 }
%"class.std::unique_ptr" = type { %"class.std::_Compressed_pair" }
%"class.std::_Compressed_pair" = type { ptr }
%"class.std::locale::_Locimp" = type { %"class.std::locale::facet", ptr, i64, i32, i8, %"class.std::_Yarn" }
%"class.std::locale::facet" = type { %"class.std::_Facet_base", i32 }
%"class.std::_Facet_base" = type { ptr }
%"class.std::_Yarn" = type { ptr, i8 }
%"class.std::_Locinfo" = type { %"class.std::_Lockit", %"class.std::_Yarn", %"class.std::_Yarn", %"class.std::_Yarn.0", %"class.std::_Yarn.0", %"class.std::_Yarn", %"class.std::_Yarn" }
%"class.std::_Yarn.0" = type { ptr, i16 }
%"class.std::bad_cast" = type { %"class.std::exception" }
%"class.std::exception" = type { ptr, %struct.__std_exception_data }
%struct.__std_exception_data = type { ptr, i8 }
%"struct.std::_Zero_then_variadic_args_t" = type { i8 }
%"class.std::basic_string" = type { %"class.std::_Compressed_pair.1" }
%"class.std::_Compressed_pair.1" = type { %"class.std::_String_val" }
%"class.std::_String_val" = type { %"union.std::_String_val<std::_Simple_types<char>>::_Bxty", i64, i64 }
%"union.std::_String_val<std::_Simple_types<char>>::_Bxty" = type { ptr, [8 x i8] }
%"struct.std::_Fake_allocator" = type { i8 }
%"struct.std::_Fake_proxy_ptr_impl" = type { i8 }
%class.anon.4 = type { i8 }
%"class.std::ctype" = type { %"struct.std::ctype_base", %struct._Ctypevec }
%"struct.std::ctype_base" = type { %"class.std::locale::facet" }
%struct._Ctypevec = type { i32, ptr, i32, ptr }
%class.anon = type { i8 }
%"class.std::bad_array_new_length" = type { %"class.std::bad_alloc" }
%"class.std::bad_alloc" = type { %"class.std::exception" }
%struct._Cvtvec = type { i32, i32, i32, [32 x i8] }
%"struct.std::_Tidy_guard" = type { ptr }
%"class.std::numpunct" = type { %"class.std::locale::facet", ptr, i8, i8, ptr, ptr }
%struct.lconv = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%class.anon.2 = type { i8 }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%class.anon.6 = type { i8 }
%"struct.std::_Equal_allocators" = type { i8 }
%"struct.std::integral_constant" = type { i8 }
%"class.std::ios_base::failure" = type { %"class.std::system_error" }
%"class.std::system_error" = type { %"class.std::_System_error" }
%"class.std::_System_error" = type { %"class.std::runtime_error", %"class.std::error_code" }
%"class.std::runtime_error" = type { %"class.std::exception" }
%"class.std::error_code" = type { i32, ptr }
%"class.std::error_condition" = type { i32, ptr }
%"class.std::error_category" = type { ptr, i64 }
%"class.std::allocator" = type { i8 }
%"struct.std::_One_then_variadic_args_t" = type { i8 }
%class.anon.8 = type { i8 }

$"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z" = comdat any

$"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@H@Z" = comdat any

$"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@P6AAEAV01@AEAV01@@Z@Z" = comdat any

$"??$endl@DU?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@@Z" = comdat any

$"??__E?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A@@YAXXZ" = comdat any

$"??0id@locale@std@@QEAA@_K@Z" = comdat any

$"??__E?id@?$numpunct@D@std@@2V0locale@2@A@@YAXXZ" = comdat any

$"??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z" = comdat any

$"??Bsentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEBA_NXZ" = comdat any

$"??$use_facet@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@YAAEBV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@0@AEBVlocale@0@@Z" = comdat any

$"?getloc@ios_base@std@@QEBA?AVlocale@2@XZ" = comdat any

$"??1locale@std@@QEAA@XZ" = comdat any

$"?flags@ios_base@std@@QEBAHXZ" = comdat any

$"?put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@QEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DJ@Z" = comdat any

$"?fill@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBADXZ" = comdat any

$"?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ" = comdat any

$"??0?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@QEAA@PEAV?$basic_streambuf@DU?$char_traits@D@std@@@1@@Z" = comdat any

$"?failed@?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@QEBA_NXZ" = comdat any

$"?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z" = comdat any

$"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ" = comdat any

$"??0_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z" = comdat any

$"?good@ios_base@std@@QEBA_NXZ" = comdat any

$"?tie@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_ostream@DU?$char_traits@D@std@@@2@XZ" = comdat any

$"?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ" = comdat any

$"??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ" = comdat any

$"?rdstate@ios_base@std@@QEBAHXZ" = comdat any

$"?pubsync@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHXZ" = comdat any

$"??Bid@locale@std@@QEAA_KXZ" = comdat any

$"?_Getfacet@locale@std@@QEBAPEBVfacet@12@_K@Z" = comdat any

$"?_Getcat@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@SA_KPEAPEBVfacet@locale@2@PEBV42@@Z" = comdat any

$"?_Throw_bad_cast@std@@YAXXZ" = comdat any

$"??$?0U?$default_delete@V_Facet_base@std@@@std@@$0A@@?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAA@PEAV_Facet_base@1@@Z" = comdat any

$"?release@?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAAPEAV_Facet_base@2@XZ" = comdat any

$"??1?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAA@XZ" = comdat any

$"?c_str@locale@std@@QEBAPEBDXZ" = comdat any

$"??0_Locinfo@std@@QEAA@PEBD@Z" = comdat any

$"??0?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@QEAA@AEBV_Locinfo@1@_K@Z" = comdat any

$"??1_Locinfo@std@@QEAA@XZ" = comdat any

$"?c_str@?$_Yarn@D@std@@QEBAPEBDXZ" = comdat any

$"??0?$_Yarn@D@std@@QEAA@XZ" = comdat any

$"??0?$_Yarn@_W@std@@QEAA@XZ" = comdat any

$"??1?$_Yarn@D@std@@QEAA@XZ" = comdat any

$"??1?$_Yarn@_W@std@@QEAA@XZ" = comdat any

$"?_Tidy@?$_Yarn@D@std@@AEAAXXZ" = comdat any

$"?_Tidy@?$_Yarn@_W@std@@AEAAXXZ" = comdat any

$"??0facet@locale@std@@IEAA@_K@Z" = comdat any

$"?_Init@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@IEAAXAEBV_Locinfo@2@@Z" = comdat any

$"??1facet@locale@std@@MEAA@XZ" = comdat any

$"??_G?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEAAPEAXI@Z" = comdat any

$"?_Incref@facet@locale@std@@UEAAXXZ" = comdat any

$"?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ" = comdat any

$"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEBX@Z" = comdat any

$"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DO@Z" = comdat any

$"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DN@Z" = comdat any

$"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_K@Z" = comdat any

$"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_J@Z" = comdat any

$"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DK@Z" = comdat any

$"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DJ@Z" = comdat any

$"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_N@Z" = comdat any

$"??0_Facet_base@std@@QEAA@XZ" = comdat any

$"??_Gfacet@locale@std@@MEAAPEAXI@Z" = comdat any

$"??_G_Facet_base@std@@UEAAPEAXI@Z" = comdat any

$"??1_Facet_base@std@@UEAA@XZ" = comdat any

$"??1?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEAA@XZ" = comdat any

$"?_Iput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEAD_K@Z" = comdat any

$sprintf_s = comdat any

$"??$use_facet@V?$ctype@D@std@@@std@@YAAEBV?$ctype@D@0@AEBVlocale@0@@Z" = comdat any

$"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@_KD@Z" = comdat any

$"?widen@?$ctype@D@std@@QEBAPEBDPEBD0PEAD@Z" = comdat any

$"??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAD_K@Z" = comdat any

$"??$use_facet@V?$numpunct@D@std@@@std@@YAAEBV?$numpunct@D@0@AEBVlocale@0@@Z" = comdat any

$"?grouping@?$numpunct@D@std@@QEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ" = comdat any

$"??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAAEBD_K@Z" = comdat any

$"?thousands_sep@?$numpunct@D@std@@QEBADXZ" = comdat any

$"?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K0D@Z" = comdat any

$"?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ" = comdat any

$"?width@ios_base@std@@QEBA_JXZ" = comdat any

$"?_Rep@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@D_K@Z" = comdat any

$"?_Put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@PEBD_K@Z" = comdat any

$"?width@ios_base@std@@QEAA_J_J@Z" = comdat any

$"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ" = comdat any

$"?_Getcat@?$ctype@D@std@@SA_KPEAPEBVfacet@locale@2@PEBV42@@Z" = comdat any

$"??0?$ctype@D@std@@QEAA@AEBV_Locinfo@1@_K@Z" = comdat any

$"??0ctype_base@std@@QEAA@_K@Z" = comdat any

$"?_Init@?$ctype@D@std@@IEAAXAEBV_Locinfo@2@@Z" = comdat any

$"??1ctype_base@std@@UEAA@XZ" = comdat any

$"??_G?$ctype@D@std@@MEAAPEAXI@Z" = comdat any

$"?do_tolower@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z" = comdat any

$"?do_tolower@?$ctype@D@std@@MEBADD@Z" = comdat any

$"?do_toupper@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z" = comdat any

$"?do_toupper@?$ctype@D@std@@MEBADD@Z" = comdat any

$"?do_widen@?$ctype@D@std@@MEBAPEBDPEBD0PEAD@Z" = comdat any

$"?do_widen@?$ctype@D@std@@MEBADD@Z" = comdat any

$"?do_narrow@?$ctype@D@std@@MEBAPEBDPEBD0DPEAD@Z" = comdat any

$"?do_narrow@?$ctype@D@std@@MEBADDD@Z" = comdat any

$"??_Gctype_base@std@@UEAAPEAXI@Z" = comdat any

$"?_Getctype@_Locinfo@std@@QEBA?AU_Ctypevec@@XZ" = comdat any

$"??1?$ctype@D@std@@MEAA@XZ" = comdat any

$"?_Tidy@?$ctype@D@std@@IEAAXXZ" = comdat any

$"??$_Adl_verify_range@PEADPEBD@std@@YAXAEBQEADAEBQEBD@Z" = comdat any

$"??$_Adl_verify_range@PEBDPEBD@std@@YAXAEBQEBD0@Z" = comdat any

$"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z" = comdat any

$"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z" = comdat any

$"?_Tidy_init@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ" = comdat any

$"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_KD@Z" = comdat any

$"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ" = comdat any

$"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ" = comdat any

$"??0?$allocator@D@std@@QEAA@XZ" = comdat any

$"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z" = comdat any

$"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ" = comdat any

$"?assign@?$_Narrow_char_traits@DH@std@@SAPEADQEAD_KD@Z" = comdat any

$"??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@_KD@Z@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??assign@01@QEAAAEAV01@0D@Z@D@Z" = comdat any

$"?_Large_string_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ" = comdat any

$"??$_Unfancy@D@std@@YAPEADPEAD@Z" = comdat any

$"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ" = comdat any

$"?_Xlen_string@std@@YAXXZ" = comdat any

$"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z" = comdat any

$"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ" = comdat any

$"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z" = comdat any

$"?_Orphan_all@_Container_base0@std@@QEAAXXZ" = comdat any

$"??R<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@_KD@Z@QEBA?A?<auto>@@QEAD0D@Z" = comdat any

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

$"??0exception@std@@QEAA@AEBV01@@Z" = comdat any

$"??1bad_array_new_length@std@@UEAA@XZ" = comdat any

$"??0bad_alloc@std@@AEAA@QEBD@Z" = comdat any

$"??_Gbad_array_new_length@std@@UEAAPEAXI@Z" = comdat any

$"?what@exception@std@@UEBAPEBDXZ" = comdat any

$"??0exception@std@@QEAA@QEBDH@Z" = comdat any

$"??_Gbad_alloc@std@@UEAAPEAXI@Z" = comdat any

$"??_Gexception@std@@UEAAPEAXI@Z" = comdat any

$"??1exception@std@@UEAA@XZ" = comdat any

$"??1bad_alloc@std@@UEAA@XZ" = comdat any

$"??$_Deallocate@$0BA@$0A@@std@@YAXPEAX_K@Z" = comdat any

$"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z" = comdat any

$"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ" = comdat any

$"?_Getcat@?$numpunct@D@std@@SA_KPEAPEBVfacet@locale@2@PEBV42@@Z" = comdat any

$"??0?$numpunct@D@std@@QEAA@AEBV_Locinfo@1@_K_N@Z" = comdat any

$"?_Init@?$numpunct@D@std@@IEAAXAEBV_Locinfo@2@_N@Z" = comdat any

$"??_G?$numpunct@D@std@@MEAAPEAXI@Z" = comdat any

$"?do_decimal_point@?$numpunct@D@std@@MEBADXZ" = comdat any

$"?do_thousands_sep@?$numpunct@D@std@@MEBADXZ" = comdat any

$"?do_grouping@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ" = comdat any

$"?do_falsename@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ" = comdat any

$"?do_truename@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ" = comdat any

$"?_Getlconv@_Locinfo@std@@QEBAPEBUlconv@@XZ" = comdat any

$"?_Getcvt@_Locinfo@std@@QEBA?AU_Cvtvec@@XZ" = comdat any

$"??$_Maklocstr@D@std@@YAPEADPEBDPEADAEBU_Cvtvec@@@Z" = comdat any

$"?_Getfalse@_Locinfo@std@@QEBAPEBDXZ" = comdat any

$"?_Gettrue@_Locinfo@std@@QEBAPEBDXZ" = comdat any

$"??$_Maklocchr@D@std@@YADDPEADAEBU_Cvtvec@@@Z" = comdat any

$"??$_Getvals@D@?$numpunct@D@std@@IEAAXDPEBUlconv@@U_Cvtvec@@@Z" = comdat any

$"??1?$_Tidy_guard@V?$numpunct@D@std@@@std@@QEAA@XZ" = comdat any

$"?_Tidy@?$numpunct@D@std@@AEAAXXZ" = comdat any

$"??1?$numpunct@D@std@@MEAA@XZ" = comdat any

$"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z" = comdat any

$"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z" = comdat any

$"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z" = comdat any

$"??$_Convert_size@_K@std@@YA_K_K@Z" = comdat any

$"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z" = comdat any

$"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z" = comdat any

$"??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??assign@01@QEAAAEAV01@QEBD0@Z@PEBD@Z" = comdat any

$"??R<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD10@Z" = comdat any

$"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z" = comdat any

$"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ" = comdat any

$"?_Check_offset@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAX_K@Z" = comdat any

$"??$_Reallocate_grow_by@V<lambda_1>@?0??insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@_K0D@Z@_K_KD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??insert@01@QEAAAEAV01@00D@Z@_K2D@Z" = comdat any

$"?_Xran@?$_String_val@U?$_Simple_types@D@std@@@std@@SAXXZ" = comdat any

$"??R<lambda_1>@?0??insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@_K0D@Z@QEBA?A?<auto>@@QEADQEBD000D@Z" = comdat any

$"??D?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@QEAAAEAV01@XZ" = comdat any

$"??4?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@QEAAAEAV01@D@Z" = comdat any

$"??E?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@QEAAAEAV01@XZ" = comdat any

$"?eq_int_type@?$_Narrow_char_traits@DH@std@@SA_NAEBH0@Z" = comdat any

$"?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHD@Z" = comdat any

$"?eof@?$_Narrow_char_traits@DH@std@@SAHXZ" = comdat any

$"?_Pnavail@?$basic_streambuf@DU?$char_traits@D@std@@@std@@IEBA_JXZ" = comdat any

$"?to_int_type@?$_Narrow_char_traits@DH@std@@SAHAEBD@Z" = comdat any

$"?_Pninc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@IEAAPEADXZ" = comdat any

$"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ" = comdat any

$"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z" = comdat any

$_vsprintf_s_l = comdat any

$__local_stdio_printf_options = comdat any

$"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ" = comdat any

$"?precision@ios_base@std@@QEBA_JXZ" = comdat any

$"??$_Float_put_desired_precision@O@std@@YAH_JH@Z" = comdat any

$frexpl = comdat any

$"?resize@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_KD@Z" = comdat any

$"?_Ffmt@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBAPEADPEADDH@Z" = comdat any

$"?_Fput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEBD_K@Z" = comdat any

$"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ" = comdat any

$"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z" = comdat any

$"?_Eos@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAX_K@Z" = comdat any

$"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_KD@Z" = comdat any

$"??$_Reallocate_grow_by@V<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@_KD@Z@_KD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??append@01@QEAAAEAV01@0D@Z@_KD@Z" = comdat any

$"??R<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@_KD@Z@QEBA?A?<auto>@@QEADQEBD00D@Z" = comdat any

$"?decimal_point@?$numpunct@D@std@@QEBADXZ" = comdat any

$"??$_Float_put_desired_precision@N@std@@YAH_JH@Z" = comdat any

$"?_Ifmt@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBAPEADPEADPEBDH@Z" = comdat any

$"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@$$QEAV12@@Z" = comdat any

$"?truename@?$numpunct@D@std@@QEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ" = comdat any

$"?falsename@?$numpunct@D@std@@QEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ" = comdat any

$"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@$$QEAV01@@Z" = comdat any

$"?_Move_assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U_Equal_allocators@2@@Z" = comdat any

$"??$_Pocma@V?$allocator@D@std@@@std@@YAXAEAV?$allocator@D@0@0@Z" = comdat any

$"?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U?$integral_constant@_N$00@2@@Z" = comdat any

$"?_Memcpy_val_from@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z" = comdat any

$"??0bad_cast@std@@QEAA@XZ" = comdat any

$"??0bad_cast@std@@QEAA@AEBV01@@Z" = comdat any

$"??1bad_cast@std@@UEAA@XZ" = comdat any

$"??_Gbad_cast@std@@UEAAPEAXI@Z" = comdat any

$"??$?0AEAPEAV_Facet_base@std@@@?$_Compressed_pair@U?$default_delete@V_Facet_base@std@@@std@@PEAV_Facet_base@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@AEAPEAV_Facet_base@1@@Z" = comdat any

$"??$exchange@PEAV_Facet_base@std@@PEAV12@@std@@YAPEAV_Facet_base@0@AEAPEAV10@$$QEAPEAV10@@Z" = comdat any

$"?_Get_first@?$_Compressed_pair@U?$default_delete@V_Facet_base@std@@@std@@PEAV_Facet_base@2@$00@std@@QEAAAEAU?$default_delete@V_Facet_base@std@@@2@XZ" = comdat any

$"??R?$default_delete@V_Facet_base@std@@@std@@QEBAXPEAV_Facet_base@1@@Z" = comdat any

$"??0locale@std@@QEAA@AEBV01@@Z" = comdat any

$"?clear@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z" = comdat any

$"?clear@ios_base@std@@QEAAXH_N@Z" = comdat any

$"?make_error_code@std@@YA?AVerror_code@1@W4io_errc@1@@Z" = comdat any

$"??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z" = comdat any

$"??0failure@ios_base@std@@QEAA@AEBV012@@Z" = comdat any

$"??0system_error@std@@QEAA@AEBV01@@Z" = comdat any

$"??0_System_error@std@@QEAA@AEBV01@@Z" = comdat any

$"??0runtime_error@std@@QEAA@AEBV01@@Z" = comdat any

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

$"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z" = comdat any

$"??$_Reallocate_grow_by@V<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD_K@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??append@01@QEAAAEAV01@QEBD0@Z@PEBD_K@Z" = comdat any

$"??R<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD0101@Z" = comdat any

$"??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z" = comdat any

$"?select_on_container_copy_construction@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA?AV?$allocator@D@2@AEBV32@@Z" = comdat any

$"?_Construct_lv_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z" = comdat any

$"??0exception@std@@QEAA@QEBD@Z" = comdat any

$"??_Gruntime_error@std@@UEAAPEAXI@Z" = comdat any

$"??1runtime_error@std@@UEAA@XZ" = comdat any

$"??1_System_error@std@@UEAA@XZ" = comdat any

$"??1system_error@std@@UEAA@XZ" = comdat any

$"?_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAXXZ" = comdat any

$"?sputn@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAA_JPEBD_J@Z" = comdat any

$"?put@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@D@Z" = comdat any

$"?widen@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBADD@Z" = comdat any

$"?widen@?$ctype@D@std@@QEBADD@Z" = comdat any

$"??_C@_01CLKCMJKC@?5?$AA@" = comdat any

$"?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A" = comdat any

$"?id@?$numpunct@D@std@@2V0locale@2@A" = comdat any

$"?_Psave@?$_Facetptr@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@2PEBVfacet@locale@2@EB" = comdat any

$"??_C@_00CNPNBAHC@?$AA@" = comdat any

$"??_C@_0BA@ELKIONDK@bad?5locale?5name?$AA@" = comdat any

$"??_7?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@6B@" = comdat largest

$"??_R4?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@6B@" = comdat any

$"??_R0?AV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@8" = comdat any

$"??_R3?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8" = comdat any

$"??_R2?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8" = comdat any

$"??_R1A@?0A@EA@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8" = comdat any

$"??_R1A@?0A@EA@facet@locale@std@@8" = comdat any

$"??_R0?AVfacet@locale@std@@@8" = comdat any

$"??_R3facet@locale@std@@8" = comdat any

$"??_R2facet@locale@std@@8" = comdat any

$"??_R1A@?0A@EA@_Facet_base@std@@8" = comdat any

$"??_R0?AV_Facet_base@std@@@8" = comdat any

$"??_R3_Facet_base@std@@8" = comdat any

$"??_R2_Facet_base@std@@8" = comdat any

$"??_R17?0A@EA@_Crt_new_delete@std@@8" = comdat any

$"??_R0?AU_Crt_new_delete@std@@@8" = comdat any

$"??_R3_Crt_new_delete@std@@8" = comdat any

$"??_R2_Crt_new_delete@std@@8" = comdat any

$"??_R1A@?0A@EA@_Crt_new_delete@std@@8" = comdat any

$"??_7facet@locale@std@@6B@" = comdat largest

$"??_R4facet@locale@std@@6B@" = comdat any

$"??_7_Facet_base@std@@6B@" = comdat largest

$"??_R4_Facet_base@std@@6B@" = comdat any

$"??_C@_02BBAHNLBA@?$CFp?$AA@" = comdat any

$"?_Psave@?$_Facetptr@V?$ctype@D@std@@@std@@2PEBVfacet@locale@2@EB" = comdat any

$"??_7?$ctype@D@std@@6B@" = comdat largest

$"??_R4?$ctype@D@std@@6B@" = comdat any

$"??_R0?AV?$ctype@D@std@@@8" = comdat any

$"??_R3?$ctype@D@std@@8" = comdat any

$"??_R2?$ctype@D@std@@8" = comdat any

$"??_R1A@?0A@EA@?$ctype@D@std@@8" = comdat any

$"??_R1A@?0A@EA@ctype_base@std@@8" = comdat any

$"??_R0?AUctype_base@std@@@8" = comdat any

$"??_R3ctype_base@std@@8" = comdat any

$"??_R2ctype_base@std@@8" = comdat any

$"??_7ctype_base@std@@6B@" = comdat largest

$"??_R4ctype_base@std@@6B@" = comdat any

$"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@" = comdat any

$"??_R0?AVbad_array_new_length@std@@@8" = comdat any

$"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24" = comdat any

$"??_R0?AVbad_alloc@std@@@8" = comdat any

$"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24" = comdat any

$"??_R0?AVexception@std@@@8" = comdat any

$"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" = comdat any

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

$"?_Psave@?$_Facetptr@V?$numpunct@D@std@@@std@@2PEBVfacet@locale@2@EB" = comdat any

$"??_7?$numpunct@D@std@@6B@" = comdat largest

$"??_R4?$numpunct@D@std@@6B@" = comdat any

$"??_R0?AV?$numpunct@D@std@@@8" = comdat any

$"??_R3?$numpunct@D@std@@8" = comdat any

$"??_R2?$numpunct@D@std@@8" = comdat any

$"??_R1A@?0A@EA@?$numpunct@D@std@@8" = comdat any

$"??_C@_05LAPONLG@false?$AA@" = comdat any

$"??_C@_04LOAJBDKD@true?$AA@" = comdat any

$"??_C@_0BI@CFPLBAOH@invalid?5string?5position?$AA@" = comdat any

$"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA" = comdat any

$"??_C@_02MDKMJEGG@eE?$AA@" = comdat any

$"??_C@_02OOPEBDOJ@pP?$AA@" = comdat any

$"??_C@_02CLHGNPPK@Lu?$AA@" = comdat any

$"??_C@_02HIKPPMOK@Ld?$AA@" = comdat any

$"??_C@_02BDDLJJBK@lu?$AA@" = comdat any

$"??_C@_02EAOCLKAK@ld?$AA@" = comdat any

$"??_R0?AVbad_cast@std@@@8" = comdat any

$"_CT??_R0?AVbad_cast@std@@@8??0bad_cast@std@@QEAA@AEBV01@@Z24" = comdat any

$"_CTA2?AVbad_cast@std@@" = comdat any

$"_TI2?AVbad_cast@std@@" = comdat any

$"??_C@_08EPJLHIJG@bad?5cast?$AA@" = comdat any

$"??_7bad_cast@std@@6B@" = comdat largest

$"??_R4bad_cast@std@@6B@" = comdat any

$"??_R3bad_cast@std@@8" = comdat any

$"??_R2bad_cast@std@@8" = comdat any

$"??_R1A@?0A@EA@bad_cast@std@@8" = comdat any

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

@"?cout@std@@3V?$basic_ostream@DU?$char_traits@D@std@@@1@A" = external dso_local global %"class.std::basic_ostream", align 8
@"??_C@_01CLKCMJKC@?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [2 x i8] c" \00", comdat, align 1
@"?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A" = linkonce_odr dso_local global %"class.std::locale::id" zeroinitializer, comdat, align 8
@"?id@?$numpunct@D@std@@2V0locale@2@A" = linkonce_odr dso_local global %"class.std::locale::id" zeroinitializer, comdat, align 8
@"?_Psave@?$_Facetptr@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@2PEBVfacet@locale@2@EB" = linkonce_odr dso_local global ptr null, comdat, align 8
@"?_Id_cnt@id@locale@std@@0HA" = external dso_local global i32, align 4
@"??_C@_00CNPNBAHC@?$AA@" = linkonce_odr dso_local unnamed_addr constant [1 x i8] zeroinitializer, comdat, align 1
@"??_C@_0BA@ELKIONDK@bad?5locale?5name?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"bad locale name\00", comdat, align 1
@0 = private unnamed_addr constant { [12 x ptr] } { [12 x ptr] [ptr @"??_R4?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@6B@", ptr @"??_G?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEAAPEAXI@Z", ptr @"?_Incref@facet@locale@std@@UEAAXXZ", ptr @"?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ", ptr @"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEBX@Z", ptr @"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DO@Z", ptr @"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DN@Z", ptr @"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_K@Z", ptr @"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_J@Z", ptr @"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DK@Z", ptr @"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DJ@Z", ptr @"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_N@Z"] }, comdat($"??_7?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@6B@")
@"??_R4?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R4?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@6B@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_7type_info@@6B@" = external constant ptr
@"??_R0?AV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@8" = linkonce_odr global %rtti.TypeDescriptor73 { ptr @"??_7type_info@@6B@", ptr null, [74 x i8] c".?AV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@\00" }, comdat
@__ImageBase = external dso_local constant i8
@"??_R3?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 1, i32 4, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R2?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R2?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8" = linkonce_odr constant [5 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@facet@locale@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@_Facet_base@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R17?0A@EA@_Crt_new_delete@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 3, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R1A@?0A@EA@facet@locale@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVfacet@locale@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 2, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3facet@locale@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R0?AVfacet@locale@std@@@8" = linkonce_odr global %rtti.TypeDescriptor22 { ptr @"??_7type_info@@6B@", ptr null, [23 x i8] c".?AVfacet@locale@std@@\00" }, comdat
@"??_R3facet@locale@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 1, i32 3, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R2facet@locale@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R2facet@locale@std@@8" = linkonce_odr constant [4 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@facet@locale@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@_Facet_base@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R17?0A@EA@_Crt_new_delete@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@_Facet_base@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AV_Facet_base@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3_Facet_base@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R0?AV_Facet_base@std@@@8" = linkonce_odr global %rtti.TypeDescriptor21 { ptr @"??_7type_info@@6B@", ptr null, [22 x i8] c".?AV_Facet_base@std@@\00" }, comdat
@"??_R3_Facet_base@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 1, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R2_Facet_base@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R2_Facet_base@std@@8" = linkonce_odr constant [2 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@_Facet_base@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R17?0A@EA@_Crt_new_delete@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AU_Crt_new_delete@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 8, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3_Crt_new_delete@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R0?AU_Crt_new_delete@std@@@8" = linkonce_odr global %rtti.TypeDescriptor25 { ptr @"??_7type_info@@6B@", ptr null, [26 x i8] c".?AU_Crt_new_delete@std@@\00" }, comdat
@"??_R3_Crt_new_delete@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 1, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R2_Crt_new_delete@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R2_Crt_new_delete@std@@8" = linkonce_odr constant [2 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@_Crt_new_delete@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@_Crt_new_delete@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AU_Crt_new_delete@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3_Crt_new_delete@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@1 = private unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr @"??_R4facet@locale@std@@6B@", ptr @"??_Gfacet@locale@std@@MEAAPEAXI@Z", ptr @"?_Incref@facet@locale@std@@UEAAXXZ", ptr @"?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ"] }, comdat($"??_7facet@locale@std@@6B@")
@"??_R4facet@locale@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVfacet@locale@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3facet@locale@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R4facet@locale@std@@6B@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@2 = private unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr @"??_R4_Facet_base@std@@6B@", ptr @"??_G_Facet_base@std@@UEAAPEAXI@Z", ptr @_purecall, ptr @_purecall] }, comdat($"??_7_Facet_base@std@@6B@")
@"??_R4_Facet_base@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AV_Facet_base@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3_Facet_base@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R4_Facet_base@std@@6B@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_C@_02BBAHNLBA@?$CFp?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"%p\00", comdat, align 1
@"?_Psave@?$_Facetptr@V?$ctype@D@std@@@std@@2PEBVfacet@locale@2@EB" = linkonce_odr dso_local global ptr null, comdat, align 8
@"?id@?$ctype@D@std@@2V0locale@2@A" = external dso_local global %"class.std::locale::id", align 8
@3 = private unnamed_addr constant { [12 x ptr] } { [12 x ptr] [ptr @"??_R4?$ctype@D@std@@6B@", ptr @"??_G?$ctype@D@std@@MEAAPEAXI@Z", ptr @"?_Incref@facet@locale@std@@UEAAXXZ", ptr @"?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ", ptr @"?do_tolower@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z", ptr @"?do_tolower@?$ctype@D@std@@MEBADD@Z", ptr @"?do_toupper@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z", ptr @"?do_toupper@?$ctype@D@std@@MEBADD@Z", ptr @"?do_widen@?$ctype@D@std@@MEBAPEBDPEBD0PEAD@Z", ptr @"?do_widen@?$ctype@D@std@@MEBADD@Z", ptr @"?do_narrow@?$ctype@D@std@@MEBAPEBDPEBD0DPEAD@Z", ptr @"?do_narrow@?$ctype@D@std@@MEBADDD@Z"] }, comdat($"??_7?$ctype@D@std@@6B@")
@"??_R4?$ctype@D@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AV?$ctype@D@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3?$ctype@D@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R4?$ctype@D@std@@6B@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R0?AV?$ctype@D@std@@@8" = linkonce_odr global %rtti.TypeDescriptor19 { ptr @"??_7type_info@@6B@", ptr null, [20 x i8] c".?AV?$ctype@D@std@@\00" }, comdat
@"??_R3?$ctype@D@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 1, i32 5, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R2?$ctype@D@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R2?$ctype@D@std@@8" = linkonce_odr constant [6 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@?$ctype@D@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@ctype_base@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@facet@locale@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@_Facet_base@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R17?0A@EA@_Crt_new_delete@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@?$ctype@D@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AV?$ctype@D@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 4, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3?$ctype@D@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R1A@?0A@EA@ctype_base@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AUctype_base@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 3, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3ctype_base@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R0?AUctype_base@std@@@8" = linkonce_odr global %rtti.TypeDescriptor20 { ptr @"??_7type_info@@6B@", ptr null, [21 x i8] c".?AUctype_base@std@@\00" }, comdat
@"??_R3ctype_base@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 1, i32 4, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R2ctype_base@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R2ctype_base@std@@8" = linkonce_odr constant [5 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@ctype_base@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@facet@locale@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@_Facet_base@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R17?0A@EA@_Crt_new_delete@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0], comdat
@4 = private unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr @"??_R4ctype_base@std@@6B@", ptr @"??_Gctype_base@std@@UEAAPEAXI@Z", ptr @"?_Incref@facet@locale@std@@UEAAXXZ", ptr @"?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ"] }, comdat($"??_7ctype_base@std@@6B@")
@"??_R4ctype_base@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AUctype_base@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3ctype_base@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R4ctype_base@std@@6B@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@" = linkonce_odr dso_local unnamed_addr constant [16 x i8] c"string too long\00", comdat, align 1
@"??_R0?AVbad_array_new_length@std@@@8" = linkonce_odr global %rtti.TypeDescriptor30 { ptr @"??_7type_info@@6B@", ptr null, [31 x i8] c".?AVbad_array_new_length@std@@\00" }, comdat
@"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVbad_array_new_length@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0bad_array_new_length@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AVbad_alloc@std@@@8" = linkonce_odr global %rtti.TypeDescriptor19 { ptr @"??_7type_info@@6B@", ptr null, [20 x i8] c".?AVbad_alloc@std@@\00" }, comdat
@"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 16, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVbad_alloc@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0bad_alloc@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AVexception@std@@@8" = linkonce_odr global %rtti.TypeDescriptor19 { ptr @"??_7type_info@@6B@", ptr null, [20 x i8] c".?AVexception@std@@\00" }, comdat
@"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVexception@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0exception@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"_CTA3?AVbad_array_new_length@std@@" = linkonce_odr unnamed_addr constant %eh.CatchableTypeArray.3 { i32 3, [3 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVbad_array_new_length@std@@@8??0bad_array_new_length@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVbad_alloc@std@@@8??0bad_alloc@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32)] }, section ".xdata", comdat
@"_TI3?AVbad_array_new_length@std@@" = linkonce_odr unnamed_addr constant %eh.ThrowInfo { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??1bad_array_new_length@std@@UEAA@XZ" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CTA3?AVbad_array_new_length@std@@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"bad array new length\00", comdat, align 1
@5 = private unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr @"??_R4bad_array_new_length@std@@6B@", ptr @"??_Gbad_array_new_length@std@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat($"??_7bad_array_new_length@std@@6B@")
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
@6 = private unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr @"??_R4bad_alloc@std@@6B@", ptr @"??_Gbad_alloc@std@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat($"??_7bad_alloc@std@@6B@")
@"??_R4bad_alloc@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVbad_alloc@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3bad_alloc@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R4bad_alloc@std@@6B@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@7 = private unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr @"??_R4exception@std@@6B@", ptr @"??_Gexception@std@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat($"??_7exception@std@@6B@")
@"??_R4exception@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVexception@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3exception@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R4exception@std@@6B@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_C@_0BC@EOODALEL@Unknown?5exception?$AA@" = linkonce_odr dso_local unnamed_addr constant [18 x i8] c"Unknown exception\00", comdat, align 1
@"?_Psave@?$_Facetptr@V?$numpunct@D@std@@@std@@2PEBVfacet@locale@2@EB" = linkonce_odr dso_local global ptr null, comdat, align 8
@8 = private unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr @"??_R4?$numpunct@D@std@@6B@", ptr @"??_G?$numpunct@D@std@@MEAAPEAXI@Z", ptr @"?_Incref@facet@locale@std@@UEAAXXZ", ptr @"?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ", ptr @"?do_decimal_point@?$numpunct@D@std@@MEBADXZ", ptr @"?do_thousands_sep@?$numpunct@D@std@@MEBADXZ", ptr @"?do_grouping@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ", ptr @"?do_falsename@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ", ptr @"?do_truename@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"] }, comdat($"??_7?$numpunct@D@std@@6B@")
@"??_R4?$numpunct@D@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AV?$numpunct@D@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3?$numpunct@D@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R4?$numpunct@D@std@@6B@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R0?AV?$numpunct@D@std@@@8" = linkonce_odr global %rtti.TypeDescriptor22 { ptr @"??_7type_info@@6B@", ptr null, [23 x i8] c".?AV?$numpunct@D@std@@\00" }, comdat
@"??_R3?$numpunct@D@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 1, i32 4, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R2?$numpunct@D@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R2?$numpunct@D@std@@8" = linkonce_odr constant [5 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@?$numpunct@D@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@facet@locale@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@_Facet_base@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R17?0A@EA@_Crt_new_delete@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@?$numpunct@D@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AV?$numpunct@D@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 3, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3?$numpunct@D@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_C@_05LAPONLG@false?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"false\00", comdat, align 1
@"??_C@_04LOAJBDKD@true?$AA@" = linkonce_odr dso_local unnamed_addr constant [5 x i8] c"true\00", comdat, align 1
@"??_C@_0BI@CFPLBAOH@invalid?5string?5position?$AA@" = linkonce_odr dso_local unnamed_addr constant [24 x i8] c"invalid string position\00", comdat, align 1
@"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA" = linkonce_odr dso_local global i64 0, comdat, align 8
@"??_C@_02MDKMJEGG@eE?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"eE\00", comdat, align 1
@"??_C@_02OOPEBDOJ@pP?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"pP\00", comdat, align 1
@"__const.?_Fput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEBD_K@Z._Dp" = private unnamed_addr constant [2 x i8] c".\00", align 1
@"??_C@_02CLHGNPPK@Lu?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"Lu\00", comdat, align 1
@"??_C@_02HIKPPMOK@Ld?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"Ld\00", comdat, align 1
@"??_C@_02BDDLJJBK@lu?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"lu\00", comdat, align 1
@"??_C@_02EAOCLKAK@ld?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"ld\00", comdat, align 1
@"??_R0?AVbad_cast@std@@@8" = linkonce_odr global %rtti.TypeDescriptor18 { ptr @"??_7type_info@@6B@", ptr null, [19 x i8] c".?AVbad_cast@std@@\00" }, comdat
@"_CT??_R0?AVbad_cast@std@@@8??0bad_cast@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVbad_cast@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0bad_cast@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"_CTA2?AVbad_cast@std@@" = linkonce_odr unnamed_addr constant %eh.CatchableTypeArray.2 { i32 2, [2 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVbad_cast@std@@@8??0bad_cast@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32)] }, section ".xdata", comdat
@"_TI2?AVbad_cast@std@@" = linkonce_odr unnamed_addr constant %eh.ThrowInfo { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??1bad_cast@std@@UEAA@XZ" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CTA2?AVbad_cast@std@@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_C@_08EPJLHIJG@bad?5cast?$AA@" = linkonce_odr dso_local unnamed_addr constant [9 x i8] c"bad cast\00", comdat, align 1
@9 = private unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr @"??_R4bad_cast@std@@6B@", ptr @"??_Gbad_cast@std@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat($"??_7bad_cast@std@@6B@")
@"??_R4bad_cast@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVbad_cast@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3bad_cast@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R4bad_cast@std@@6B@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R3bad_cast@std@@8" = linkonce_odr constant %rtti.ClassHierarchyDescriptor { i32 0, i32 0, i32 2, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R2bad_cast@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_R2bad_cast@std@@8" = linkonce_odr constant [3 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@bad_cast@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R1A@?0A@EA@exception@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0], comdat
@"??_R1A@?0A@EA@bad_cast@std@@8" = linkonce_odr constant %rtti.BaseClassDescriptor { i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVbad_cast@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 1, i32 0, i32 -1, i32 0, i32 64, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3bad_cast@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_C@_0BF@PHHKMMFD@ios_base?3?3badbit?5set?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"ios_base::badbit set\00", comdat, align 1
@"??_C@_0BG@FMKFHCIL@ios_base?3?3failbit?5set?$AA@" = linkonce_odr dso_local unnamed_addr constant [22 x i8] c"ios_base::failbit set\00", comdat, align 1
@"??_C@_0BF@OOHOMBOF@ios_base?3?3eofbit?5set?$AA@" = linkonce_odr dso_local unnamed_addr constant [21 x i8] c"ios_base::eofbit set\00", comdat, align 1
@"??_R0?AVfailure@ios_base@std@@@8" = linkonce_odr global %rtti.TypeDescriptor26 { ptr @"??_7type_info@@6B@", ptr null, [27 x i8] c".?AVfailure@ios_base@std@@\00" }, comdat
@"_CT??_R0?AVfailure@ios_base@std@@@8??0failure@ios_base@std@@QEAA@AEBV012@@Z40" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVfailure@ios_base@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 40, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0failure@ios_base@std@@QEAA@AEBV012@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AVsystem_error@std@@@8" = linkonce_odr global %rtti.TypeDescriptor22 { ptr @"??_7type_info@@6B@", ptr null, [23 x i8] c".?AVsystem_error@std@@\00" }, comdat
@"_CT??_R0?AVsystem_error@std@@@8??0system_error@std@@QEAA@AEBV01@@Z40" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVsystem_error@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 40, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0system_error@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AV_System_error@std@@@8" = linkonce_odr global %rtti.TypeDescriptor23 { ptr @"??_7type_info@@6B@", ptr null, [24 x i8] c".?AV_System_error@std@@\00" }, comdat
@"_CT??_R0?AV_System_error@std@@@8??0_System_error@std@@QEAA@AEBV01@@Z40" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AV_System_error@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 40, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0_System_error@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"??_R0?AVruntime_error@std@@@8" = linkonce_odr global %rtti.TypeDescriptor23 { ptr @"??_7type_info@@6B@", ptr null, [24 x i8] c".?AVruntime_error@std@@\00" }, comdat
@"_CT??_R0?AVruntime_error@std@@@8??0runtime_error@std@@QEAA@AEBV01@@Z24" = linkonce_odr unnamed_addr constant %eh.CatchableType { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVruntime_error@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 -1, i32 0, i32 24, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??0runtime_error@std@@QEAA@AEBV01@@Z" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"_CTA5?AVfailure@ios_base@std@@" = linkonce_odr unnamed_addr constant %eh.CatchableTypeArray.5 { i32 5, [5 x i32] [i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVfailure@ios_base@std@@@8??0failure@ios_base@std@@QEAA@AEBV012@@Z40" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVsystem_error@std@@@8??0system_error@std@@QEAA@AEBV01@@Z40" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AV_System_error@std@@@8??0_System_error@std@@QEAA@AEBV01@@Z40" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVruntime_error@std@@@8??0runtime_error@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CT??_R0?AVexception@std@@@8??0exception@std@@QEAA@AEBV01@@Z24" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32)] }, section ".xdata", comdat
@"_TI5?AVfailure@ios_base@std@@" = linkonce_odr unnamed_addr constant %eh.ThrowInfo { i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??1failure@ios_base@std@@UEAA@XZ" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"_CTA5?AVfailure@ios_base@std@@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, section ".xdata", comdat
@"?_Static@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4V21@A" = linkonce_odr dso_local global { ptr, i64 } { ptr @"??_7_Iostream_error_category2@std@@6B@", i64 5 }, comdat, align 8
@10 = private unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr @"??_R4_Iostream_error_category2@std@@6B@", ptr @"??_G_Iostream_error_category2@std@@UEAAPEAXI@Z", ptr @"?name@_Iostream_error_category2@std@@UEBAPEBDXZ", ptr @"?message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@H@Z", ptr @"?default_error_condition@error_category@std@@UEBA?AVerror_condition@2@H@Z", ptr @"?equivalent@error_category@std@@UEBA_NAEBVerror_code@2@H@Z", ptr @"?equivalent@error_category@std@@UEBA_NHAEBVerror_condition@2@@Z"] }, comdat($"??_7_Iostream_error_category2@std@@6B@")
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
@11 = private unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr @"??_R4failure@ios_base@std@@6B@", ptr @"??_Gfailure@ios_base@std@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat($"??_7failure@ios_base@std@@6B@")
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
@12 = private unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr @"??_R4system_error@std@@6B@", ptr @"??_Gsystem_error@std@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat($"??_7system_error@std@@6B@")
@"??_R4system_error@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVsystem_error@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3system_error@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R4system_error@std@@6B@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@13 = private unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr @"??_R4_System_error@std@@6B@", ptr @"??_G_System_error@std@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat($"??_7_System_error@std@@6B@")
@"??_R4_System_error@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AV_System_error@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3_System_error@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R4_System_error@std@@6B@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@"??_C@_02LMMGGCAJ@?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c": \00", comdat, align 1
@14 = private unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr @"??_R4runtime_error@std@@6B@", ptr @"??_Gruntime_error@std@@UEAAPEAXI@Z", ptr @"?what@exception@std@@UEBAPEBDXZ"] }, comdat($"??_7runtime_error@std@@6B@")
@"??_R4runtime_error@std@@6B@" = linkonce_odr constant %rtti.CompleteObjectLocator { i32 1, i32 0, i32 0, i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R0?AVruntime_error@std@@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R3runtime_error@std@@8" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32), i32 trunc (i64 sub nuw nsw (i64 ptrtoint (ptr @"??_R4runtime_error@std@@6B@" to i64), i64 ptrtoint (ptr @__ImageBase to i64)) to i32) }, comdat
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @"??__E?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A@@YAXXZ", ptr @"?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A" }, { i32, ptr, ptr } { i32 65535, ptr @"??__E?id@?$numpunct@D@std@@2V0locale@2@A@@YAXXZ", ptr @"?id@?$numpunct@D@std@@2V0locale@2@A" }]
@llvm.used = appending global [2 x ptr] [ptr @"?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A", ptr @"?id@?$numpunct@D@std@@2V0locale@2@A"], section "llvm.metadata"

@"??_7?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@6B@" = unnamed_addr alias ptr, getelementptr inbounds ({ [12 x ptr] }, ptr @0, i32 0, i32 0, i32 1)
@"??_7facet@locale@std@@6B@" = unnamed_addr alias ptr, getelementptr inbounds ({ [4 x ptr] }, ptr @1, i32 0, i32 0, i32 1)
@"??_7_Facet_base@std@@6B@" = unnamed_addr alias ptr, getelementptr inbounds ({ [4 x ptr] }, ptr @2, i32 0, i32 0, i32 1)
@"??_7?$ctype@D@std@@6B@" = unnamed_addr alias ptr, getelementptr inbounds ({ [12 x ptr] }, ptr @3, i32 0, i32 0, i32 1)
@"??_7ctype_base@std@@6B@" = unnamed_addr alias ptr, getelementptr inbounds ({ [4 x ptr] }, ptr @4, i32 0, i32 0, i32 1)
@"??_7bad_array_new_length@std@@6B@" = unnamed_addr alias ptr, getelementptr inbounds ({ [3 x ptr] }, ptr @5, i32 0, i32 0, i32 1)
@"??_7bad_alloc@std@@6B@" = unnamed_addr alias ptr, getelementptr inbounds ({ [3 x ptr] }, ptr @6, i32 0, i32 0, i32 1)
@"??_7exception@std@@6B@" = unnamed_addr alias ptr, getelementptr inbounds ({ [3 x ptr] }, ptr @7, i32 0, i32 0, i32 1)
@"??_7?$numpunct@D@std@@6B@" = unnamed_addr alias ptr, getelementptr inbounds ({ [9 x ptr] }, ptr @8, i32 0, i32 0, i32 1)
@"??_7bad_cast@std@@6B@" = unnamed_addr alias ptr, getelementptr inbounds ({ [3 x ptr] }, ptr @9, i32 0, i32 0, i32 1)
@"??_7_Iostream_error_category2@std@@6B@" = unnamed_addr alias ptr, getelementptr inbounds ({ [7 x ptr] }, ptr @10, i32 0, i32 0, i32 1)
@"??_7failure@ios_base@std@@6B@" = unnamed_addr alias ptr, getelementptr inbounds ({ [3 x ptr] }, ptr @11, i32 0, i32 0, i32 1)
@"??_7system_error@std@@6B@" = unnamed_addr alias ptr, getelementptr inbounds ({ [3 x ptr] }, ptr @12, i32 0, i32 0, i32 1)
@"??_7_System_error@std@@6B@" = unnamed_addr alias ptr, getelementptr inbounds ({ [3 x ptr] }, ptr @13, i32 0, i32 0, i32 1)
@"??_7runtime_error@std@@6B@" = unnamed_addr alias ptr, getelementptr inbounds ({ [3 x ptr] }, ptr @14, i32 0, i32 0, i32 1)

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @"?swap@@YAXPEAH0@Z"(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %5, align 4
  %8 = load ptr, ptr %3, align 8
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr %4, align 8
  store i32 %9, ptr %10, align 4
  %11 = load i32, ptr %5, align 4
  %12 = load ptr, ptr %3, align 8
  store i32 %11, ptr %12, align 4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @"?partition@@YAHQEAHHH@Z"(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %2, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store ptr %0, ptr %6, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load i32, ptr %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, ptr %10, i64 %12
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %7, align 4
  %15 = load i32, ptr %5, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, ptr %8, align 4
  %17 = load i32, ptr %5, align 4
  store i32 %17, ptr %9, align 4
  br label %18

18:                                               ; preds = %43, %3
  %19 = load i32, ptr %9, align 4
  %20 = load i32, ptr %4, align 4
  %21 = sub nsw i32 %20, 1
  %22 = icmp sle i32 %19, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %18
  %24 = load ptr, ptr %6, align 8
  %25 = load i32, ptr %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %24, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %23
  %32 = load i32, ptr %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %8, align 4
  %34 = load ptr, ptr %6, align 8
  %35 = load i32, ptr %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, ptr %34, i64 %36
  %38 = load ptr, ptr %6, align 8
  %39 = load i32, ptr %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, ptr %38, i64 %40
  call void @"?swap@@YAXPEAH0@Z"(ptr noundef %41, ptr noundef %37)
  br label %42

42:                                               ; preds = %31, %23
  br label %43

43:                                               ; preds = %42
  %44 = load i32, ptr %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %9, align 4
  br label %18, !llvm.loop !9

46:                                               ; preds = %18
  %47 = load ptr, ptr %6, align 8
  %48 = load i32, ptr %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, ptr %47, i64 %49
  %51 = load ptr, ptr %6, align 8
  %52 = load i32, ptr %8, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %51, i64 %54
  call void @"?swap@@YAXPEAH0@Z"(ptr noundef %55, ptr noundef %50)
  %56 = load i32, ptr %8, align 4
  %57 = add nsw i32 %56, 1
  ret i32 %57
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @"?quickSort@@YAXQEAHHH@Z"(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store i32 %2, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store ptr %0, ptr %6, align 8
  %8 = load i32, ptr %5, align 4
  %9 = load i32, ptr %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %3
  %12 = load i32, ptr %4, align 4
  %13 = load i32, ptr %5, align 4
  %14 = load ptr, ptr %6, align 8
  %15 = call noundef i32 @"?partition@@YAHQEAHHH@Z"(ptr noundef %14, i32 noundef %13, i32 noundef %12)
  store i32 %15, ptr %7, align 4
  %16 = load i32, ptr %7, align 4
  %17 = sub nsw i32 %16, 1
  %18 = load i32, ptr %5, align 4
  %19 = load ptr, ptr %6, align 8
  call void @"?quickSort@@YAXQEAHHH@Z"(ptr noundef %19, i32 noundef %18, i32 noundef %17)
  %20 = load i32, ptr %4, align 4
  %21 = load i32, ptr %7, align 4
  %22 = add nsw i32 %21, 1
  %23 = load ptr, ptr %6, align 8
  call void @"?quickSort@@YAXQEAHHH@Z"(ptr noundef %23, i32 noundef %22, i32 noundef %20)
  br label %24

24:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @"?printArray@@YAXQEAHH@Z"(ptr noundef %0, i32 noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  store ptr %0, ptr %4, align 8
  store i32 0, ptr %5, align 4
  br label %6

6:                                                ; preds = %18, %2
  %7 = load i32, ptr %5, align 4
  %8 = load i32, ptr %3, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load ptr, ptr %4, align 8
  %12 = load i32, ptr %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, ptr %11, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = call noundef nonnull align 8 dereferenceable(8) ptr @"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@H@Z"(ptr noundef nonnull align 8 dereferenceable(8) @"?cout@std@@3V?$basic_ostream@DU?$char_traits@D@std@@@1@A", i32 noundef %15)
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef @"??_C@_01CLKCMJKC@?5?$AA@")
  br label %18

18:                                               ; preds = %10
  %19 = load i32, ptr %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %5, align 4
  br label %6, !llvm.loop !11

21:                                               ; preds = %6
  %22 = call noundef nonnull align 8 dereferenceable(8) ptr @"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@P6AAEAV01@AEAV01@@Z@Z"(ptr noundef nonnull align 8 dereferenceable(8) @"?cout@std@@3V?$basic_ostream@DU?$char_traits@D@std@@@1@A", ptr noundef @"??$endl@DU?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@@Z")
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @"??$?6U?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@PEBD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #1 comdat personality ptr @__CxxFrameHandler3 {
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
  %14 = call noundef i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(ptr noundef %13) #18
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
  %54 = call noundef zeroext i1 @"??Bsentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(16) %8)
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, ptr %5, align 4
  %57 = or i32 %56, 4
  store i32 %57, ptr %5, align 4
  br label %190

58:                                               ; preds = %50
  %59 = load ptr, ptr %4, align 8
  %60 = getelementptr inbounds i8, ptr %59, i64 0
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds i32, ptr %61, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 0, %64
  %66 = getelementptr inbounds i8, ptr %59, i64 %65
  %67 = call noundef i32 @"?flags@ios_base@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(72) %66)
  %68 = and i32 %67, 448
  %69 = icmp ne i32 %68, 64
  br i1 %69, label %70, label %105

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %101, %70
  %72 = load i64, ptr %7, align 8
  %73 = icmp slt i64 0, %72
  br i1 %73, label %74, label %104

74:                                               ; preds = %71
  %75 = load ptr, ptr %4, align 8
  %76 = getelementptr inbounds i8, ptr %75, i64 0
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds i32, ptr %77, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 0, %80
  %82 = getelementptr inbounds i8, ptr %75, i64 %81
  %83 = call noundef ptr @"?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(96) %82)
  %84 = load ptr, ptr %4, align 8
  %85 = getelementptr inbounds i8, ptr %84, i64 0
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds i32, ptr %86, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 0, %89
  %91 = getelementptr inbounds i8, ptr %84, i64 %90
  %92 = call noundef i8 @"?fill@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBADXZ"(ptr noundef nonnull align 8 dereferenceable(96) %91)
  %93 = invoke noundef i32 @"?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHD@Z"(ptr noundef nonnull align 8 dereferenceable(104) %83, i8 noundef %92)
          to label %94 unwind label %154

94:                                               ; preds = %74
  store i32 %93, ptr %9, align 4
  %95 = call noundef i32 @"?eof@?$_Narrow_char_traits@DH@std@@SAHXZ"() #18
  store i32 %95, ptr %10, align 4
  %96 = call noundef zeroext i1 @"?eq_int_type@?$_Narrow_char_traits@DH@std@@SA_NAEBH0@Z"(ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull align 4 dereferenceable(4) %9) #18
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, ptr %5, align 4
  %99 = or i32 %98, 4
  store i32 %99, ptr %5, align 4
  br label %104

100:                                              ; preds = %94
  br label %101

101:                                              ; preds = %100
  %102 = load i64, ptr %7, align 8
  %103 = add nsw i64 %102, -1
  store i64 %103, ptr %7, align 8
  br label %71, !llvm.loop !12

104:                                              ; preds = %97, %71
  br label %105

105:                                              ; preds = %104, %58
  %106 = load i32, ptr %5, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %127

108:                                              ; preds = %105
  %109 = load ptr, ptr %4, align 8
  %110 = getelementptr inbounds i8, ptr %109, i64 0
  %111 = load ptr, ptr %110, align 8
  %112 = getelementptr inbounds i32, ptr %111, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 0, %114
  %116 = getelementptr inbounds i8, ptr %109, i64 %115
  %117 = call noundef ptr @"?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(96) %116)
  %118 = load i64, ptr %6, align 8
  %119 = load ptr, ptr %3, align 8
  %120 = invoke noundef i64 @"?sputn@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAA_JPEBD_J@Z"(ptr noundef nonnull align 8 dereferenceable(104) %117, ptr noundef %119, i64 noundef %118)
          to label %121 unwind label %154

121:                                              ; preds = %108
  %122 = load i64, ptr %6, align 8
  %123 = icmp ne i64 %120, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, ptr %5, align 4
  %126 = or i32 %125, 4
  store i32 %126, ptr %5, align 4
  br label %127

127:                                              ; preds = %124, %121, %105
  %128 = load i32, ptr %5, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %180

130:                                              ; preds = %127
  br label %131

131:                                              ; preds = %176, %130
  %132 = load i64, ptr %7, align 8
  %133 = icmp slt i64 0, %132
  br i1 %133, label %134, label %179

134:                                              ; preds = %131
  %135 = load ptr, ptr %4, align 8
  %136 = getelementptr inbounds i8, ptr %135, i64 0
  %137 = load ptr, ptr %136, align 8
  %138 = getelementptr inbounds i32, ptr %137, i32 1
  %139 = load i32, ptr %138, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 0, %140
  %142 = getelementptr inbounds i8, ptr %135, i64 %141
  %143 = call noundef ptr @"?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(96) %142)
  %144 = load ptr, ptr %4, align 8
  %145 = getelementptr inbounds i8, ptr %144, i64 0
  %146 = load ptr, ptr %145, align 8
  %147 = getelementptr inbounds i32, ptr %146, i32 1
  %148 = load i32, ptr %147, align 4
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 0, %149
  %151 = getelementptr inbounds i8, ptr %144, i64 %150
  %152 = call noundef i8 @"?fill@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBADXZ"(ptr noundef nonnull align 8 dereferenceable(96) %151)
  %153 = invoke noundef i32 @"?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHD@Z"(ptr noundef nonnull align 8 dereferenceable(104) %143, i8 noundef %152)
          to label %169 unwind label %154

154:                                              ; preds = %134, %108, %74
  %155 = catchswitch within none [label %156] unwind label %202

156:                                              ; preds = %154
  %157 = catchpad within %155 [ptr null, i32 64, ptr null]
  %158 = load ptr, ptr %4, align 8
  %159 = getelementptr inbounds i8, ptr %158, i64 0
  %160 = load ptr, ptr %159, align 8
  %161 = getelementptr inbounds i32, ptr %160, i32 1
  %162 = load i32, ptr %161, align 4
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 0, %163
  %165 = getelementptr inbounds i8, ptr %158, i64 %164
  invoke void @"?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z"(ptr noundef nonnull align 8 dereferenceable(96) %165, i32 noundef 4, i1 noundef zeroext true) [ "funclet"(token %157) ]
          to label %166 unwind label %202

166:                                              ; preds = %156
  catchret from %157 to label %167

167:                                              ; preds = %166
  br label %168

168:                                              ; preds = %167, %180
  br label %190

169:                                              ; preds = %134
  store i32 %153, ptr %11, align 4
  %170 = call noundef i32 @"?eof@?$_Narrow_char_traits@DH@std@@SAHXZ"() #18
  store i32 %170, ptr %12, align 4
  %171 = call noundef zeroext i1 @"?eq_int_type@?$_Narrow_char_traits@DH@std@@SA_NAEBH0@Z"(ptr noundef nonnull align 4 dereferenceable(4) %12, ptr noundef nonnull align 4 dereferenceable(4) %11) #18
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i32, ptr %5, align 4
  %174 = or i32 %173, 4
  store i32 %174, ptr %5, align 4
  br label %179

175:                                              ; preds = %169
  br label %176

176:                                              ; preds = %175
  %177 = load i64, ptr %7, align 8
  %178 = add nsw i64 %177, -1
  store i64 %178, ptr %7, align 8
  br label %131, !llvm.loop !13

179:                                              ; preds = %172, %131
  br label %180

180:                                              ; preds = %179, %127
  %181 = load ptr, ptr %4, align 8
  %182 = getelementptr inbounds i8, ptr %181, i64 0
  %183 = load ptr, ptr %182, align 8
  %184 = getelementptr inbounds i32, ptr %183, i32 1
  %185 = load i32, ptr %184, align 4
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 0, %186
  %188 = getelementptr inbounds i8, ptr %181, i64 %187
  %189 = call noundef i64 @"?width@ios_base@std@@QEAA_J_J@Z"(ptr noundef nonnull align 8 dereferenceable(72) %188, i64 noundef 0)
  br label %168

190:                                              ; preds = %168, %55
  %191 = load ptr, ptr %4, align 8
  %192 = getelementptr inbounds i8, ptr %191, i64 0
  %193 = load ptr, ptr %192, align 8
  %194 = getelementptr inbounds i32, ptr %193, i32 1
  %195 = load i32, ptr %194, align 4
  %196 = sext i32 %195 to i64
  %197 = add nsw i64 0, %196
  %198 = getelementptr inbounds i8, ptr %191, i64 %197
  %199 = load i32, ptr %5, align 4
  invoke void @"?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z"(ptr noundef nonnull align 8 dereferenceable(96) %198, i32 noundef %199, i1 noundef zeroext false)
          to label %200 unwind label %202

200:                                              ; preds = %190
  %201 = load ptr, ptr %4, align 8
  call void @"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %8) #18
  ret ptr %201

202:                                              ; preds = %190, %156, %154
  %203 = cleanuppad within none []
  call void @"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %8) #18 [ "funclet"(token %203) ]
  cleanupret from %203 unwind to caller
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@H@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) #1 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca %"class.std::basic_ostream<char>::sentry", align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"class.std::locale", align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %"class.std::ostreambuf_iterator", align 8
  %12 = alloca %"class.std::ostreambuf_iterator", align 8
  store i32 %1, ptr %3, align 4
  store ptr %0, ptr %4, align 8
  %13 = load ptr, ptr %4, align 8
  store i32 0, ptr %5, align 4
  %14 = call noundef ptr @"??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %13)
  %15 = invoke noundef zeroext i1 @"??Bsentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %16 unwind label %108

16:                                               ; preds = %2
  br i1 %15, label %17, label %98

17:                                               ; preds = %16
  %18 = getelementptr inbounds i8, ptr %13, i64 0
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds i32, ptr %19, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 0, %22
  %24 = getelementptr inbounds i8, ptr %13, i64 %23
  invoke void @"?getloc@ios_base@std@@QEBA?AVlocale@2@XZ"(ptr noundef nonnull align 8 dereferenceable(72) %24, ptr sret(%"class.std::locale") align 8 %8)
          to label %25 unwind label %108

25:                                               ; preds = %17
  %26 = invoke noundef nonnull align 8 dereferenceable(16) ptr @"??$use_facet@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@YAAEBV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@0@AEBVlocale@0@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %27 unwind label %45

27:                                               ; preds = %25
  call void @"??1locale@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %8) #18
  store ptr %26, ptr %7, align 8
  %28 = getelementptr inbounds i8, ptr %13, i64 0
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds i32, ptr %29, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 0, %32
  %34 = getelementptr inbounds i8, ptr %13, i64 %33
  %35 = invoke noundef i32 @"?flags@ios_base@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(72) %34)
          to label %36 unwind label %108

36:                                               ; preds = %27
  %37 = and i32 %35, 3584
  store i32 %37, ptr %9, align 4
  %38 = load i32, ptr %9, align 4
  %39 = icmp eq i32 %38, 1024
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr %9, align 4
  %42 = icmp eq i32 %41, 2048
  br i1 %42, label %43, label %47

43:                                               ; preds = %40, %36
  %44 = load i32, ptr %3, align 4
  store i32 %44, ptr %10, align 4
  br label %49

45:                                               ; preds = %25
  %46 = cleanuppad within none []
  call void @"??1locale@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %8) #18 [ "funclet"(token %46) ]
  cleanupret from %46 unwind label %108

47:                                               ; preds = %40
  %48 = load i32, ptr %3, align 4
  store i32 %48, ptr %10, align 4
  br label %49

49:                                               ; preds = %47, %43
  %50 = load ptr, ptr %7, align 8
  %51 = load i32, ptr %10, align 4
  %52 = getelementptr inbounds i8, ptr %13, i64 0
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds i32, ptr %53, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 0, %56
  %58 = getelementptr inbounds i8, ptr %13, i64 %57
  %59 = invoke noundef i8 @"?fill@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBADXZ"(ptr noundef nonnull align 8 dereferenceable(96) %58)
          to label %60 unwind label %78

60:                                               ; preds = %49
  %61 = getelementptr inbounds i8, ptr %13, i64 0
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds i32, ptr %62, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 0, %65
  %67 = getelementptr inbounds i8, ptr %13, i64 %66
  %68 = getelementptr inbounds i8, ptr %13, i64 0
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds i32, ptr %69, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 0, %72
  %74 = getelementptr inbounds i8, ptr %13, i64 %73
  %75 = invoke noundef ptr @"?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(96) %74)
          to label %76 unwind label %78

76:                                               ; preds = %60
  %77 = call noundef ptr @"??0?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@QEAA@PEAV?$basic_streambuf@DU?$char_traits@D@std@@@1@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef %75) #18
  invoke void @"?put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@QEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DJ@Z"(ptr noundef nonnull align 8 dereferenceable(16) %50, ptr sret(%"class.std::ostreambuf_iterator") align 8 %11, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(72) %67, i8 noundef %59, i32 noundef %51)
          to label %92 unwind label %78

78:                                               ; preds = %76, %60, %49
  %79 = catchswitch within none [label %80] unwind label %108

80:                                               ; preds = %78
  %81 = catchpad within %79 [ptr null, i32 64, ptr null]
  %82 = getelementptr inbounds i8, ptr %13, i64 0
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds i32, ptr %83, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 0, %86
  %88 = getelementptr inbounds i8, ptr %13, i64 %87
  invoke void @"?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z"(ptr noundef nonnull align 8 dereferenceable(96) %88, i32 noundef 4, i1 noundef zeroext true) [ "funclet"(token %81) ]
          to label %89 unwind label %108

89:                                               ; preds = %80
  catchret from %81 to label %90

90:                                               ; preds = %89
  br label %91

91:                                               ; preds = %90, %97
  br label %98

92:                                               ; preds = %76
  %93 = call noundef zeroext i1 @"?failed@?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(16) %11) #18
  br i1 %93, label %94, label %97

94:                                               ; preds = %92
  %95 = load i32, ptr %5, align 4
  %96 = or i32 %95, 4
  store i32 %96, ptr %5, align 4
  br label %97

97:                                               ; preds = %94, %92
  br label %91

98:                                               ; preds = %91, %16
  %99 = getelementptr inbounds i8, ptr %13, i64 0
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr inbounds i32, ptr %100, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 0, %103
  %105 = getelementptr inbounds i8, ptr %13, i64 %104
  %106 = load i32, ptr %5, align 4
  invoke void @"?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z"(ptr noundef nonnull align 8 dereferenceable(96) %105, i32 noundef %106, i1 noundef zeroext false)
          to label %107 unwind label %108

107:                                              ; preds = %98
  call void @"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
  ret ptr %13

108:                                              ; preds = %98, %80, %78, %27, %45, %17, %2
  %109 = cleanuppad within none []
  call void @"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %6) #18 [ "funclet"(token %109) ]
  cleanupret from %109 unwind to caller
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @"??6?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV01@P6AAEAV01@AEAV01@@Z@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %5)
  ret ptr %7
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @"??$endl@DU?$char_traits@D@std@@@std@@YAAEAV?$basic_ostream@DU?$char_traits@D@std@@@0@AEAV10@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0) #1 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds i8, ptr %4, i64 0
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds i32, ptr %6, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 0, %9
  %11 = getelementptr inbounds i8, ptr %4, i64 %10
  %12 = call noundef i8 @"?widen@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBADD@Z"(ptr noundef nonnull align 8 dereferenceable(96) %11, i8 noundef 10)
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @"?put@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@D@Z"(ptr noundef nonnull align 8 dereferenceable(8) %3, i8 noundef %12)
  %14 = load ptr, ptr %2, align 8
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @"?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %14)
  %16 = load ptr, ptr %2, align 8
  ret ptr %16
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @"??__E?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A@@YAXXZ"() #2 comdat {
  %1 = call noundef ptr @"??0id@locale@std@@QEAA@_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) @"?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A", i64 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0id@locale@std@@QEAA@_K@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, i64 noundef %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"class.std::locale::id", ptr %5, i32 0, i32 0
  %7 = load i64, ptr %3, align 8
  store i64 %7, ptr %6, align 8
  ret ptr %5
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @"??__E?id@?$numpunct@D@std@@2V0locale@2@A@@YAXXZ"() #2 comdat {
  %1 = call noundef ptr @"??0id@locale@std@@QEAA@_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) @"?id@?$numpunct@D@std@@2V0locale@2@A", i64 noundef 0)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z"(ptr noundef nonnull returned align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 personality ptr @__CxxFrameHandler3 {
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
  call void @"??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %7) #18 [ "funclet"(token %60) ]
  cleanupret from %60 unwind to caller
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"??Bsentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::basic_ostream<char>::sentry", ptr %3, i32 0, i32 1
  %5 = load i8, ptr %4, align 8
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

declare dso_local i32 @__CxxFrameHandler3(...)

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @"??$use_facet@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@YAAEBV?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@0@AEBVlocale@0@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0) #1 comdat personality ptr @__CxxFrameHandler3 {
  %2 = alloca ptr, align 8
  %3 = alloca %"class.std::_Lockit", align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"class.std::unique_ptr", align 8
  store ptr %0, ptr %2, align 8
  %9 = call noundef ptr @"??0_Lockit@std@@QEAA@H@Z"(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 0) #18
  %10 = load ptr, ptr @"?_Psave@?$_Facetptr@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@2PEBVfacet@locale@2@EB", align 8
  store ptr %10, ptr %4, align 8
  %11 = invoke noundef i64 @"??Bid@locale@std@@QEAA_KXZ"(ptr noundef nonnull align 8 dereferenceable(8) @"?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A")
          to label %12 unwind label %50

12:                                               ; preds = %1
  store i64 %11, ptr %5, align 8
  %13 = load ptr, ptr %2, align 8
  %14 = load i64, ptr %5, align 8
  %15 = invoke noundef ptr @"?_Getfacet@locale@std@@QEBAPEBVfacet@12@_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %13, i64 noundef %14)
          to label %16 unwind label %50

16:                                               ; preds = %12
  store ptr %15, ptr %6, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = icmp ne ptr %17, null
  br i1 %18, label %48, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %4, align 8
  %21 = icmp ne ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load ptr, ptr %4, align 8
  store ptr %23, ptr %6, align 8
  br label %47

24:                                               ; preds = %19
  %25 = load ptr, ptr %2, align 8
  %26 = invoke noundef i64 @"?_Getcat@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@SA_KPEAPEBVfacet@locale@2@PEBV42@@Z"(ptr noundef %4, ptr noundef %25)
          to label %27 unwind label %50

27:                                               ; preds = %24
  %28 = icmp eq i64 %26, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  invoke void @"?_Throw_bad_cast@std@@YAXXZ"() #19
          to label %30 unwind label %50

30:                                               ; preds = %29
  unreachable

31:                                               ; preds = %27
  %32 = load ptr, ptr %4, align 8
  store ptr %32, ptr %7, align 8
  %33 = load ptr, ptr %7, align 8
  %34 = call noundef ptr @"??$?0U?$default_delete@V_Facet_base@std@@@std@@$0A@@?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAA@PEAV_Facet_base@1@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %33) #18
  %35 = load ptr, ptr %7, align 8
  invoke void @"?_Facet_Register@std@@YAXPEAV_Facet_base@1@@Z"(ptr noundef %35)
          to label %36 unwind label %44

36:                                               ; preds = %31
  %37 = load ptr, ptr %7, align 8
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds ptr, ptr %38, i64 1
  %40 = load ptr, ptr %39, align 8
  call void %40(ptr noundef nonnull align 8 dereferenceable(16) %37) #18
  %41 = load ptr, ptr %4, align 8
  store ptr %41, ptr @"?_Psave@?$_Facetptr@V?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@@std@@2PEBVfacet@locale@2@EB", align 8
  %42 = load ptr, ptr %4, align 8
  store ptr %42, ptr %6, align 8
  %43 = call noundef ptr @"?release@?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAAPEAV_Facet_base@2@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %8) #18
  call void @"??1?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %8) #18
  br label %46

44:                                               ; preds = %31
  %45 = cleanuppad within none []
  call void @"??1?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %8) #18 [ "funclet"(token %45) ]
  cleanupret from %45 unwind label %50

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %22
  br label %48

48:                                               ; preds = %47, %16
  %49 = load ptr, ptr %6, align 8
  call void @"??1_Lockit@std@@QEAA@XZ"(ptr noundef nonnull align 4 dereferenceable(4) %3) #18
  ret ptr %49

50:                                               ; preds = %44, %29, %24, %12, %1
  %51 = cleanuppad within none []
  call void @"??1_Lockit@std@@QEAA@XZ"(ptr noundef nonnull align 4 dereferenceable(4) %3) #18 [ "funclet"(token %51) ]
  cleanupret from %51 unwind to caller
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?getloc@ios_base@std@@QEBA?AVlocale@2@XZ"(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noalias sret(%"class.std::locale") align 8 %1) #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"class.std::ios_base", ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = call noundef ptr @"??0locale@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %7) #18
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1locale@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::locale", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.std::locale", ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(16) %9) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %7
  %16 = load ptr, ptr %13, align 8
  %17 = getelementptr inbounds ptr, ptr %16, i64 0
  %18 = load ptr, ptr %17, align 8
  %19 = call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 1) #18
  br label %20

20:                                               ; preds = %15, %7
  br label %21

21:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @"?flags@ios_base@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(72) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::ios_base", ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  ret i32 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@QEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DJ@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias sret(%"class.std::ostreambuf_iterator") align 8 %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i8 noundef %4, i32 noundef %5) #1 comdat align 2 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %"class.std::ostreambuf_iterator", align 8
  store ptr %1, ptr %7, align 8
  store i32 %5, ptr %8, align 4
  store i8 %4, ptr %9, align 1
  store ptr %3, ptr %10, align 8
  store ptr %0, ptr %11, align 8
  %13 = load ptr, ptr %11, align 8
  %14 = load i32, ptr %8, align 4
  %15 = load i8, ptr %9, align 1
  %16 = load ptr, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %2, i64 16, i1 false)
  %17 = load ptr, ptr %13, align 8
  %18 = getelementptr inbounds ptr, ptr %17, i64 9
  %19 = load ptr, ptr %18, align 8
  call void %19(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr sret(%"class.std::ostreambuf_iterator") align 8 %1, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(72) %16, i8 noundef %15, i32 noundef %14)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8 @"?fill@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBADXZ"(ptr noundef nonnull align 8 dereferenceable(96) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::basic_ios", ptr %3, i32 0, i32 3
  %5 = load i8, ptr %4, align 8
  ret i8 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(96) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::basic_ios", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@QEAA@PEAV?$basic_streambuf@DU?$char_traits@D@std@@@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"class.std::ostreambuf_iterator", ptr %5, i32 0, i32 0
  store i8 0, ptr %6, align 8
  %7 = getelementptr inbounds %"class.std::ostreambuf_iterator", ptr %5, i32 0, i32 1
  %8 = load ptr, ptr %3, align 8
  store ptr %8, ptr %7, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"?failed@?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::ostreambuf_iterator", ptr %3, i32 0, i32 0
  %5 = load i8, ptr %4, align 8
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z"(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
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
define linkonce_odr dso_local void @"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = call noundef zeroext i1 @"?uncaught_exception@std@@YA_NXZ"() #18
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
  call void @"??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  ret void

15:                                               ; preds = %10
  %16 = cleanuppad within none []
  call void @__std_terminate() #20 [ "funclet"(token %16) ]
  unreachable
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 {
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
define linkonce_odr dso_local noundef zeroext i1 @"?good@ios_base@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(72) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef i32 @"?rdstate@ios_base@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(72) %3)
  %5 = icmp eq i32 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?tie@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_ostream@DU?$char_traits@D@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(96) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::basic_ios", ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @"?flush@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 personality ptr @__CxxFrameHandler3 {
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
  call void @"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  br label %37

35:                                               ; preds = %25, %20, %16
  %36 = cleanuppad within none []
  call void @"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %4) #18 [ "funclet"(token %36) ]
  cleanupret from %36 unwind to caller

37:                                               ; preds = %34, %1
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1_Sentry_base@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__CxxFrameHandler3 {
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
  call void @__std_terminate() #20 [ "funclet"(token %26) ]
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @"?rdstate@ios_base@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(72) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::ios_base", ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  ret i32 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i32 @"?pubsync@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHXZ"(ptr noundef nonnull align 8 dereferenceable(104) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds ptr, ptr %4, i64 13
  %6 = load ptr, ptr %5, align 8
  %7 = call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(104) %3)
  ret i32 %7
}

declare dso_local void @__std_terminate()

; Function Attrs: nounwind
declare dso_local noundef ptr @"??0_Lockit@std@@QEAA@H@Z"(ptr noundef nonnull returned align 4 dereferenceable(4), i32 noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"??Bid@locale@std@@QEAA_KXZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca %"class.std::_Lockit", align 4
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %"class.std::locale::id", ptr %4, i32 0, i32 0
  %6 = load i64, ptr %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = call noundef ptr @"??0_Lockit@std@@QEAA@H@Z"(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 0) #18
  %10 = getelementptr inbounds %"class.std::locale::id", ptr %4, i32 0, i32 0
  %11 = load i64, ptr %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load i32, ptr @"?_Id_cnt@id@locale@std@@0HA", align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr @"?_Id_cnt@id@locale@std@@0HA", align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %"class.std::locale::id", ptr %4, i32 0, i32 0
  store i64 %16, ptr %17, align 8
  br label %18

18:                                               ; preds = %13, %8
  call void @"??1_Lockit@std@@QEAA@XZ"(ptr noundef nonnull align 4 dereferenceable(4) %3) #18
  br label %19

19:                                               ; preds = %18, %1
  %20 = getelementptr inbounds %"class.std::locale::id", ptr %4, i32 0, i32 0
  %21 = load i64, ptr %20, align 8
  ret i64 %21
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"?_Getfacet@locale@std@@QEBAPEBVfacet@12@_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store i64 %1, ptr %4, align 8
  store ptr %0, ptr %5, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %4, align 8
  %10 = getelementptr inbounds %"class.std::locale", ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %"class.std::locale::_Locimp", ptr %11, i32 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = icmp ult i64 %9, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"class.std::locale", ptr %8, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %"class.std::locale::_Locimp", ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = load i64, ptr %4, align 8
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8
  br label %24

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23, %15
  %25 = phi ptr [ %22, %15 ], [ null, %23 ]
  store ptr %25, ptr %6, align 8
  %26 = load ptr, ptr %6, align 8
  %27 = icmp ne ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %"class.std::locale", ptr %8, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %"class.std::locale::_Locimp", ptr %30, i32 0, i32 4
  %32 = load i8, ptr %31, align 4
  %33 = trunc i8 %32 to i1
  br i1 %33, label %36, label %34

34:                                               ; preds = %28, %24
  %35 = load ptr, ptr %6, align 8
  store ptr %35, ptr %3, align 8
  br label %51

36:                                               ; preds = %28
  %37 = call noundef ptr @"?_Getgloballocale@locale@std@@CAPEAV_Locimp@12@XZ"()
  store ptr %37, ptr %7, align 8
  %38 = load i64, ptr %4, align 8
  %39 = load ptr, ptr %7, align 8
  %40 = getelementptr inbounds %"class.std::locale::_Locimp", ptr %39, i32 0, i32 2
  %41 = load i64, ptr %40, align 8
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load ptr, ptr %7, align 8
  %45 = getelementptr inbounds %"class.std::locale::_Locimp", ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8
  %47 = load i64, ptr %4, align 8
  %48 = getelementptr inbounds ptr, ptr %46, i64 %47
  %49 = load ptr, ptr %48, align 8
  store ptr %49, ptr %3, align 8
  br label %51

50:                                               ; preds = %36
  store ptr null, ptr %3, align 8
  br label %51

51:                                               ; preds = %50, %43, %34
  %52 = load ptr, ptr %3, align 8
  ret ptr %52
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i64 @"?_Getcat@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@SA_KPEAPEBVfacet@locale@2@PEBV42@@Z"(ptr noundef %0, ptr noundef %1) #1 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::_Locinfo", align 8
  %6 = alloca i1, align 1
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8
  %11 = load ptr, ptr %10, align 8
  %12 = icmp ne ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %9
  %14 = call noalias noundef nonnull ptr @"??2@YAPEAX_K@Z"(i64 noundef 16) #21
  store i1 true, ptr %6, align 1
  %15 = load ptr, ptr %3, align 8
  %16 = invoke noundef ptr @"?c_str@locale@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %17 unwind label %25

17:                                               ; preds = %13
  %18 = invoke noundef ptr @"??0_Locinfo@std@@QEAA@PEBD@Z"(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef %16)
          to label %19 unwind label %25

19:                                               ; preds = %17
  %20 = invoke noundef ptr @"??0?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@QEAA@AEBV_Locinfo@1@_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(104) %5, i64 noundef 0)
          to label %21 unwind label %23

21:                                               ; preds = %19
  store i1 false, ptr %6, align 1
  %22 = load ptr, ptr %4, align 8
  store ptr %14, ptr %22, align 8
  call void @"??1_Locinfo@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(104) %5) #18
  br label %30

23:                                               ; preds = %19
  %24 = cleanuppad within none []
  call void @"??1_Locinfo@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(104) %5) #18 [ "funclet"(token %24) ]
  cleanupret from %24 unwind label %25

25:                                               ; preds = %23, %17, %13
  %26 = cleanuppad within none []
  %27 = load i1, ptr %6, align 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @"??3@YAXPEAX@Z"(ptr noundef %14) #22 [ "funclet"(token %26) ]
  br label %29

29:                                               ; preds = %28, %25
  cleanupret from %26 unwind to caller

30:                                               ; preds = %21, %9, %2
  ret i64 4
}

; Function Attrs: mustprogress noinline noreturn optnone uwtable
define linkonce_odr dso_local void @"?_Throw_bad_cast@std@@YAXXZ"() #6 comdat {
  %1 = alloca %"class.std::bad_cast", align 8
  %2 = call noundef ptr @"??0bad_cast@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  call void @_CxxThrowException(ptr %1, ptr @"_TI2?AVbad_cast@std@@") #19
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$?0U?$default_delete@V_Facet_base@std@@@std@@$0A@@?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAA@PEAV_Facet_base@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds %"class.std::unique_ptr", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Zero_then_variadic_args_t", ptr %5, i32 0, i32 0
  %9 = load i8, ptr %8, align 1
  %10 = call noundef ptr @"??$?0AEAPEAV_Facet_base@std@@@?$_Compressed_pair@U?$default_delete@V_Facet_base@std@@@std@@PEAV_Facet_base@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@AEAPEAV_Facet_base@1@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %7, i8 %9, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  ret ptr %6
}

declare dso_local void @"?_Facet_Register@std@@YAXPEAV_Facet_base@1@@Z"(ptr noundef) #7

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?release@?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAAPEAV_Facet_base@2@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  store ptr null, ptr %3, align 8
  %5 = getelementptr inbounds %"class.std::unique_ptr", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %5, i32 0, i32 0
  %7 = call noundef ptr @"??$exchange@PEAV_Facet_base@std@@PEAV12@@std@@YAPEAV_Facet_base@0@AEAPEAV10@$$QEAPEAV10@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::unique_ptr", ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %4, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.std::unique_ptr", ptr %3, i32 0, i32 0
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@U?$default_delete@V_Facet_base@std@@@std@@PEAV_Facet_base@2@$00@std@@QEAAAEAU?$default_delete@V_Facet_base@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %9) #18
  %11 = getelementptr inbounds %"class.std::unique_ptr", ptr %3, i32 0, i32 0
  %12 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %11, i32 0, i32 0
  %13 = load ptr, ptr %12, align 8
  call void @"??R?$default_delete@V_Facet_base@std@@@std@@QEBAXPEAV_Facet_base@1@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef %13) #18
  br label %14

14:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind
declare dso_local void @"??1_Lockit@std@@QEAA@XZ"(ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #5

declare dso_local noundef ptr @"?_Getgloballocale@locale@std@@CAPEAV_Locimp@12@XZ"() #7

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull ptr @"??2@YAPEAX_K@Z"(i64 noundef) #8

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?c_str@locale@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::locale", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.std::locale", ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %"class.std::locale::_Locimp", ptr %9, i32 0, i32 5
  %11 = call noundef ptr @"?c_str@?$_Yarn@D@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(16) %10) #18
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %7
  %14 = phi ptr [ %11, %7 ], [ @"??_C@_00CNPNBAHC@?$AA@", %12 ]
  ret ptr %14
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0_Locinfo@std@@QEAA@PEBD@Z"(ptr noundef nonnull returned align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"class.std::_Locinfo", ptr %5, i32 0, i32 0
  %7 = call noundef ptr @"??0_Lockit@std@@QEAA@H@Z"(ptr noundef nonnull align 4 dereferenceable(4) %6, i32 noundef 0) #18
  %8 = getelementptr inbounds %"class.std::_Locinfo", ptr %5, i32 0, i32 1
  %9 = call noundef ptr @"??0?$_Yarn@D@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %8) #18
  %10 = getelementptr inbounds %"class.std::_Locinfo", ptr %5, i32 0, i32 2
  %11 = call noundef ptr @"??0?$_Yarn@D@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %10) #18
  %12 = getelementptr inbounds %"class.std::_Locinfo", ptr %5, i32 0, i32 3
  %13 = call noundef ptr @"??0?$_Yarn@_W@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %12) #18
  %14 = getelementptr inbounds %"class.std::_Locinfo", ptr %5, i32 0, i32 4
  %15 = call noundef ptr @"??0?$_Yarn@_W@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %14) #18
  %16 = getelementptr inbounds %"class.std::_Locinfo", ptr %5, i32 0, i32 5
  %17 = call noundef ptr @"??0?$_Yarn@D@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %16) #18
  %18 = getelementptr inbounds %"class.std::_Locinfo", ptr %5, i32 0, i32 6
  %19 = call noundef ptr @"??0?$_Yarn@D@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %18) #18
  %20 = load ptr, ptr %3, align 8
  %21 = icmp ne ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load ptr, ptr %3, align 8
  invoke void @"?_Locinfo_ctor@_Locinfo@std@@SAXPEAV12@PEBD@Z"(ptr noundef %5, ptr noundef %23)
          to label %24 unwind label %27

24:                                               ; preds = %22
  ret ptr %5

25:                                               ; preds = %2
  invoke void @"?_Xruntime_error@std@@YAXPEBD@Z"(ptr noundef @"??_C@_0BA@ELKIONDK@bad?5locale?5name?$AA@") #19
          to label %26 unwind label %27

26:                                               ; preds = %25
  unreachable

27:                                               ; preds = %25, %22
  %28 = cleanuppad within none []
  call void @"??1?$_Yarn@D@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %18) #18 [ "funclet"(token %28) ]
  cleanupret from %28 unwind label %29

29:                                               ; preds = %27
  %30 = cleanuppad within none []
  call void @"??1?$_Yarn@D@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %16) #18 [ "funclet"(token %30) ]
  cleanupret from %30 unwind label %31

31:                                               ; preds = %29
  %32 = cleanuppad within none []
  call void @"??1?$_Yarn@_W@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %14) #18 [ "funclet"(token %32) ]
  cleanupret from %32 unwind label %33

33:                                               ; preds = %31
  %34 = cleanuppad within none []
  call void @"??1?$_Yarn@_W@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %12) #18 [ "funclet"(token %34) ]
  cleanupret from %34 unwind label %35

35:                                               ; preds = %33
  %36 = cleanuppad within none []
  call void @"??1?$_Yarn@D@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %10) #18 [ "funclet"(token %36) ]
  cleanupret from %36 unwind label %37

37:                                               ; preds = %35
  %38 = cleanuppad within none []
  call void @"??1?$_Yarn@D@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %8) #18 [ "funclet"(token %38) ]
  cleanupret from %38 unwind label %39

39:                                               ; preds = %37
  %40 = cleanuppad within none []
  call void @"??1_Lockit@std@@QEAA@XZ"(ptr noundef nonnull align 4 dereferenceable(4) %6) #18 [ "funclet"(token %40) ]
  cleanupret from %40 unwind to caller
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@QEAA@AEBV_Locinfo@1@_K@Z"(ptr noundef nonnull returned align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i64 %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load i64, ptr %4, align 8
  %9 = call noundef ptr @"??0facet@locale@std@@IEAA@_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %8)
  store ptr @"??_7?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@6B@", ptr %7, align 8
  %10 = load ptr, ptr %5, align 8
  invoke void @"?_Init@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@IEAAXAEBV_Locinfo@2@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(104) %10)
          to label %11 unwind label %12

11:                                               ; preds = %3
  ret ptr %7

12:                                               ; preds = %3
  %13 = cleanuppad within none []
  call void @"??1facet@locale@std@@MEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %7) #18 [ "funclet"(token %13) ]
  cleanupret from %13 unwind to caller
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1_Locinfo@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  invoke void @"?_Locinfo_dtor@_Locinfo@std@@SAXPEAV12@@Z"(ptr noundef %3)
          to label %4 unwind label %12

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.std::_Locinfo", ptr %3, i32 0, i32 6
  call void @"??1?$_Yarn@D@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  %6 = getelementptr inbounds %"class.std::_Locinfo", ptr %3, i32 0, i32 5
  call void @"??1?$_Yarn@D@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
  %7 = getelementptr inbounds %"class.std::_Locinfo", ptr %3, i32 0, i32 4
  call void @"??1?$_Yarn@_W@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %7) #18
  %8 = getelementptr inbounds %"class.std::_Locinfo", ptr %3, i32 0, i32 3
  call void @"??1?$_Yarn@_W@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %8) #18
  %9 = getelementptr inbounds %"class.std::_Locinfo", ptr %3, i32 0, i32 2
  call void @"??1?$_Yarn@D@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %9) #18
  %10 = getelementptr inbounds %"class.std::_Locinfo", ptr %3, i32 0, i32 1
  call void @"??1?$_Yarn@D@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %10) #18
  %11 = getelementptr inbounds %"class.std::_Locinfo", ptr %3, i32 0, i32 0
  call void @"??1_Lockit@std@@QEAA@XZ"(ptr noundef nonnull align 4 dereferenceable(4) %11) #18
  ret void

12:                                               ; preds = %1
  %13 = cleanuppad within none []
  call void @__std_terminate() #20 [ "funclet"(token %13) ]
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @"??3@YAXPEAX@Z"(ptr noundef) #9

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?c_str@?$_Yarn@D@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::_Yarn", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.std::_Yarn", ptr %3, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  br label %12

10:                                               ; preds = %1
  %11 = getelementptr inbounds %"class.std::_Yarn", ptr %3, i32 0, i32 1
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi ptr [ %9, %7 ], [ %11, %10 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$_Yarn@D@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::_Yarn", ptr %3, i32 0, i32 0
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds %"class.std::_Yarn", ptr %3, i32 0, i32 1
  store i8 0, ptr %5, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$_Yarn@_W@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::_Yarn.0", ptr %3, i32 0, i32 0
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds %"class.std::_Yarn.0", ptr %3, i32 0, i32 1
  store i16 0, ptr %5, align 8
  ret ptr %3
}

declare dso_local void @"?_Locinfo_ctor@_Locinfo@std@@SAXPEAV12@PEBD@Z"(ptr noundef, ptr noundef) #7

; Function Attrs: noreturn
declare dso_local void @"?_Xruntime_error@std@@YAXPEBD@Z"(ptr noundef) #10

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$_Yarn@D@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"?_Tidy@?$_Yarn@D@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$_Yarn@_W@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"?_Tidy@?$_Yarn@_W@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Tidy@?$_Yarn@D@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::_Yarn", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.std::_Yarn", ptr %3, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  invoke void @free(ptr noundef %9)
          to label %10 unwind label %13

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %10, %1
  %12 = getelementptr inbounds %"class.std::_Yarn", ptr %3, i32 0, i32 0
  store ptr null, ptr %12, align 8
  ret void

13:                                               ; preds = %7
  %14 = cleanuppad within none []
  call void @__std_terminate() #20 [ "funclet"(token %14) ]
  unreachable
}

declare dso_local void @free(ptr noundef) #7

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Tidy@?$_Yarn@_W@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::_Yarn.0", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.std::_Yarn.0", ptr %3, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  invoke void @free(ptr noundef %9)
          to label %10 unwind label %13

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %10, %1
  %12 = getelementptr inbounds %"class.std::_Yarn.0", ptr %3, i32 0, i32 0
  store ptr null, ptr %12, align 8
  ret void

13:                                               ; preds = %7
  %14 = cleanuppad within none []
  call void @__std_terminate() #20 [ "funclet"(token %14) ]
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0facet@locale@std@@IEAA@_K@Z"(ptr noundef nonnull returned align 8 dereferenceable(16) %0, i64 noundef %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = call noundef ptr @"??0_Facet_base@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  %7 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr @"??_7facet@locale@std@@6B@", ptr %5, align 8
  %8 = getelementptr inbounds %"class.std::locale::facet", ptr %5, i32 0, i32 1
  %9 = load i64, ptr %3, align 8
  %10 = trunc i64 %9 to i32
  store i32 %10, ptr %8, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Init@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@IEAAXAEBV_Locinfo@2@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1facet@locale@std@@MEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1_Facet_base@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??_G?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX@Z"(ptr noundef %6) #22
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Incref@facet@locale@std@@UEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::locale::facet", ptr %3, i32 0, i32 1
  %5 = atomicrmw add ptr %4, i32 1 seq_cst, align 4
  %6 = add i32 %5, 1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?_Decref@facet@locale@std@@UEAAPEAV_Facet_base@3@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"class.std::locale::facet", ptr %4, i32 0, i32 1
  %6 = atomicrmw sub ptr %5, i32 1 seq_cst, align 4
  %7 = sub i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store ptr %4, ptr %2, align 8
  br label %11

10:                                               ; preds = %1
  store ptr null, ptr %2, align 8
  br label %11

11:                                               ; preds = %10, %9
  %12 = load ptr, ptr %2, align 8
  ret ptr %12
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEBX@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias sret(%"class.std::ostreambuf_iterator") align 8 %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i8 noundef %4, ptr noundef %5) unnamed_addr #1 comdat align 2 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [64 x i8], align 16
  %13 = alloca %"class.std::ostreambuf_iterator", align 8
  store ptr %1, ptr %7, align 8
  store ptr %5, ptr %8, align 8
  store i8 %4, ptr %9, align 1
  store ptr %3, ptr %10, align 8
  store ptr %0, ptr %11, align 8
  %14 = load ptr, ptr %11, align 8
  %15 = load ptr, ptr %8, align 8
  %16 = getelementptr inbounds [64 x i8], ptr %12, i64 0, i64 0
  %17 = call i32 (ptr, i64, ptr, ...) @sprintf_s(ptr noundef %16, i64 noundef 64, ptr noundef @"??_C@_02BBAHNLBA@?$CFp?$AA@", ptr noundef %15)
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [64 x i8], ptr %12, i64 0, i64 0
  %20 = load i8, ptr %9, align 1
  %21 = load ptr, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %13, ptr align 8 %2, i64 16, i1 false)
  call void @"?_Iput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEAD_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr sret(%"class.std::ostreambuf_iterator") align 8 %1, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(72) %21, i8 noundef %20, ptr noundef %19, i64 noundef %18)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DO@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias sret(%"class.std::ostreambuf_iterator") align 8 %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i8 noundef %4, double noundef %5) unnamed_addr #1 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %7 = alloca ptr, align 8
  %8 = alloca double, align 8
  %9 = alloca i8, align 1
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %"class.std::basic_string", align 8
  %13 = alloca [8 x i8], align 1
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca %"class.std::ostreambuf_iterator", align 8
  store ptr %1, ptr %7, align 8
  store double %5, ptr %8, align 8
  store i8 %4, ptr %9, align 1
  store ptr %3, ptr %10, align 8
  store ptr %0, ptr %11, align 8
  %23 = load ptr, ptr %11, align 8
  %24 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %12) #18
  %25 = load ptr, ptr %10, align 8
  %26 = invoke noundef i32 @"?flags@ios_base@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(72) %25)
          to label %27 unwind label %89

27:                                               ; preds = %6
  %28 = and i32 %26, 12288
  store i32 %28, ptr %14, align 4
  %29 = load i32, ptr %14, align 4
  %30 = icmp eq i32 %29, 8192
  %31 = zext i1 %30 to i8
  store i8 %31, ptr %15, align 1
  %32 = load i32, ptr %14, align 4
  %33 = icmp eq i32 %32, 12288
  %34 = zext i1 %33 to i8
  store i8 %34, ptr %16, align 1
  %35 = load i8, ptr %16, align 1
  %36 = trunc i8 %35 to i1
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %42

38:                                               ; preds = %27
  %39 = load ptr, ptr %10, align 8
  %40 = invoke noundef i64 @"?precision@ios_base@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(72) %39)
          to label %41 unwind label %89

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %41, %37
  %43 = phi i64 [ -1, %37 ], [ %40, %41 ]
  store i64 %43, ptr %17, align 8
  %44 = load i32, ptr %14, align 4
  %45 = load i64, ptr %17, align 8
  %46 = invoke noundef i32 @"??$_Float_put_desired_precision@O@std@@YAH_JH@Z"(i64 noundef %45, i32 noundef %44)
          to label %47 unwind label %89

47:                                               ; preds = %42
  store i32 %46, ptr %18, align 4
  %48 = load i32, ptr %18, align 4
  %49 = sext i32 %48 to i64
  store i64 %49, ptr %19, align 8
  %50 = load i8, ptr %15, align 1
  %51 = trunc i8 %50 to i1
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = load double, ptr %8, align 8
  %54 = call double @llvm.fabs.f64(double %53)
  %55 = fcmp olt double 1.000000e+10, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load double, ptr %8, align 8
  %58 = call double @frexpl(double noundef %57, ptr noundef %20) #18
  %59 = load i32, ptr %20, align 4
  %60 = call i32 @abs(i32 noundef %59) #23
  %61 = mul nsw i32 %60, 30103
  %62 = sdiv i32 %61, 100000
  %63 = sext i32 %62 to i64
  %64 = load i64, ptr %19, align 8
  %65 = add i64 %64, %63
  store i64 %65, ptr %19, align 8
  br label %66

66:                                               ; preds = %56, %52, %47
  %67 = load i64, ptr %19, align 8
  %68 = add i64 %67, 50
  invoke void @"?resize@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_KD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %68, i8 noundef 0)
          to label %69 unwind label %89

69:                                               ; preds = %66
  %70 = load double, ptr %8, align 8
  %71 = load i64, ptr %17, align 8
  %72 = trunc i64 %71 to i32
  %73 = load ptr, ptr %10, align 8
  %74 = invoke noundef i32 @"?flags@ios_base@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(72) %73)
          to label %75 unwind label %89

75:                                               ; preds = %69
  %76 = getelementptr inbounds [8 x i8], ptr %13, i64 0, i64 0
  %77 = invoke noundef ptr @"?_Ffmt@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBAPEADPEADDH@Z"(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef %76, i8 noundef 76, i32 noundef %74)
          to label %78 unwind label %89

78:                                               ; preds = %75
  %79 = call noundef i64 @"?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %12) #18
  %80 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0) #18
  %81 = invoke i32 (ptr, i64, ptr, ...) @sprintf_s(ptr noundef %80, i64 noundef %79, ptr noundef %77, i32 noundef %72, double noundef %70)
          to label %82 unwind label %89

82:                                               ; preds = %78
  %83 = sext i32 %81 to i64
  store i64 %83, ptr %21, align 8
  %84 = load i64, ptr %21, align 8
  %85 = call noundef ptr @"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %12) #18
  %86 = load i8, ptr %9, align 1
  %87 = load ptr, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %22, ptr align 8 %2, i64 16, i1 false)
  invoke void @"?_Fput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr sret(%"class.std::ostreambuf_iterator") align 8 %1, ptr noundef %22, ptr noundef nonnull align 8 dereferenceable(72) %87, i8 noundef %86, ptr noundef %85, i64 noundef %84)
          to label %88 unwind label %89

88:                                               ; preds = %82
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %12) #18
  ret void

89:                                               ; preds = %82, %78, %75, %69, %66, %42, %38, %6
  %90 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %12) #18 [ "funclet"(token %90) ]
  cleanupret from %90 unwind to caller
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DN@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias sret(%"class.std::ostreambuf_iterator") align 8 %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i8 noundef %4, double noundef %5) unnamed_addr #1 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %7 = alloca ptr, align 8
  %8 = alloca double, align 8
  %9 = alloca i8, align 1
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %"class.std::basic_string", align 8
  %13 = alloca [8 x i8], align 1
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca %"class.std::ostreambuf_iterator", align 8
  store ptr %1, ptr %7, align 8
  store double %5, ptr %8, align 8
  store i8 %4, ptr %9, align 1
  store ptr %3, ptr %10, align 8
  store ptr %0, ptr %11, align 8
  %23 = load ptr, ptr %11, align 8
  %24 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %12) #18
  %25 = load ptr, ptr %10, align 8
  %26 = invoke noundef i32 @"?flags@ios_base@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(72) %25)
          to label %27 unwind label %87

27:                                               ; preds = %6
  %28 = and i32 %26, 12288
  store i32 %28, ptr %14, align 4
  %29 = load i32, ptr %14, align 4
  %30 = icmp eq i32 %29, 8192
  %31 = zext i1 %30 to i8
  store i8 %31, ptr %15, align 1
  %32 = load i32, ptr %14, align 4
  %33 = icmp eq i32 %32, 12288
  %34 = zext i1 %33 to i8
  store i8 %34, ptr %16, align 1
  %35 = load i8, ptr %16, align 1
  %36 = trunc i8 %35 to i1
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %41

38:                                               ; preds = %27
  %39 = load ptr, ptr %10, align 8
  %40 = call noundef i64 @"?precision@ios_base@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(72) %39)
  br label %41

41:                                               ; preds = %38, %37
  %42 = phi i64 [ -1, %37 ], [ %40, %38 ]
  store i64 %42, ptr %17, align 8
  %43 = load i32, ptr %14, align 4
  %44 = load i64, ptr %17, align 8
  %45 = invoke noundef i32 @"??$_Float_put_desired_precision@N@std@@YAH_JH@Z"(i64 noundef %44, i32 noundef %43)
          to label %46 unwind label %87

46:                                               ; preds = %41
  store i32 %45, ptr %18, align 4
  %47 = load i32, ptr %18, align 4
  %48 = sext i32 %47 to i64
  store i64 %48, ptr %19, align 8
  %49 = load i8, ptr %15, align 1
  %50 = trunc i8 %49 to i1
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = load double, ptr %8, align 8
  %53 = call double @llvm.fabs.f64(double %52)
  %54 = fcmp olt double 1.000000e+10, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load double, ptr %8, align 8
  %57 = call double @frexp(double noundef %56, ptr noundef %20) #18
  %58 = load i32, ptr %20, align 4
  %59 = call i32 @abs(i32 noundef %58) #23
  %60 = mul nsw i32 %59, 30103
  %61 = sdiv i32 %60, 100000
  %62 = sext i32 %61 to i64
  %63 = load i64, ptr %19, align 8
  %64 = add i64 %63, %62
  store i64 %64, ptr %19, align 8
  br label %65

65:                                               ; preds = %55, %51, %46
  %66 = load i64, ptr %19, align 8
  %67 = add i64 %66, 50
  invoke void @"?resize@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_KD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %67, i8 noundef 0)
          to label %68 unwind label %87

68:                                               ; preds = %65
  %69 = load double, ptr %8, align 8
  %70 = load i64, ptr %17, align 8
  %71 = trunc i64 %70 to i32
  %72 = load ptr, ptr %10, align 8
  %73 = invoke noundef i32 @"?flags@ios_base@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(72) %72)
          to label %74 unwind label %87

74:                                               ; preds = %68
  %75 = getelementptr inbounds [8 x i8], ptr %13, i64 0, i64 0
  %76 = call noundef ptr @"?_Ffmt@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBAPEADPEADDH@Z"(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef %75, i8 noundef 0, i32 noundef %73)
  %77 = call noundef i64 @"?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %12) #18
  %78 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0) #18
  %79 = invoke i32 (ptr, i64, ptr, ...) @sprintf_s(ptr noundef %78, i64 noundef %77, ptr noundef %76, i32 noundef %71, double noundef %69)
          to label %80 unwind label %87

80:                                               ; preds = %74
  %81 = sext i32 %79 to i64
  store i64 %81, ptr %21, align 8
  %82 = load i64, ptr %21, align 8
  %83 = call noundef ptr @"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %12) #18
  %84 = load i8, ptr %9, align 1
  %85 = load ptr, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %22, ptr align 8 %2, i64 16, i1 false)
  invoke void @"?_Fput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr sret(%"class.std::ostreambuf_iterator") align 8 %1, ptr noundef %22, ptr noundef nonnull align 8 dereferenceable(72) %85, i8 noundef %84, ptr noundef %83, i64 noundef %82)
          to label %86 unwind label %87

86:                                               ; preds = %80
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %12) #18
  ret void

87:                                               ; preds = %80, %74, %68, %65, %41, %6
  %88 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %12) #18 [ "funclet"(token %88) ]
  cleanupret from %88 unwind to caller
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias sret(%"class.std::ostreambuf_iterator") align 8 %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i8 noundef %4, i64 noundef %5) unnamed_addr #1 comdat align 2 {
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [64 x i8], align 16
  %13 = alloca [8 x i8], align 1
  %14 = alloca %"class.std::ostreambuf_iterator", align 8
  store ptr %1, ptr %7, align 8
  store i64 %5, ptr %8, align 8
  store i8 %4, ptr %9, align 1
  store ptr %3, ptr %10, align 8
  store ptr %0, ptr %11, align 8
  %15 = load ptr, ptr %11, align 8
  %16 = load i64, ptr %8, align 8
  %17 = load ptr, ptr %10, align 8
  %18 = call noundef i32 @"?flags@ios_base@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(72) %17)
  %19 = getelementptr inbounds [8 x i8], ptr %13, i64 0, i64 0
  %20 = call noundef ptr @"?_Ifmt@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBAPEADPEADPEBDH@Z"(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef %19, ptr noundef @"??_C@_02CLHGNPPK@Lu?$AA@", i32 noundef %18)
  %21 = getelementptr inbounds [64 x i8], ptr %12, i64 0, i64 0
  %22 = call i32 (ptr, i64, ptr, ...) @sprintf_s(ptr noundef %21, i64 noundef 64, ptr noundef %20, i64 noundef %16)
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [64 x i8], ptr %12, i64 0, i64 0
  %25 = load i8, ptr %9, align 1
  %26 = load ptr, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 8 %2, i64 16, i1 false)
  call void @"?_Iput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEAD_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr sret(%"class.std::ostreambuf_iterator") align 8 %1, ptr noundef %14, ptr noundef nonnull align 8 dereferenceable(72) %26, i8 noundef %25, ptr noundef %24, i64 noundef %23)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_J@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias sret(%"class.std::ostreambuf_iterator") align 8 %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i8 noundef %4, i64 noundef %5) unnamed_addr #1 comdat align 2 {
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [64 x i8], align 16
  %13 = alloca [8 x i8], align 1
  %14 = alloca %"class.std::ostreambuf_iterator", align 8
  store ptr %1, ptr %7, align 8
  store i64 %5, ptr %8, align 8
  store i8 %4, ptr %9, align 1
  store ptr %3, ptr %10, align 8
  store ptr %0, ptr %11, align 8
  %15 = load ptr, ptr %11, align 8
  %16 = load i64, ptr %8, align 8
  %17 = load ptr, ptr %10, align 8
  %18 = call noundef i32 @"?flags@ios_base@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(72) %17)
  %19 = getelementptr inbounds [8 x i8], ptr %13, i64 0, i64 0
  %20 = call noundef ptr @"?_Ifmt@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBAPEADPEADPEBDH@Z"(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef %19, ptr noundef @"??_C@_02HIKPPMOK@Ld?$AA@", i32 noundef %18)
  %21 = getelementptr inbounds [64 x i8], ptr %12, i64 0, i64 0
  %22 = call i32 (ptr, i64, ptr, ...) @sprintf_s(ptr noundef %21, i64 noundef 64, ptr noundef %20, i64 noundef %16)
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [64 x i8], ptr %12, i64 0, i64 0
  %25 = load i8, ptr %9, align 1
  %26 = load ptr, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 8 %2, i64 16, i1 false)
  call void @"?_Iput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEAD_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr sret(%"class.std::ostreambuf_iterator") align 8 %1, ptr noundef %14, ptr noundef nonnull align 8 dereferenceable(72) %26, i8 noundef %25, ptr noundef %24, i64 noundef %23)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DK@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias sret(%"class.std::ostreambuf_iterator") align 8 %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i8 noundef %4, i32 noundef %5) unnamed_addr #1 comdat align 2 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [64 x i8], align 16
  %13 = alloca [6 x i8], align 1
  %14 = alloca %"class.std::ostreambuf_iterator", align 8
  store ptr %1, ptr %7, align 8
  store i32 %5, ptr %8, align 4
  store i8 %4, ptr %9, align 1
  store ptr %3, ptr %10, align 8
  store ptr %0, ptr %11, align 8
  %15 = load ptr, ptr %11, align 8
  %16 = load i32, ptr %8, align 4
  %17 = load ptr, ptr %10, align 8
  %18 = call noundef i32 @"?flags@ios_base@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(72) %17)
  %19 = getelementptr inbounds [6 x i8], ptr %13, i64 0, i64 0
  %20 = call noundef ptr @"?_Ifmt@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBAPEADPEADPEBDH@Z"(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef %19, ptr noundef @"??_C@_02BDDLJJBK@lu?$AA@", i32 noundef %18)
  %21 = getelementptr inbounds [64 x i8], ptr %12, i64 0, i64 0
  %22 = call i32 (ptr, i64, ptr, ...) @sprintf_s(ptr noundef %21, i64 noundef 64, ptr noundef %20, i32 noundef %16)
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [64 x i8], ptr %12, i64 0, i64 0
  %25 = load i8, ptr %9, align 1
  %26 = load ptr, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 8 %2, i64 16, i1 false)
  call void @"?_Iput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEAD_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr sret(%"class.std::ostreambuf_iterator") align 8 %1, ptr noundef %14, ptr noundef nonnull align 8 dereferenceable(72) %26, i8 noundef %25, ptr noundef %24, i64 noundef %23)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DJ@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias sret(%"class.std::ostreambuf_iterator") align 8 %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i8 noundef %4, i32 noundef %5) unnamed_addr #1 comdat align 2 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [64 x i8], align 16
  %13 = alloca [6 x i8], align 1
  %14 = alloca %"class.std::ostreambuf_iterator", align 8
  store ptr %1, ptr %7, align 8
  store i32 %5, ptr %8, align 4
  store i8 %4, ptr %9, align 1
  store ptr %3, ptr %10, align 8
  store ptr %0, ptr %11, align 8
  %15 = load ptr, ptr %11, align 8
  %16 = load i32, ptr %8, align 4
  %17 = load ptr, ptr %10, align 8
  %18 = call noundef i32 @"?flags@ios_base@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(72) %17)
  %19 = getelementptr inbounds [6 x i8], ptr %13, i64 0, i64 0
  %20 = call noundef ptr @"?_Ifmt@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBAPEADPEADPEBDH@Z"(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef %19, ptr noundef @"??_C@_02EAOCLKAK@ld?$AA@", i32 noundef %18)
  %21 = getelementptr inbounds [64 x i8], ptr %12, i64 0, i64 0
  %22 = call i32 (ptr, i64, ptr, ...) @sprintf_s(ptr noundef %21, i64 noundef 64, ptr noundef %20, i32 noundef %16)
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [64 x i8], ptr %12, i64 0, i64 0
  %25 = load i8, ptr %9, align 1
  %26 = load ptr, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 8 %2, i64 16, i1 false)
  call void @"?_Iput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEAD_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr sret(%"class.std::ostreambuf_iterator") align 8 %1, ptr noundef %14, ptr noundef nonnull align 8 dereferenceable(72) %26, i8 noundef %25, ptr noundef %24, i64 noundef %23)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?do_put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@D_N@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias sret(%"class.std::ostreambuf_iterator") align 8 %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i8 noundef %4, i1 noundef zeroext %5) unnamed_addr #1 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %7 = alloca ptr, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %"class.std::ostreambuf_iterator", align 8
  %13 = alloca ptr, align 8
  %14 = alloca %"class.std::locale", align 8
  %15 = alloca %"class.std::basic_string", align 8
  %16 = alloca %"class.std::basic_string", align 8
  %17 = alloca %"class.std::basic_string", align 8
  %18 = alloca i64, align 8
  %19 = alloca %"class.std::ostreambuf_iterator", align 8
  %20 = alloca %"class.std::ostreambuf_iterator", align 8
  %21 = alloca %"class.std::ostreambuf_iterator", align 8
  %22 = alloca %"class.std::ostreambuf_iterator", align 8
  %23 = alloca %"class.std::ostreambuf_iterator", align 8
  store ptr %1, ptr %7, align 8
  %24 = zext i1 %5 to i8
  store i8 %24, ptr %8, align 1
  store i8 %4, ptr %9, align 1
  store ptr %3, ptr %10, align 8
  store ptr %0, ptr %11, align 8
  %25 = load ptr, ptr %11, align 8
  %26 = load ptr, ptr %10, align 8
  %27 = call noundef i32 @"?flags@ios_base@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(72) %26)
  %28 = and i32 %27, 16384
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %6
  %31 = load i8, ptr %8, align 1
  %32 = trunc i8 %31 to i1
  %33 = zext i1 %32 to i32
  %34 = load i8, ptr %9, align 1
  %35 = load ptr, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %2, i64 16, i1 false)
  %36 = load ptr, ptr %25, align 8
  %37 = getelementptr inbounds ptr, ptr %36, i64 9
  %38 = load ptr, ptr %37, align 8
  call void %38(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr sret(%"class.std::ostreambuf_iterator") align 8 %1, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(72) %35, i8 noundef %34, i32 noundef %33)
  br label %92

39:                                               ; preds = %6
  %40 = load ptr, ptr %10, align 8
  call void @"?getloc@ios_base@std@@QEBA?AVlocale@2@XZ"(ptr noundef nonnull align 8 dereferenceable(72) %40, ptr sret(%"class.std::locale") align 8 %14)
  %41 = invoke noundef nonnull align 8 dereferenceable(48) ptr @"??$use_facet@V?$numpunct@D@std@@@std@@YAAEBV?$numpunct@D@0@AEBVlocale@0@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %42 unwind label %50

42:                                               ; preds = %39
  call void @"??1locale@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %14) #18
  store ptr %41, ptr %13, align 8
  %43 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %15) #18
  %44 = load i8, ptr %8, align 1
  %45 = trunc i8 %44 to i1
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load ptr, ptr %13, align 8
  invoke void @"?truename@?$numpunct@D@std@@QEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(48) %47, ptr sret(%"class.std::basic_string") align 8 %16)
          to label %48 unwind label %90

48:                                               ; preds = %46
  %49 = call noundef nonnull align 8 dereferenceable(32) ptr @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@$$QEAV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %16) #18
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %16) #18
  br label %56

50:                                               ; preds = %39
  %51 = cleanuppad within none []
  call void @"??1locale@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %14) #18 [ "funclet"(token %51) ]
  cleanupret from %51 unwind to caller

52:                                               ; preds = %42
  %53 = load ptr, ptr %13, align 8
  invoke void @"?falsename@?$numpunct@D@std@@QEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(48) %53, ptr sret(%"class.std::basic_string") align 8 %17)
          to label %54 unwind label %90

54:                                               ; preds = %52
  %55 = call noundef nonnull align 8 dereferenceable(32) ptr @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@$$QEAV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %17) #18
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %17) #18
  br label %56

56:                                               ; preds = %54, %48
  %57 = load ptr, ptr %10, align 8
  %58 = call noundef i64 @"?width@ios_base@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(72) %57)
  %59 = icmp sle i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %10, align 8
  %62 = call noundef i64 @"?width@ios_base@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(72) %61)
  %63 = call noundef i64 @"?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %15) #18
  %64 = icmp ule i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60, %56
  store i64 0, ptr %18, align 8
  br label %71

66:                                               ; preds = %60
  %67 = load ptr, ptr %10, align 8
  %68 = call noundef i64 @"?width@ios_base@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(72) %67)
  %69 = call noundef i64 @"?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %15) #18
  %70 = sub i64 %68, %69
  store i64 %70, ptr %18, align 8
  br label %71

71:                                               ; preds = %66, %65
  %72 = load ptr, ptr %10, align 8
  %73 = invoke noundef i32 @"?flags@ios_base@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(72) %72)
          to label %74 unwind label %90

74:                                               ; preds = %71
  %75 = and i32 %73, 448
  %76 = icmp ne i32 %75, 64
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i64, ptr %18, align 8
  %79 = load i8, ptr %9, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %20, ptr align 8 %2, i64 16, i1 false)
  invoke void @"?_Rep@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@D_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr sret(%"class.std::ostreambuf_iterator") align 8 %19, ptr noundef %20, i8 noundef %79, i64 noundef %78)
          to label %80 unwind label %90

80:                                               ; preds = %77
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %19, i64 16, i1 false)
  store i64 0, ptr %18, align 8
  br label %81

81:                                               ; preds = %80, %74
  %82 = call noundef i64 @"?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %15) #18
  %83 = call noundef ptr @"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %15) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %22, ptr align 8 %2, i64 16, i1 false)
  invoke void @"?_Put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@PEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr sret(%"class.std::ostreambuf_iterator") align 8 %21, ptr noundef %22, ptr noundef %83, i64 noundef %82)
          to label %84 unwind label %90

84:                                               ; preds = %81
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %21, i64 16, i1 false)
  %85 = load ptr, ptr %10, align 8
  %86 = call noundef i64 @"?width@ios_base@std@@QEAA_J_J@Z"(ptr noundef nonnull align 8 dereferenceable(72) %85, i64 noundef 0)
  %87 = load i64, ptr %18, align 8
  %88 = load i8, ptr %9, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %23, ptr align 8 %2, i64 16, i1 false)
  invoke void @"?_Rep@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@D_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr sret(%"class.std::ostreambuf_iterator") align 8 %1, ptr noundef %23, i8 noundef %88, i64 noundef %87)
          to label %89 unwind label %90

89:                                               ; preds = %84
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %15) #18
  br label %92

90:                                               ; preds = %84, %81, %77, %71, %52, %46
  %91 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %15) #18 [ "funclet"(token %91) ]
  cleanupret from %91 unwind to caller

92:                                               ; preds = %89, %30
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0_Facet_base@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  store ptr @"??_7_Facet_base@std@@6B@", ptr %3, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??_Gfacet@locale@std@@MEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1facet@locale@std@@MEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX@Z"(ptr noundef %6) #22
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??_G_Facet_base@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @llvm.trap() #20
  unreachable
}

declare dso_local void @_purecall() unnamed_addr

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #11

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1_Facet_base@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@MEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1facet@locale@std@@MEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?_Iput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEAD_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias sret(%"class.std::ostreambuf_iterator") align 8 %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i8 noundef %4, ptr noundef %5, i64 noundef %6) #1 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i8, align 1
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca %"class.std::locale", align 8
  %17 = alloca %"class.std::basic_string", align 8
  %18 = alloca ptr, align 8
  %19 = alloca %"class.std::locale", align 8
  %20 = alloca %"class.std::basic_string", align 8
  %21 = alloca ptr, align 8
  %22 = alloca i8, align 1
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca %"class.std::ostreambuf_iterator", align 8
  %26 = alloca %"class.std::ostreambuf_iterator", align 8
  %27 = alloca %"class.std::ostreambuf_iterator", align 8
  %28 = alloca %"class.std::ostreambuf_iterator", align 8
  %29 = alloca %"class.std::ostreambuf_iterator", align 8
  %30 = alloca %"class.std::ostreambuf_iterator", align 8
  %31 = alloca %"class.std::ostreambuf_iterator", align 8
  %32 = alloca %"class.std::ostreambuf_iterator", align 8
  %33 = alloca %"class.std::ostreambuf_iterator", align 8
  %34 = alloca %"class.std::ostreambuf_iterator", align 8
  %35 = alloca %"class.std::ostreambuf_iterator", align 8
  %36 = alloca %"class.std::ostreambuf_iterator", align 8
  %37 = alloca %"class.std::ostreambuf_iterator", align 8
  store ptr %1, ptr %8, align 8
  store i64 %6, ptr %9, align 8
  store ptr %5, ptr %10, align 8
  store i8 %4, ptr %11, align 1
  store ptr %3, ptr %12, align 8
  store ptr %0, ptr %13, align 8
  %38 = load ptr, ptr %13, align 8
  %39 = load i64, ptr %9, align 8
  %40 = icmp ult i64 0, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %7
  %42 = load ptr, ptr %10, align 8
  %43 = load i8, ptr %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 43
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr %10, align 8
  %48 = load i8, ptr %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 45
  br label %51

51:                                               ; preds = %46, %41
  %52 = phi i1 [ true, %41 ], [ %50, %46 ]
  br label %53

53:                                               ; preds = %51, %7
  %54 = phi i1 [ false, %7 ], [ %52, %51 ]
  %55 = zext i1 %54 to i64
  store i64 %55, ptr %14, align 8
  %56 = load ptr, ptr %12, align 8
  %57 = call noundef i32 @"?flags@ios_base@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(72) %56)
  %58 = and i32 %57, 3584
  %59 = icmp eq i32 %58, 2048
  br i1 %59, label %60, label %91

60:                                               ; preds = %53
  %61 = load i64, ptr %14, align 8
  %62 = add i64 %61, 2
  %63 = load i64, ptr %9, align 8
  %64 = icmp ule i64 %62, %63
  br i1 %64, label %65, label %91

65:                                               ; preds = %60
  %66 = load ptr, ptr %10, align 8
  %67 = load i64, ptr %14, align 8
  %68 = getelementptr inbounds i8, ptr %66, i64 %67
  %69 = load i8, ptr %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 48
  br i1 %71, label %72, label %91

72:                                               ; preds = %65
  %73 = load ptr, ptr %10, align 8
  %74 = load i64, ptr %14, align 8
  %75 = add i64 %74, 1
  %76 = getelementptr inbounds i8, ptr %73, i64 %75
  %77 = load i8, ptr %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 120
  br i1 %79, label %88, label %80

80:                                               ; preds = %72
  %81 = load ptr, ptr %10, align 8
  %82 = load i64, ptr %14, align 8
  %83 = add i64 %82, 1
  %84 = getelementptr inbounds i8, ptr %81, i64 %83
  %85 = load i8, ptr %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 88
  br i1 %87, label %88, label %91

88:                                               ; preds = %80, %72
  %89 = load i64, ptr %14, align 8
  %90 = add i64 %89, 2
  store i64 %90, ptr %14, align 8
  br label %91

91:                                               ; preds = %88, %80, %65, %60, %53
  %92 = load ptr, ptr %12, align 8
  call void @"?getloc@ios_base@std@@QEBA?AVlocale@2@XZ"(ptr noundef nonnull align 8 dereferenceable(72) %92, ptr sret(%"class.std::locale") align 8 %16)
  %93 = invoke noundef nonnull align 8 dereferenceable(48) ptr @"??$use_facet@V?$ctype@D@std@@@std@@YAAEBV?$ctype@D@0@AEBVlocale@0@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %94 unwind label %163

94:                                               ; preds = %91
  call void @"??1locale@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %16) #18
  store ptr %93, ptr %15, align 8
  %95 = load i64, ptr %9, align 8
  %96 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@_KD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef %95, i8 noundef 0)
  %97 = load ptr, ptr %15, align 8
  %98 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0) #18
  %99 = load ptr, ptr %10, align 8
  %100 = load i64, ptr %9, align 8
  %101 = getelementptr inbounds i8, ptr %99, i64 %100
  %102 = load ptr, ptr %10, align 8
  %103 = invoke noundef ptr @"?widen@?$ctype@D@std@@QEBAPEBDPEBD0PEAD@Z"(ptr noundef nonnull align 8 dereferenceable(48) %97, ptr noundef %102, ptr noundef %101, ptr noundef %98)
          to label %104 unwind label %235

104:                                              ; preds = %94
  %105 = load ptr, ptr %12, align 8
  invoke void @"?getloc@ios_base@std@@QEBA?AVlocale@2@XZ"(ptr noundef nonnull align 8 dereferenceable(72) %105, ptr sret(%"class.std::locale") align 8 %19)
          to label %106 unwind label %235

106:                                              ; preds = %104
  %107 = invoke noundef nonnull align 8 dereferenceable(48) ptr @"??$use_facet@V?$numpunct@D@std@@@std@@YAAEBV?$numpunct@D@0@AEBVlocale@0@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %19)
          to label %108 unwind label %165

108:                                              ; preds = %106
  call void @"??1locale@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %19) #18
  store ptr %107, ptr %18, align 8
  %109 = load ptr, ptr %18, align 8
  invoke void @"?grouping@?$numpunct@D@std@@QEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(48) %109, ptr sret(%"class.std::basic_string") align 8 %20)
          to label %110 unwind label %235

110:                                              ; preds = %108
  %111 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAAEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef 0) #18
  store ptr %111, ptr %21, align 8
  %112 = load ptr, ptr %21, align 8
  %113 = load i8, ptr %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 127
  br i1 %115, label %116, label %169

116:                                              ; preds = %110
  %117 = load ptr, ptr %21, align 8
  %118 = load i8, ptr %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp slt i32 0, %119
  br i1 %120, label %121, label %169

121:                                              ; preds = %116
  %122 = load ptr, ptr %18, align 8
  %123 = invoke noundef i8 @"?thousands_sep@?$numpunct@D@std@@QEBADXZ"(ptr noundef nonnull align 8 dereferenceable(48) %122)
          to label %124 unwind label %233

124:                                              ; preds = %121
  store i8 %123, ptr %22, align 1
  br label %125

125:                                              ; preds = %167, %124
  %126 = load ptr, ptr %21, align 8
  %127 = load i8, ptr %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %128, 127
  br i1 %129, label %130, label %143

130:                                              ; preds = %125
  %131 = load ptr, ptr %21, align 8
  %132 = load i8, ptr %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp slt i32 0, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = load ptr, ptr %21, align 8
  %137 = load i8, ptr %136, align 1
  %138 = sext i8 %137 to i64
  %139 = load i64, ptr %9, align 8
  %140 = load i64, ptr %14, align 8
  %141 = sub i64 %139, %140
  %142 = icmp ult i64 %138, %141
  br label %143

143:                                              ; preds = %135, %130, %125
  %144 = phi i1 [ false, %130 ], [ false, %125 ], [ %142, %135 ]
  br i1 %144, label %145, label %168

145:                                              ; preds = %143
  %146 = load ptr, ptr %21, align 8
  %147 = load i8, ptr %146, align 1
  %148 = sext i8 %147 to i64
  %149 = load i64, ptr %9, align 8
  %150 = sub i64 %149, %148
  store i64 %150, ptr %9, align 8
  %151 = load i8, ptr %22, align 1
  %152 = load i64, ptr %9, align 8
  %153 = invoke noundef nonnull align 8 dereferenceable(32) ptr @"?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K0D@Z"(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef %152, i64 noundef 1, i8 noundef %151)
          to label %154 unwind label %233

154:                                              ; preds = %145
  %155 = load ptr, ptr %21, align 8
  %156 = getelementptr inbounds i8, ptr %155, i64 1
  %157 = load i8, ptr %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp slt i32 0, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %154
  %161 = load ptr, ptr %21, align 8
  %162 = getelementptr inbounds i8, ptr %161, i32 1
  store ptr %162, ptr %21, align 8
  br label %167

163:                                              ; preds = %91
  %164 = cleanuppad within none []
  call void @"??1locale@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %16) #18 [ "funclet"(token %164) ]
  cleanupret from %164 unwind to caller

165:                                              ; preds = %106
  %166 = cleanuppad within none []
  call void @"??1locale@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %19) #18 [ "funclet"(token %166) ]
  cleanupret from %166 unwind label %235

167:                                              ; preds = %160, %154
  br label %125, !llvm.loop !14

168:                                              ; preds = %143
  br label %169

169:                                              ; preds = %168, %116, %110
  %170 = call noundef i64 @"?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %17) #18
  store i64 %170, ptr %9, align 8
  %171 = load ptr, ptr %12, align 8
  %172 = invoke noundef i64 @"?width@ios_base@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(72) %171)
          to label %173 unwind label %233

173:                                              ; preds = %169
  %174 = icmp sle i64 %172, 0
  br i1 %174, label %181, label %175

175:                                              ; preds = %173
  %176 = load ptr, ptr %12, align 8
  %177 = invoke noundef i64 @"?width@ios_base@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(72) %176)
          to label %178 unwind label %233

178:                                              ; preds = %175
  %179 = load i64, ptr %9, align 8
  %180 = icmp ule i64 %177, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %178, %173
  store i64 0, ptr %23, align 8
  br label %188

182:                                              ; preds = %178
  %183 = load ptr, ptr %12, align 8
  %184 = invoke noundef i64 @"?width@ios_base@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(72) %183)
          to label %185 unwind label %233

185:                                              ; preds = %182
  %186 = load i64, ptr %9, align 8
  %187 = sub i64 %184, %186
  store i64 %187, ptr %23, align 8
  br label %188

188:                                              ; preds = %185, %181
  %189 = load ptr, ptr %12, align 8
  %190 = invoke noundef i32 @"?flags@ios_base@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(72) %189)
          to label %191 unwind label %233

191:                                              ; preds = %188
  %192 = and i32 %190, 448
  store i32 %192, ptr %24, align 4
  %193 = load i32, ptr %24, align 4
  %194 = icmp ne i32 %193, 64
  br i1 %194, label %195, label %205

195:                                              ; preds = %191
  %196 = load i32, ptr %24, align 4
  %197 = icmp ne i32 %196, 256
  br i1 %197, label %198, label %205

198:                                              ; preds = %195
  %199 = load i64, ptr %23, align 8
  %200 = load i8, ptr %11, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %26, ptr align 8 %2, i64 16, i1 false)
  invoke void @"?_Rep@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@D_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr sret(%"class.std::ostreambuf_iterator") align 8 %25, ptr noundef %26, i8 noundef %200, i64 noundef %199)
          to label %201 unwind label %233

201:                                              ; preds = %198
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %25, i64 16, i1 false)
  store i64 0, ptr %23, align 8
  %202 = load i64, ptr %14, align 8
  %203 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %28, ptr align 8 %2, i64 16, i1 false)
  invoke void @"?_Put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@PEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr sret(%"class.std::ostreambuf_iterator") align 8 %27, ptr noundef %28, ptr noundef %203, i64 noundef %202)
          to label %204 unwind label %233

204:                                              ; preds = %201
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %27, i64 16, i1 false)
  br label %220

205:                                              ; preds = %195, %191
  %206 = load i32, ptr %24, align 4
  %207 = icmp eq i32 %206, 256
  br i1 %207, label %208, label %215

208:                                              ; preds = %205
  %209 = load i64, ptr %14, align 8
  %210 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %30, ptr align 8 %2, i64 16, i1 false)
  invoke void @"?_Put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@PEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr sret(%"class.std::ostreambuf_iterator") align 8 %29, ptr noundef %30, ptr noundef %210, i64 noundef %209)
          to label %211 unwind label %233

211:                                              ; preds = %208
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %29, i64 16, i1 false)
  %212 = load i64, ptr %23, align 8
  %213 = load i8, ptr %11, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %32, ptr align 8 %2, i64 16, i1 false)
  invoke void @"?_Rep@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@D_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr sret(%"class.std::ostreambuf_iterator") align 8 %31, ptr noundef %32, i8 noundef %213, i64 noundef %212)
          to label %214 unwind label %233

214:                                              ; preds = %211
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %31, i64 16, i1 false)
  store i64 0, ptr %23, align 8
  br label %219

215:                                              ; preds = %205
  %216 = load i64, ptr %14, align 8
  %217 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %34, ptr align 8 %2, i64 16, i1 false)
  invoke void @"?_Put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@PEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr sret(%"class.std::ostreambuf_iterator") align 8 %33, ptr noundef %34, ptr noundef %217, i64 noundef %216)
          to label %218 unwind label %233

218:                                              ; preds = %215
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %33, i64 16, i1 false)
  br label %219

219:                                              ; preds = %218, %214
  br label %220

220:                                              ; preds = %219, %204
  %221 = load i64, ptr %9, align 8
  %222 = load i64, ptr %14, align 8
  %223 = sub i64 %221, %222
  %224 = load i64, ptr %14, align 8
  %225 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef %224) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %36, ptr align 8 %2, i64 16, i1 false)
  invoke void @"?_Put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@PEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr sret(%"class.std::ostreambuf_iterator") align 8 %35, ptr noundef %36, ptr noundef %225, i64 noundef %223)
          to label %226 unwind label %233

226:                                              ; preds = %220
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %35, i64 16, i1 false)
  %227 = load ptr, ptr %12, align 8
  %228 = invoke noundef i64 @"?width@ios_base@std@@QEAA_J_J@Z"(ptr noundef nonnull align 8 dereferenceable(72) %227, i64 noundef 0)
          to label %229 unwind label %233

229:                                              ; preds = %226
  %230 = load i64, ptr %23, align 8
  %231 = load i8, ptr %11, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %37, ptr align 8 %2, i64 16, i1 false)
  invoke void @"?_Rep@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@D_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr sret(%"class.std::ostreambuf_iterator") align 8 %1, ptr noundef %37, i8 noundef %231, i64 noundef %230)
          to label %232 unwind label %233

232:                                              ; preds = %229
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %20) #18
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %17) #18
  ret void

233:                                              ; preds = %229, %226, %220, %215, %211, %208, %201, %198, %188, %182, %175, %169, %145, %121
  %234 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %20) #18 [ "funclet"(token %234) ]
  cleanupret from %234 unwind label %235

235:                                              ; preds = %233, %108, %165, %104, %94
  %236 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %17) #18 [ "funclet"(token %236) ]
  cleanupret from %236 unwind to caller
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i32 @sprintf_s(ptr noundef %0, i64 noundef %1, ptr noundef %2, ...) #1 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.va_start(ptr %8)
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = load i64, ptr %5, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = call i32 @_vsprintf_s_l(ptr noundef %12, i64 noundef %11, ptr noundef %10, ptr noundef null, ptr noundef %9)
  store i32 %13, ptr %7, align 4
  call void @llvm.va_end(ptr %8)
  %14 = load i32, ptr %7, align 4
  ret i32 %14
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(48) ptr @"??$use_facet@V?$ctype@D@std@@@std@@YAAEBV?$ctype@D@0@AEBVlocale@0@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0) #1 comdat personality ptr @__CxxFrameHandler3 {
  %2 = alloca ptr, align 8
  %3 = alloca %"class.std::_Lockit", align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"class.std::unique_ptr", align 8
  store ptr %0, ptr %2, align 8
  %9 = call noundef ptr @"??0_Lockit@std@@QEAA@H@Z"(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 0) #18
  %10 = load ptr, ptr @"?_Psave@?$_Facetptr@V?$ctype@D@std@@@std@@2PEBVfacet@locale@2@EB", align 8
  store ptr %10, ptr %4, align 8
  %11 = call noundef i64 @"??Bid@locale@std@@QEAA_KXZ"(ptr noundef nonnull align 8 dereferenceable(8) @"?id@?$ctype@D@std@@2V0locale@2@A")
  store i64 %11, ptr %5, align 8
  %12 = load ptr, ptr %2, align 8
  %13 = load i64, ptr %5, align 8
  %14 = invoke noundef ptr @"?_Getfacet@locale@std@@QEBAPEBVfacet@12@_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef %13)
          to label %15 unwind label %49

15:                                               ; preds = %1
  store ptr %14, ptr %6, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = icmp ne ptr %16, null
  br i1 %17, label %47, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %4, align 8
  %20 = icmp ne ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load ptr, ptr %4, align 8
  store ptr %22, ptr %6, align 8
  br label %46

23:                                               ; preds = %18
  %24 = load ptr, ptr %2, align 8
  %25 = invoke noundef i64 @"?_Getcat@?$ctype@D@std@@SA_KPEAPEBVfacet@locale@2@PEBV42@@Z"(ptr noundef %4, ptr noundef %24)
          to label %26 unwind label %49

26:                                               ; preds = %23
  %27 = icmp eq i64 %25, -1
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  invoke void @"?_Throw_bad_cast@std@@YAXXZ"() #19
          to label %29 unwind label %49

29:                                               ; preds = %28
  unreachable

30:                                               ; preds = %26
  %31 = load ptr, ptr %4, align 8
  store ptr %31, ptr %7, align 8
  %32 = load ptr, ptr %7, align 8
  %33 = call noundef ptr @"??$?0U?$default_delete@V_Facet_base@std@@@std@@$0A@@?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAA@PEAV_Facet_base@1@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %32) #18
  %34 = load ptr, ptr %7, align 8
  invoke void @"?_Facet_Register@std@@YAXPEAV_Facet_base@1@@Z"(ptr noundef %34)
          to label %35 unwind label %43

35:                                               ; preds = %30
  %36 = load ptr, ptr %7, align 8
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds ptr, ptr %37, i64 1
  %39 = load ptr, ptr %38, align 8
  call void %39(ptr noundef nonnull align 8 dereferenceable(16) %36) #18
  %40 = load ptr, ptr %4, align 8
  store ptr %40, ptr @"?_Psave@?$_Facetptr@V?$ctype@D@std@@@std@@2PEBVfacet@locale@2@EB", align 8
  %41 = load ptr, ptr %4, align 8
  store ptr %41, ptr %6, align 8
  %42 = call noundef ptr @"?release@?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAAPEAV_Facet_base@2@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %8) #18
  call void @"??1?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %8) #18
  br label %45

43:                                               ; preds = %30
  %44 = cleanuppad within none []
  call void @"??1?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %8) #18 [ "funclet"(token %44) ]
  cleanupret from %44 unwind label %49

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %21
  br label %47

47:                                               ; preds = %46, %15
  %48 = load ptr, ptr %6, align 8
  call void @"??1_Lockit@std@@QEAA@XZ"(ptr noundef nonnull align 4 dereferenceable(4) %3) #18
  ret ptr %48

49:                                               ; preds = %43, %28, %23, %1
  %50 = cleanuppad within none []
  call void @"??1_Lockit@std@@QEAA@XZ"(ptr noundef nonnull align 4 dereferenceable(4) %3) #18 [ "funclet"(token %50) ]
  cleanupret from %50 unwind to caller
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@_KD@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, i64 noundef %1, i8 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  %8 = alloca ptr, align 8
  %9 = alloca %"struct.std::_Fake_allocator", align 1
  %10 = alloca %"struct.std::_Fake_proxy_ptr_impl", align 1
  store i8 %2, ptr %4, align 1
  store i64 %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr inbounds %"class.std::basic_string", ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds %"struct.std::_Zero_then_variadic_args_t", ptr %7, i32 0, i32 0
  %14 = load i8, ptr %13, align 1
  %15 = call noundef ptr @"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 %14) #18
  store ptr %9, ptr %8, align 8
  %16 = getelementptr inbounds %"class.std::basic_string", ptr %11, i32 0, i32 0
  %17 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %16, i32 0, i32 0
  %18 = load ptr, ptr %8, align 8
  %19 = call noundef ptr @"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull align 1 dereferenceable(1) %17) #18
  call void @"?_Tidy_init@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %11) #18
  %20 = load i8, ptr %4, align 1
  %21 = load i64, ptr %5, align 8
  %22 = invoke noundef nonnull align 8 dereferenceable(32) ptr @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_KD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %21, i8 noundef %20)
          to label %23 unwind label %24

23:                                               ; preds = %3
  call void @"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %10) #18
  ret ptr %11

24:                                               ; preds = %3
  %25 = cleanuppad within none []
  call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %12) #18 [ "funclet"(token %25) ]
  cleanupret from %25 unwind to caller
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"?widen@?$ctype@D@std@@QEBAPEBDPEBD0PEAD@Z"(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 comdat align 2 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %7, align 8
  %13 = load ptr, ptr %9, align 8
  %14 = getelementptr inbounds ptr, ptr %13, i64 7
  %15 = load ptr, ptr %14, align 8
  %16 = call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %12, ptr noundef %11, ptr noundef %10)
  ret ptr %16
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #0 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"class.std::basic_string", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %6, i32 0, i32 0
  %8 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(32) %7) #18
  %9 = load i64, ptr %3, align 8
  %10 = getelementptr inbounds i8, ptr %8, i64 %9
  ret ptr %10
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(48) ptr @"??$use_facet@V?$numpunct@D@std@@@std@@YAAEBV?$numpunct@D@0@AEBVlocale@0@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0) #1 comdat personality ptr @__CxxFrameHandler3 {
  %2 = alloca ptr, align 8
  %3 = alloca %"class.std::_Lockit", align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"class.std::unique_ptr", align 8
  store ptr %0, ptr %2, align 8
  %9 = call noundef ptr @"??0_Lockit@std@@QEAA@H@Z"(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 0) #18
  %10 = load ptr, ptr @"?_Psave@?$_Facetptr@V?$numpunct@D@std@@@std@@2PEBVfacet@locale@2@EB", align 8
  store ptr %10, ptr %4, align 8
  %11 = call noundef i64 @"??Bid@locale@std@@QEAA_KXZ"(ptr noundef nonnull align 8 dereferenceable(8) @"?id@?$numpunct@D@std@@2V0locale@2@A")
  store i64 %11, ptr %5, align 8
  %12 = load ptr, ptr %2, align 8
  %13 = load i64, ptr %5, align 8
  %14 = invoke noundef ptr @"?_Getfacet@locale@std@@QEBAPEBVfacet@12@_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef %13)
          to label %15 unwind label %49

15:                                               ; preds = %1
  store ptr %14, ptr %6, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = icmp ne ptr %16, null
  br i1 %17, label %47, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %4, align 8
  %20 = icmp ne ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load ptr, ptr %4, align 8
  store ptr %22, ptr %6, align 8
  br label %46

23:                                               ; preds = %18
  %24 = load ptr, ptr %2, align 8
  %25 = invoke noundef i64 @"?_Getcat@?$numpunct@D@std@@SA_KPEAPEBVfacet@locale@2@PEBV42@@Z"(ptr noundef %4, ptr noundef %24)
          to label %26 unwind label %49

26:                                               ; preds = %23
  %27 = icmp eq i64 %25, -1
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  invoke void @"?_Throw_bad_cast@std@@YAXXZ"() #19
          to label %29 unwind label %49

29:                                               ; preds = %28
  unreachable

30:                                               ; preds = %26
  %31 = load ptr, ptr %4, align 8
  store ptr %31, ptr %7, align 8
  %32 = load ptr, ptr %7, align 8
  %33 = call noundef ptr @"??$?0U?$default_delete@V_Facet_base@std@@@std@@$0A@@?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAA@PEAV_Facet_base@1@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %32) #18
  %34 = load ptr, ptr %7, align 8
  invoke void @"?_Facet_Register@std@@YAXPEAV_Facet_base@1@@Z"(ptr noundef %34)
          to label %35 unwind label %43

35:                                               ; preds = %30
  %36 = load ptr, ptr %7, align 8
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds ptr, ptr %37, i64 1
  %39 = load ptr, ptr %38, align 8
  call void %39(ptr noundef nonnull align 8 dereferenceable(16) %36) #18
  %40 = load ptr, ptr %4, align 8
  store ptr %40, ptr @"?_Psave@?$_Facetptr@V?$numpunct@D@std@@@std@@2PEBVfacet@locale@2@EB", align 8
  %41 = load ptr, ptr %4, align 8
  store ptr %41, ptr %6, align 8
  %42 = call noundef ptr @"?release@?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAAPEAV_Facet_base@2@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %8) #18
  call void @"??1?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %8) #18
  br label %45

43:                                               ; preds = %30
  %44 = cleanuppad within none []
  call void @"??1?$unique_ptr@V_Facet_base@std@@U?$default_delete@V_Facet_base@std@@@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %8) #18 [ "funclet"(token %44) ]
  cleanupret from %44 unwind label %49

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %21
  br label %47

47:                                               ; preds = %46, %15
  %48 = load ptr, ptr %6, align 8
  call void @"??1_Lockit@std@@QEAA@XZ"(ptr noundef nonnull align 4 dereferenceable(4) %3) #18
  ret ptr %48

49:                                               ; preds = %43, %28, %23, %1
  %50 = cleanuppad within none []
  call void @"??1_Lockit@std@@QEAA@XZ"(ptr noundef nonnull align 4 dereferenceable(4) %3) #18 [ "funclet"(token %50) ]
  cleanupret from %50 unwind to caller
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?grouping@?$numpunct@D@std@@QEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noalias sret(%"class.std::basic_string") align 8 %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  call void %8(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr sret(%"class.std::basic_string") align 8 %1)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAAEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #0 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"class.std::basic_string", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %6, i32 0, i32 0
  %8 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %7) #18
  %9 = load i64, ptr %3, align 8
  %10 = getelementptr inbounds i8, ptr %8, i64 %9
  ret ptr %10
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i8 @"?thousands_sep@?$numpunct@D@std@@QEBADXZ"(ptr noundef nonnull align 8 dereferenceable(48) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = call noundef i8 %6(ptr noundef nonnull align 8 dereferenceable(48) %3)
  ret i8 %7
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K0D@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i8 noundef %3) #1 comdat align 2 {
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca %class.anon.4, align 1
  store i8 %3, ptr %6, align 1
  store i64 %2, ptr %7, align 8
  store i64 %1, ptr %8, align 8
  store ptr %0, ptr %9, align 8
  %14 = load ptr, ptr %9, align 8
  %15 = getelementptr inbounds %"class.std::basic_string", ptr %14, i32 0, i32 0
  %16 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %15, i32 0, i32 0
  %17 = load i64, ptr %8, align 8
  call void @"?_Check_offset@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAX_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %17)
  %18 = getelementptr inbounds %"class.std::basic_string", ptr %14, i32 0, i32 0
  %19 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %18, i32 0, i32 0
  %20 = getelementptr inbounds %"class.std::_String_val", ptr %19, i32 0, i32 1
  %21 = load i64, ptr %20, align 8
  store i64 %21, ptr %10, align 8
  %22 = load i64, ptr %7, align 8
  %23 = getelementptr inbounds %"class.std::basic_string", ptr %14, i32 0, i32 0
  %24 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %23, i32 0, i32 0
  %25 = getelementptr inbounds %"class.std::_String_val", ptr %24, i32 0, i32 2
  %26 = load i64, ptr %25, align 8
  %27 = load i64, ptr %10, align 8
  %28 = sub i64 %26, %27
  %29 = icmp ule i64 %22, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %4
  %31 = load i64, ptr %10, align 8
  %32 = load i64, ptr %7, align 8
  %33 = add i64 %31, %32
  %34 = getelementptr inbounds %"class.std::basic_string", ptr %14, i32 0, i32 0
  %35 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %34, i32 0, i32 0
  %36 = getelementptr inbounds %"class.std::_String_val", ptr %35, i32 0, i32 1
  store i64 %33, ptr %36, align 8
  %37 = getelementptr inbounds %"class.std::basic_string", ptr %14, i32 0, i32 0
  %38 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %37, i32 0, i32 0
  %39 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(32) %38) #18
  store ptr %39, ptr %11, align 8
  %40 = load ptr, ptr %11, align 8
  %41 = load i64, ptr %8, align 8
  %42 = getelementptr inbounds i8, ptr %40, i64 %41
  store ptr %42, ptr %12, align 8
  %43 = load i64, ptr %10, align 8
  %44 = load i64, ptr %8, align 8
  %45 = sub i64 %43, %44
  %46 = add i64 %45, 1
  %47 = load ptr, ptr %12, align 8
  %48 = load ptr, ptr %12, align 8
  %49 = load i64, ptr %7, align 8
  %50 = getelementptr inbounds i8, ptr %48, i64 %49
  %51 = call noundef ptr @"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %50, ptr noundef %47, i64 noundef %46) #18
  %52 = load i8, ptr %6, align 1
  %53 = load i64, ptr %7, align 8
  %54 = load ptr, ptr %12, align 8
  %55 = call noundef ptr @"?assign@?$_Narrow_char_traits@DH@std@@SAPEADQEAD_KD@Z"(ptr noundef %54, i64 noundef %53, i8 noundef %52) #18
  store ptr %14, ptr %5, align 8
  br label %64

56:                                               ; preds = %4
  %57 = load i8, ptr %6, align 1
  %58 = load i64, ptr %7, align 8
  %59 = load i64, ptr %8, align 8
  %60 = load i64, ptr %7, align 8
  %61 = getelementptr inbounds %class.anon.4, ptr %13, i32 0, i32 0
  %62 = load i8, ptr %61, align 1
  %63 = call noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_grow_by@V<lambda_1>@?0??insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@_K0D@Z@_K_KD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??insert@01@QEAAAEAV01@00D@Z@_K2D@Z"(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %60, i8 %62, i64 noundef %59, i64 noundef %58, i8 noundef %57)
  store ptr %63, ptr %5, align 8
  br label %64

64:                                               ; preds = %56, %30
  %65 = load ptr, ptr %5, align 8
  ret ptr %65
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::basic_string", ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds %"class.std::_String_val", ptr %5, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  ret i64 %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?width@ios_base@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(72) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::ios_base", ptr %3, i32 0, i32 6
  %5 = load i64, ptr %4, align 8
  ret i64 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?_Rep@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@D_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias sret(%"class.std::ostreambuf_iterator") align 8 %1, ptr noundef %2, i8 noundef %3, i64 noundef %4) #1 comdat align 2 {
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca ptr, align 8
  store ptr %1, ptr %6, align 8
  store i64 %4, ptr %7, align 8
  store i8 %3, ptr %8, align 1
  store ptr %0, ptr %9, align 8
  %10 = load ptr, ptr %9, align 8
  br label %11

11:                                               ; preds = %18, %5
  %12 = load i64, ptr %7, align 8
  %13 = icmp ult i64 0, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load i8, ptr %8, align 1
  %16 = call noundef nonnull align 8 dereferenceable(16) ptr @"??D?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@QEAAAEAV01@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %17 = call noundef nonnull align 8 dereferenceable(16) ptr @"??4?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@QEAAAEAV01@D@Z"(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 noundef %15)
  br label %18

18:                                               ; preds = %14
  %19 = load i64, ptr %7, align 8
  %20 = add i64 %19, -1
  store i64 %20, ptr %7, align 8
  %21 = call noundef nonnull align 8 dereferenceable(16) ptr @"??E?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@QEAAAEAV01@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %11, !llvm.loop !15

22:                                               ; preds = %11
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?_Put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@PEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias sret(%"class.std::ostreambuf_iterator") align 8 %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) #1 comdat align 2 {
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %1, ptr %6, align 8
  store i64 %4, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  store ptr %0, ptr %9, align 8
  %10 = load ptr, ptr %9, align 8
  br label %11

11:                                               ; preds = %19, %5
  %12 = load i64, ptr %7, align 8
  %13 = icmp ult i64 0, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8
  %16 = load i8, ptr %15, align 1
  %17 = call noundef nonnull align 8 dereferenceable(16) ptr @"??D?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@QEAAAEAV01@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %18 = call noundef nonnull align 8 dereferenceable(16) ptr @"??4?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@QEAAAEAV01@D@Z"(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 noundef %16)
  br label %19

19:                                               ; preds = %14
  %20 = load i64, ptr %7, align 8
  %21 = add i64 %20, -1
  store i64 %21, ptr %7, align 8
  %22 = call noundef nonnull align 8 dereferenceable(16) ptr @"??E?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@QEAAAEAV01@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %23 = load ptr, ptr %8, align 8
  %24 = getelementptr inbounds i8, ptr %23, i32 1
  store ptr %24, ptr %8, align 8
  br label %11, !llvm.loop !16

25:                                               ; preds = %11
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?width@ios_base@std@@QEAA_J_J@Z"(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1) #0 comdat align 2 {
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

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  %4 = getelementptr inbounds %"class.std::basic_string", ptr %3, i32 0, i32 0
  call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i64 @"?_Getcat@?$ctype@D@std@@SA_KPEAPEBVfacet@locale@2@PEBV42@@Z"(ptr noundef %0, ptr noundef %1) #1 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::_Locinfo", align 8
  %6 = alloca i1, align 1
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8
  %11 = load ptr, ptr %10, align 8
  %12 = icmp ne ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %9
  %14 = call noalias noundef nonnull ptr @"??2@YAPEAX_K@Z"(i64 noundef 48) #21
  store i1 true, ptr %6, align 1
  %15 = load ptr, ptr %3, align 8
  %16 = call noundef ptr @"?c_str@locale@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(16) %15)
  %17 = invoke noundef ptr @"??0_Locinfo@std@@QEAA@PEBD@Z"(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef %16)
          to label %18 unwind label %24

18:                                               ; preds = %13
  %19 = invoke noundef ptr @"??0?$ctype@D@std@@QEAA@AEBV_Locinfo@1@_K@Z"(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull align 8 dereferenceable(104) %5, i64 noundef 0)
          to label %20 unwind label %22

20:                                               ; preds = %18
  store i1 false, ptr %6, align 1
  %21 = load ptr, ptr %4, align 8
  store ptr %14, ptr %21, align 8
  call void @"??1_Locinfo@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(104) %5) #18
  br label %29

22:                                               ; preds = %18
  %23 = cleanuppad within none []
  call void @"??1_Locinfo@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(104) %5) #18 [ "funclet"(token %23) ]
  cleanupret from %23 unwind label %24

24:                                               ; preds = %22, %13
  %25 = cleanuppad within none []
  %26 = load i1, ptr %6, align 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  call void @"??3@YAXPEAX@Z"(ptr noundef %14) #22 [ "funclet"(token %25) ]
  br label %28

28:                                               ; preds = %27, %24
  cleanupret from %25 unwind to caller

29:                                               ; preds = %20, %9, %2
  ret i64 2
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$ctype@D@std@@QEAA@AEBV_Locinfo@1@_K@Z"(ptr noundef nonnull returned align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i64 %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load i64, ptr %4, align 8
  %9 = call noundef ptr @"??0ctype_base@std@@QEAA@_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %8)
  store ptr @"??_7?$ctype@D@std@@6B@", ptr %7, align 8
  %10 = getelementptr inbounds %"class.std::ctype", ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %5, align 8
  invoke void @"?_Init@?$ctype@D@std@@IEAAXAEBV_Locinfo@2@@Z"(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(104) %11)
          to label %12 unwind label %13

12:                                               ; preds = %3
  ret ptr %7

13:                                               ; preds = %3
  %14 = cleanuppad within none []
  call void @"??1ctype_base@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %7) #18 [ "funclet"(token %14) ]
  cleanupret from %14 unwind to caller
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0ctype_base@std@@QEAA@_K@Z"(ptr noundef nonnull returned align 8 dereferenceable(16) %0, i64 noundef %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load i64, ptr %3, align 8
  %7 = call noundef ptr @"??0facet@locale@std@@IEAA@_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %6)
  store ptr @"??_7ctype_base@std@@6B@", ptr %5, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?_Init@?$ctype@D@std@@IEAAXAEBV_Locinfo@2@@Z"(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct._Ctypevec, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %3, align 8
  call void @"?_Getctype@_Locinfo@std@@QEBA?AU_Ctypevec@@XZ"(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr sret(%struct._Ctypevec) align 8 %5)
  %8 = getelementptr inbounds %"class.std::ctype", ptr %6, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %5, i64 32, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1ctype_base@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1facet@locale@std@@MEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??_G?$ctype@D@std@@MEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1?$ctype@D@std@@MEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(48) %6) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX@Z"(ptr noundef %6) #22
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"?do_tolower@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z"(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  call void @"??$_Adl_verify_range@PEADPEBD@std@@YAXAEBQEADAEBQEBD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %8

8:                                                ; preds = %20, %3
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = icmp ne ptr %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.std::ctype", ptr %7, i32 0, i32 1
  %14 = load ptr, ptr %5, align 8
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = call i32 @_Tolower(i32 noundef %16, ptr noundef %13)
  %18 = trunc i32 %17 to i8
  %19 = load ptr, ptr %5, align 8
  store i8 %18, ptr %19, align 1
  br label %20

20:                                               ; preds = %12
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %22, ptr %5, align 8
  br label %8, !llvm.loop !17

23:                                               ; preds = %8
  %24 = load ptr, ptr %5, align 8
  ret ptr %24
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i8 @"?do_tolower@?$ctype@D@std@@MEBADD@Z"(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  store i8 %1, ptr %3, align 1
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"class.std::ctype", ptr %5, i32 0, i32 1
  %7 = load i8, ptr %3, align 1
  %8 = zext i8 %7 to i32
  %9 = call i32 @_Tolower(i32 noundef %8, ptr noundef %6)
  %10 = trunc i32 %9 to i8
  ret i8 %10
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"?do_toupper@?$ctype@D@std@@MEBAPEBDPEADPEBD@Z"(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  call void @"??$_Adl_verify_range@PEADPEBD@std@@YAXAEBQEADAEBQEBD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %8

8:                                                ; preds = %20, %3
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = icmp ne ptr %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.std::ctype", ptr %7, i32 0, i32 1
  %14 = load ptr, ptr %5, align 8
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = call i32 @_Toupper(i32 noundef %16, ptr noundef %13)
  %18 = trunc i32 %17 to i8
  %19 = load ptr, ptr %5, align 8
  store i8 %18, ptr %19, align 1
  br label %20

20:                                               ; preds = %12
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %22, ptr %5, align 8
  br label %8, !llvm.loop !18

23:                                               ; preds = %8
  %24 = load ptr, ptr %5, align 8
  ret ptr %24
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i8 @"?do_toupper@?$ctype@D@std@@MEBADD@Z"(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  store i8 %1, ptr %3, align 1
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"class.std::ctype", ptr %5, i32 0, i32 1
  %7 = load i8, ptr %3, align 1
  %8 = zext i8 %7 to i32
  %9 = call i32 @_Toupper(i32 noundef %8, ptr noundef %6)
  %10 = trunc i32 %9 to i8
  ret i8 %10
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"?do_widen@?$ctype@D@std@@MEBAPEBDPEBD0PEAD@Z"(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 comdat align 2 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %9 = load ptr, ptr %8, align 8
  call void @"??$_Adl_verify_range@PEBDPEBD@std@@YAXAEBQEBD0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %10 = load ptr, ptr %5, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %7, align 8
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %11, i64 %16, i1 false)
  %17 = load ptr, ptr %6, align 8
  ret ptr %17
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8 @"?do_widen@?$ctype@D@std@@MEBADD@Z"(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  store i8 %1, ptr %3, align 1
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load i8, ptr %3, align 1
  ret i8 %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?do_narrow@?$ctype@D@std@@MEBAPEBDPEBD0DPEAD@Z"(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, i8 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %4, ptr %6, align 8
  store i8 %3, ptr %7, align 1
  store ptr %2, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  store ptr %0, ptr %10, align 8
  %11 = load ptr, ptr %10, align 8
  call void @"??$_Adl_verify_range@PEBDPEBD@std@@YAXAEBQEBD0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %9, align 8
  %14 = load ptr, ptr %8, align 8
  %15 = load ptr, ptr %9, align 8
  %16 = ptrtoint ptr %14 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %13, i64 %18, i1 false)
  %19 = load ptr, ptr %8, align 8
  ret ptr %19
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8 @"?do_narrow@?$ctype@D@std@@MEBADDD@Z"(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef %1, i8 noundef %2) unnamed_addr #0 comdat align 2 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca ptr, align 8
  store i8 %2, ptr %4, align 1
  store i8 %1, ptr %5, align 1
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load i8, ptr %5, align 1
  ret i8 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??_Gctype_base@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1ctype_base@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX@Z"(ptr noundef %6) #22
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?_Getctype@_Locinfo@std@@QEBA?AU_Ctypevec@@XZ"(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noalias sret(%struct._Ctypevec) align 8 %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  call void @_Getctype(ptr sret(%struct._Ctypevec) align 8 %1)
  ret void
}

declare dso_local void @_Getctype(ptr sret(%struct._Ctypevec) align 8) #7

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$ctype@D@std@@MEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  store ptr @"??_7?$ctype@D@std@@6B@", ptr %3, align 8
  call void @"?_Tidy@?$ctype@D@std@@IEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(48) %3) #18
  call void @"??1ctype_base@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Tidy@?$ctype@D@std@@IEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(48) %0) #0 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::ctype", ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct._Ctypevec, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = icmp slt i32 0, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.std::ctype", ptr %3, i32 0, i32 1
  %10 = getelementptr inbounds %struct._Ctypevec, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  invoke void @free(ptr noundef %11)
          to label %12 unwind label %31

12:                                               ; preds = %8
  br label %26

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.std::ctype", ptr %3, i32 0, i32 1
  %15 = getelementptr inbounds %struct._Ctypevec, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = getelementptr inbounds %"class.std::ctype", ptr %3, i32 0, i32 1
  %20 = getelementptr inbounds %struct._Ctypevec, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  call void @"??_V@YAXPEAX@Z"(ptr noundef %21) #22
  br label %24

24:                                               ; preds = %23, %18
  br label %25

25:                                               ; preds = %24, %13
  br label %26

26:                                               ; preds = %25, %12
  %27 = getelementptr inbounds %"class.std::ctype", ptr %3, i32 0, i32 1
  %28 = getelementptr inbounds %struct._Ctypevec, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 8
  invoke void @free(ptr noundef %29)
          to label %30 unwind label %31

30:                                               ; preds = %26
  ret void

31:                                               ; preds = %26, %8
  %32 = cleanuppad within none []
  call void @__std_terminate() #20 [ "funclet"(token %32) ]
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @"??_V@YAXPEAX@Z"(ptr noundef) #9

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Adl_verify_range@PEADPEBD@std@@YAXAEBQEADAEBQEBD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  ret void
}

declare dso_local i32 @_Tolower(i32 noundef, ptr noundef) #7

declare dso_local i32 @_Toupper(i32 noundef, ptr noundef) #7

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Adl_verify_range@PEBDPEBD@std@@YAXAEBQEBD0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, i8 %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %"struct.std::_Zero_then_variadic_args_t", ptr %3, i32 0, i32 0
  store i8 %1, ptr %5, align 1
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call noundef ptr @"??0?$allocator@D@std@@QEAA@XZ"(ptr noundef nonnull align 1 dereferenceable(1) %6) #18
  %8 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %6, i32 0, i32 0
  %9 = call noundef ptr @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %8) #18
  ret ptr %6
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z"(ptr noundef nonnull returned align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat align 2 {
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
define linkonce_odr dso_local void @"?_Tidy_init@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %"class.std::basic_string", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds %"class.std::_String_val", ptr %6, i32 0, i32 1
  store i64 0, ptr %7, align 8
  %8 = getelementptr inbounds %"class.std::basic_string", ptr %4, i32 0, i32 0
  %9 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %8, i32 0, i32 0
  %10 = getelementptr inbounds %"class.std::_String_val", ptr %9, i32 0, i32 2
  store i64 15, ptr %10, align 8
  store i8 0, ptr %3, align 1
  %11 = getelementptr inbounds %"class.std::basic_string", ptr %4, i32 0, i32 0
  %12 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds %"class.std::_String_val", ptr %12, i32 0, i32 0
  %14 = getelementptr inbounds [16 x i8], ptr %13, i64 0, i64 0
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_KD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 noundef %2) #1 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  %10 = alloca %class.anon, align 1
  store i8 %2, ptr %5, align 1
  store i64 %1, ptr %6, align 8
  store ptr %0, ptr %7, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load i64, ptr %6, align 8
  %13 = getelementptr inbounds %"class.std::basic_string", ptr %11, i32 0, i32 0
  %14 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %13, i32 0, i32 0
  %15 = getelementptr inbounds %"class.std::_String_val", ptr %14, i32 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = icmp ule i64 %12, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %3
  %19 = getelementptr inbounds %"class.std::basic_string", ptr %11, i32 0, i32 0
  %20 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %19, i32 0, i32 0
  %21 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(32) %20) #18
  store ptr %21, ptr %8, align 8
  %22 = load i64, ptr %6, align 8
  %23 = getelementptr inbounds %"class.std::basic_string", ptr %11, i32 0, i32 0
  %24 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %23, i32 0, i32 0
  %25 = getelementptr inbounds %"class.std::_String_val", ptr %24, i32 0, i32 1
  store i64 %22, ptr %25, align 8
  %26 = load i8, ptr %5, align 1
  %27 = load i64, ptr %6, align 8
  %28 = load ptr, ptr %8, align 8
  %29 = call noundef ptr @"?assign@?$_Narrow_char_traits@DH@std@@SAPEADQEAD_KD@Z"(ptr noundef %28, i64 noundef %27, i8 noundef %26) #18
  store i8 0, ptr %9, align 1
  %30 = load ptr, ptr %8, align 8
  %31 = load i64, ptr %6, align 8
  %32 = getelementptr inbounds i8, ptr %30, i64 %31
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %32, ptr noundef nonnull align 1 dereferenceable(1) %9) #18
  store ptr %11, ptr %4, align 8
  br label %39

33:                                               ; preds = %3
  %34 = load i8, ptr %5, align 1
  %35 = load i64, ptr %6, align 8
  %36 = getelementptr inbounds %class.anon, ptr %10, i32 0, i32 0
  %37 = load i8, ptr %36, align 1
  %38 = call noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@_KD@Z@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??assign@01@QEAAAEAV01@0D@Z@D@Z"(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %35, i8 %37, i8 noundef %34)
  store ptr %38, ptr %4, align 8
  br label %39

39:                                               ; preds = %33, %18
  %40 = load ptr, ptr %4, align 8
  ret ptr %40
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %3, i32 0, i32 0
  call void @"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$allocator@D@std@@QEAA@XZ"(ptr noundef nonnull returned align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::_String_val", ptr %3, i32 0, i32 0
  %5 = call noundef ptr @"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  %6 = getelementptr inbounds %"class.std::_String_val", ptr %3, i32 0, i32 1
  store i64 0, ptr %6, align 8
  %7 = getelementptr inbounds %"class.std::_String_val", ptr %3, i32 0, i32 2
  store i64 0, ptr %7, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #0 comdat align 2 {
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
define linkonce_odr dso_local noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %"class.std::_String_val", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds [16 x i8], ptr %5, i64 0, i64 0
  store ptr %6, ptr %3, align 8
  %7 = call noundef zeroext i1 @"?_Large_string_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.std::_String_val", ptr %4, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %10) #18
  store ptr %11, ptr %3, align 8
  br label %12

12:                                               ; preds = %8, %1
  %13 = load ptr, ptr %3, align 8
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?assign@?$_Narrow_char_traits@DH@std@@SAPEADQEAD_KD@Z"(ptr noundef %0, i64 noundef %1, i8 noundef %2) #0 comdat align 2 {
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store i8 %2, ptr %4, align 1
  store i64 %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load i8, ptr %4, align 1
  %9 = sext i8 %8 to i32
  %10 = trunc i32 %9 to i8
  %11 = load i64, ptr %5, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %7, i8 %10, i64 %11, i1 false)
  ret ptr %7
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@_KD@Z@D@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??assign@01@QEAAAEAV01@0D@Z@D@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 %2, i8 noundef %3) #1 comdat align 2 {
  %5 = alloca %class.anon, align 1
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = getelementptr inbounds %class.anon, ptr %5, i32 0, i32 0
  store i8 %2, ptr %13, align 1
  store i8 %3, ptr %6, align 1
  store i64 %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %14 = load ptr, ptr %8, align 8
  %15 = load i64, ptr %7, align 8
  %16 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %14) #18
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  call void @"?_Xlen_string@std@@YAXXZ"() #19
  unreachable

19:                                               ; preds = %4
  %20 = getelementptr inbounds %"class.std::basic_string", ptr %14, i32 0, i32 0
  %21 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %20, i32 0, i32 0
  %22 = getelementptr inbounds %"class.std::_String_val", ptr %21, i32 0, i32 2
  %23 = load i64, ptr %22, align 8
  store i64 %23, ptr %9, align 8
  %24 = load i64, ptr %7, align 8
  %25 = call noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %24) #18
  store i64 %25, ptr %10, align 8
  %26 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %14) #18
  store ptr %26, ptr %11, align 8
  %27 = load ptr, ptr %11, align 8
  %28 = load i64, ptr %10, align 8
  %29 = add i64 %28, 1
  %30 = call noundef ptr @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %27, i64 noundef %29)
  store ptr %30, ptr %12, align 8
  %31 = getelementptr inbounds %"class.std::basic_string", ptr %14, i32 0, i32 0
  %32 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %31, i32 0, i32 0
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %32) #18
  %33 = load i64, ptr %7, align 8
  %34 = getelementptr inbounds %"class.std::basic_string", ptr %14, i32 0, i32 0
  %35 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %34, i32 0, i32 0
  %36 = getelementptr inbounds %"class.std::_String_val", ptr %35, i32 0, i32 1
  store i64 %33, ptr %36, align 8
  %37 = load i64, ptr %10, align 8
  %38 = getelementptr inbounds %"class.std::basic_string", ptr %14, i32 0, i32 0
  %39 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %38, i32 0, i32 0
  %40 = getelementptr inbounds %"class.std::_String_val", ptr %39, i32 0, i32 2
  store i64 %37, ptr %40, align 8
  %41 = load i8, ptr %6, align 1
  %42 = load i64, ptr %7, align 8
  %43 = load ptr, ptr %12, align 8
  %44 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %43) #18
  call void @"??R<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@_KD@Z@QEBA?A?<auto>@@QEAD0D@Z"(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %44, i64 noundef %42, i8 noundef %41)
  %45 = load i64, ptr %9, align 8
  %46 = icmp ule i64 16, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %19
  %48 = load ptr, ptr %11, align 8
  %49 = load i64, ptr %9, align 8
  %50 = add i64 %49, 1
  %51 = getelementptr inbounds %"class.std::basic_string", ptr %14, i32 0, i32 0
  %52 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %51, i32 0, i32 0
  %53 = getelementptr inbounds %"class.std::_String_val", ptr %52, i32 0, i32 0
  %54 = load ptr, ptr %53, align 8
  call void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %48, ptr noundef %54, i64 noundef %50)
  %55 = load ptr, ptr %12, align 8
  %56 = getelementptr inbounds %"class.std::basic_string", ptr %14, i32 0, i32 0
  %57 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %56, i32 0, i32 0
  %58 = getelementptr inbounds %"class.std::_String_val", ptr %57, i32 0, i32 0
  store ptr %55, ptr %58, align 8
  br label %63

59:                                               ; preds = %19
  %60 = getelementptr inbounds %"class.std::basic_string", ptr %14, i32 0, i32 0
  %61 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %60, i32 0, i32 0
  %62 = getelementptr inbounds %"class.std::_String_val", ptr %61, i32 0, i32 0
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef nonnull align 8 dereferenceable(8) %12) #18
  br label %63

63:                                               ; preds = %59, %47
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"?_Large_string_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::_String_val", ptr %3, i32 0, i32 2
  %5 = load i64, ptr %4, align 8
  %6 = icmp ule i64 16, %5
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %0) #0 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  %8 = load ptr, ptr %2, align 8
  %9 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %8) #18
  %10 = call noundef i64 @"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %9) #18
  store i64 %10, ptr %3, align 8
  store i64 16, ptr %5, align 8
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @"??$max@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  %12 = load i64, ptr %11, align 8
  store i64 %12, ptr %4, align 8
  %13 = load i64, ptr %4, align 8
  %14 = sub i64 %13, 1
  store i64 %14, ptr %6, align 8
  %15 = call noundef i64 @"?max@?$numeric_limits@_J@std@@SA_JXZ"() #18
  store i64 %15, ptr %7, align 8
  %16 = call noundef nonnull align 8 dereferenceable(8) ptr @"??$min@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  %17 = load i64, ptr %16, align 8
  ret i64 %17
}

; Function Attrs: mustprogress noinline noreturn optnone uwtable
define linkonce_odr dso_local void @"?_Xlen_string@std@@YAXXZ"() #6 comdat {
  call void @"?_Xlength_error@std@@YAXPEBD@Z"(ptr noundef @"??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@") #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #0 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  %7 = getelementptr inbounds %"class.std::basic_string", ptr %5, i32 0, i32 0
  %8 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %7, i32 0, i32 0
  %9 = getelementptr inbounds %"class.std::_String_val", ptr %8, i32 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = load i64, ptr %3, align 8
  %12 = call noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z"(i64 noundef %11, i64 noundef %10, i64 noundef %6) #18
  ret i64 %12
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::basic_string", ptr %3, i32 0, i32 0
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #1 comdat align 2 {
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
define linkonce_odr dso_local void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??R<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@_KD@Z@QEBA?A?<auto>@@QEAD0D@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2, i8 noundef %3) #0 comdat align 2 {
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  store i8 %3, ptr %5, align 1
  store i64 %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %10 = load ptr, ptr %8, align 8
  %11 = load i8, ptr %5, align 1
  %12 = load i64, ptr %6, align 8
  %13 = load ptr, ptr %7, align 8
  %14 = call noundef ptr @"?assign@?$_Narrow_char_traits@DH@std@@SAPEADQEAD_KD@Z"(ptr noundef %13, i64 noundef %12, i8 noundef %11) #18
  store i8 0, ptr %9, align 1
  %15 = load ptr, ptr %7, align 8
  %16 = load i64, ptr %6, align 8
  %17 = getelementptr inbounds i8, ptr %15, i64 %16
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef nonnull align 1 dereferenceable(1) %9) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
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
  call void @"??$_Deallocate@$0BA@$0A@@std@@YAXPEAX_K@Z"(ptr noundef %10, i64 noundef %9) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
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
define linkonce_odr dso_local noundef i64 @"?max_size@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA_KAEBV?$allocator@D@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  ret i64 -1
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::basic_string", ptr %3, i32 0, i32 0
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @"??$max@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
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
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @"??$min@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
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
define linkonce_odr dso_local noundef i64 @"?max@?$numeric_limits@_J@std@@SA_JXZ"() #0 comdat align 2 {
  ret i64 9223372036854775807
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: noreturn
declare dso_local void @"?_Xlength_error@std@@YAXPEBD@Z"(ptr noundef) #10

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@CA_K_K00@Z"(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 comdat align 2 {
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
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @"??$max@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #18
  %32 = load i64, ptr %31, align 8
  store i64 %32, ptr %4, align 8
  br label %33

33:                                               ; preds = %26, %24, %15
  %34 = load i64, ptr %4, align 8
  ret i64 %34
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Allocate@$0BA@U_Default_allocate_traits@std@@$0A@@std@@YAPEAX_K@Z"(i64 noundef %0) #1 comdat {
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
define linkonce_odr dso_local noundef i64 @"??$_Get_size_of_n@$00@std@@YA_K_K@Z"(i64 noundef %0) #0 comdat {
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  store i64 %0, ptr %2, align 8
  store i8 0, ptr %3, align 1
  %4 = load i64, ptr %2, align 8
  %5 = mul i64 %4, 1
  ret i64 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Allocate_manually_vector_aligned@U_Default_allocate_traits@std@@@std@@YAPEAX_K@Z"(i64 noundef %0) #1 comdat {
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
  call void @"?_Throw_bad_array_new_length@std@@YAXXZ"() #19
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
  call void @_invalid_parameter_noinfo_noreturn() #19
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
define linkonce_odr dso_local noundef ptr @"?_Allocate@_Default_allocate_traits@std@@SAPEAX_K@Z"(i64 noundef %0) #1 comdat align 2 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = call noalias noundef nonnull ptr @"??2@YAPEAX_K@Z"(i64 noundef %3) #24
  ret ptr %4
}

; Function Attrs: mustprogress noinline noreturn optnone uwtable
define linkonce_odr dso_local void @"?_Throw_bad_array_new_length@std@@YAXXZ"() #6 comdat {
  %1 = alloca %"class.std::bad_array_new_length", align 8
  %2 = call noundef ptr @"??0bad_array_new_length@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  call void @_CxxThrowException(ptr %1, ptr @"_TI3?AVbad_array_new_length@std@@") #19
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @_invalid_parameter_noinfo_noreturn() #10

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_array_new_length@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @"??0bad_alloc@std@@AEAA@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef @"??_C@_0BF@KINCDENJ@bad?5array?5new?5length?$AA@") #18
  store ptr @"??_7bad_array_new_length@std@@6B@", ptr %3, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_array_new_length@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"??0bad_alloc@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #18
  store ptr @"??_7bad_array_new_length@std@@6B@", ptr %5, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_alloc@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"??0exception@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #18
  store ptr @"??_7bad_alloc@std@@6B@", ptr %5, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0exception@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 personality ptr @__CxxFrameHandler3 {
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
  call void @__std_terminate() #20 [ "funclet"(token %12) ]
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1bad_array_new_length@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1bad_alloc@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  ret void
}

declare dso_local void @_CxxThrowException(ptr, ptr)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_alloc@std@@AEAA@QEBD@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"??0exception@std@@QEAA@QEBDH@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %6, i32 noundef 1) #18
  store ptr @"??_7bad_alloc@std@@6B@", ptr %5, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??_Gbad_array_new_length@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1bad_array_new_length@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %6) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX@Z"(ptr noundef %6) #22
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?what@exception@std@@UEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
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
define linkonce_odr dso_local noundef ptr @"??0exception@std@@QEAA@QEBDH@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 {
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
define linkonce_odr dso_local noundef ptr @"??_Gbad_alloc@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1bad_alloc@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %6) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX@Z"(ptr noundef %6) #22
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??_Gexception@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1exception@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %6) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX@Z"(ptr noundef %6) #22
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1exception@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__CxxFrameHandler3 {
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
  call void @__std_terminate() #20 [ "funclet"(token %7) ]
  unreachable
}

declare dso_local void @__std_exception_destroy(ptr noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1bad_alloc@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1exception@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  ret void
}

declare dso_local void @__std_exception_copy(ptr noundef, ptr noundef) #7

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Deallocate@$0BA@$0A@@std@@YAXPEAX_K@Z"(ptr noundef %0, i64 noundef %1) #0 comdat personality ptr @__CxxFrameHandler3 {
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
  call void @"??3@YAXPEAX_K@Z"(ptr noundef %11, i64 noundef %10) #18
  ret void

12:                                               ; preds = %7
  %13 = cleanuppad within none []
  call void @__std_terminate() #20 [ "funclet"(token %13) ]
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?_Adjust_manually_vector_aligned@std@@YAXAEAPEAXAEA_K@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 comdat {
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
  call void @_invalid_parameter_noinfo_noreturn() #19
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
declare dso_local void @"??3@YAXPEAX_K@Z"(ptr noundef, i64 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::_String_val", ptr %3, i32 0, i32 0
  call void @"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1_Bxty@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i64 @"?_Getcat@?$numpunct@D@std@@SA_KPEAPEBVfacet@locale@2@PEBV42@@Z"(ptr noundef %0, ptr noundef %1) #1 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::_Locinfo", align 8
  %6 = alloca i1, align 1
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8
  %11 = load ptr, ptr %10, align 8
  %12 = icmp ne ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %9
  %14 = call noalias noundef nonnull ptr @"??2@YAPEAX_K@Z"(i64 noundef 48) #21
  store i1 true, ptr %6, align 1
  %15 = load ptr, ptr %3, align 8
  %16 = call noundef ptr @"?c_str@locale@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(16) %15)
  %17 = invoke noundef ptr @"??0_Locinfo@std@@QEAA@PEBD@Z"(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef %16)
          to label %18 unwind label %24

18:                                               ; preds = %13
  %19 = invoke noundef ptr @"??0?$numpunct@D@std@@QEAA@AEBV_Locinfo@1@_K_N@Z"(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull align 8 dereferenceable(104) %5, i64 noundef 0, i1 noundef zeroext true)
          to label %20 unwind label %22

20:                                               ; preds = %18
  store i1 false, ptr %6, align 1
  %21 = load ptr, ptr %4, align 8
  store ptr %14, ptr %21, align 8
  call void @"??1_Locinfo@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(104) %5) #18
  br label %29

22:                                               ; preds = %18
  %23 = cleanuppad within none []
  call void @"??1_Locinfo@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(104) %5) #18 [ "funclet"(token %23) ]
  cleanupret from %23 unwind label %24

24:                                               ; preds = %22, %13
  %25 = cleanuppad within none []
  %26 = load i1, ptr %6, align 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  call void @"??3@YAXPEAX@Z"(ptr noundef %14) #22 [ "funclet"(token %25) ]
  br label %28

28:                                               ; preds = %27, %24
  cleanupret from %25 unwind to caller

29:                                               ; preds = %20, %9, %2
  ret i64 4
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$numpunct@D@std@@QEAA@AEBV_Locinfo@1@_K_N@Z"(ptr noundef nonnull returned align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #4 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = zext i1 %3 to i8
  store i8 %9, ptr %5, align 1
  store i64 %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %10 = load ptr, ptr %8, align 8
  %11 = load i64, ptr %6, align 8
  %12 = call noundef ptr @"??0facet@locale@std@@IEAA@_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %10, i64 noundef %11)
  store ptr @"??_7?$numpunct@D@std@@6B@", ptr %10, align 8
  %13 = load i8, ptr %5, align 1
  %14 = trunc i8 %13 to i1
  %15 = load ptr, ptr %7, align 8
  invoke void @"?_Init@?$numpunct@D@std@@IEAAXAEBV_Locinfo@2@_N@Z"(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(104) %15, i1 noundef zeroext %14)
          to label %16 unwind label %17

16:                                               ; preds = %4
  ret ptr %10

17:                                               ; preds = %4
  %18 = cleanuppad within none []
  call void @"??1facet@locale@std@@MEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %10) #18 [ "funclet"(token %18) ]
  cleanupret from %18 unwind to caller
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?_Init@?$numpunct@D@std@@IEAAXAEBV_Locinfo@2@_N@Z"(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i1 noundef zeroext %2) #1 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct._Cvtvec, align 4
  %9 = alloca %"struct.std::_Tidy_guard", align 8
  %10 = alloca %struct._Cvtvec, align 4
  %11 = alloca %struct._Cvtvec, align 4
  %12 = zext i1 %2 to i8
  store i8 %12, ptr %4, align 1
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %13 = load ptr, ptr %6, align 8
  %14 = load ptr, ptr %5, align 8
  %15 = call noundef ptr @"?_Getlconv@_Locinfo@std@@QEBAPEBUlconv@@XZ"(ptr noundef nonnull align 8 dereferenceable(104) %14)
  store ptr %15, ptr %7, align 8
  %16 = load ptr, ptr %5, align 8
  call void @"?_Getcvt@_Locinfo@std@@QEBA?AU_Cvtvec@@XZ"(ptr noundef nonnull align 8 dereferenceable(104) %16, ptr sret(%struct._Cvtvec) align 4 %8)
  %17 = getelementptr inbounds %"class.std::numpunct", ptr %13, i32 0, i32 1
  store ptr null, ptr %17, align 8
  %18 = getelementptr inbounds %"class.std::numpunct", ptr %13, i32 0, i32 4
  store ptr null, ptr %18, align 8
  %19 = getelementptr inbounds %"class.std::numpunct", ptr %13, i32 0, i32 5
  store ptr null, ptr %19, align 8
  %20 = getelementptr inbounds %"struct.std::_Tidy_guard", ptr %9, i32 0, i32 0
  store ptr %13, ptr %20, align 8
  %21 = load ptr, ptr %5, align 8
  invoke void @"?_Getcvt@_Locinfo@std@@QEBA?AU_Cvtvec@@XZ"(ptr noundef nonnull align 8 dereferenceable(104) %21, ptr sret(%struct._Cvtvec) align 4 %10)
          to label %22 unwind label %61

22:                                               ; preds = %3
  %23 = load i8, ptr %4, align 1
  %24 = trunc i8 %23 to i1
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %30

26:                                               ; preds = %22
  %27 = load ptr, ptr %7, align 8
  %28 = getelementptr inbounds %struct.lconv, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8
  br label %30

30:                                               ; preds = %26, %25
  %31 = phi ptr [ @"??_C@_00CNPNBAHC@?$AA@", %25 ], [ %29, %26 ]
  %32 = invoke noundef ptr @"??$_Maklocstr@D@std@@YAPEADPEBDPEADAEBU_Cvtvec@@@Z"(ptr noundef %31, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(44) %10)
          to label %33 unwind label %61

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"class.std::numpunct", ptr %13, i32 0, i32 1
  store ptr %32, ptr %34, align 8
  %35 = load ptr, ptr %5, align 8
  %36 = invoke noundef ptr @"?_Getfalse@_Locinfo@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(104) %35)
          to label %37 unwind label %61

37:                                               ; preds = %33
  %38 = invoke noundef ptr @"??$_Maklocstr@D@std@@YAPEADPEBDPEADAEBU_Cvtvec@@@Z"(ptr noundef %36, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(44) %8)
          to label %39 unwind label %61

39:                                               ; preds = %37
  %40 = getelementptr inbounds %"class.std::numpunct", ptr %13, i32 0, i32 4
  store ptr %38, ptr %40, align 8
  %41 = load ptr, ptr %5, align 8
  %42 = invoke noundef ptr @"?_Gettrue@_Locinfo@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(104) %41)
          to label %43 unwind label %61

43:                                               ; preds = %39
  %44 = invoke noundef ptr @"??$_Maklocstr@D@std@@YAPEADPEBDPEADAEBU_Cvtvec@@@Z"(ptr noundef %42, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(44) %8)
          to label %45 unwind label %61

45:                                               ; preds = %43
  %46 = getelementptr inbounds %"class.std::numpunct", ptr %13, i32 0, i32 5
  store ptr %44, ptr %46, align 8
  %47 = getelementptr inbounds %"struct.std::_Tidy_guard", ptr %9, i32 0, i32 0
  store ptr null, ptr %47, align 8
  %48 = load i8, ptr %4, align 1
  %49 = trunc i8 %48 to i1
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = invoke noundef i8 @"??$_Maklocchr@D@std@@YADDPEADAEBU_Cvtvec@@@Z"(i8 noundef 46, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(44) %8)
          to label %52 unwind label %61

52:                                               ; preds = %50
  %53 = getelementptr inbounds %"class.std::numpunct", ptr %13, i32 0, i32 2
  store i8 %51, ptr %53, align 8
  %54 = invoke noundef i8 @"??$_Maklocchr@D@std@@YADDPEADAEBU_Cvtvec@@@Z"(i8 noundef 44, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(44) %8)
          to label %55 unwind label %61

55:                                               ; preds = %52
  %56 = getelementptr inbounds %"class.std::numpunct", ptr %13, i32 0, i32 3
  store i8 %54, ptr %56, align 1
  br label %60

57:                                               ; preds = %45
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %11, ptr align 4 %8, i64 44, i1 false)
  %58 = load ptr, ptr %7, align 8
  invoke void @"??$_Getvals@D@?$numpunct@D@std@@IEAAXDPEBUlconv@@U_Cvtvec@@@Z"(ptr noundef nonnull align 8 dereferenceable(48) %13, i8 noundef 0, ptr noundef %58, ptr noundef %11)
          to label %59 unwind label %61

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %59, %55
  call void @"??1?$_Tidy_guard@V?$numpunct@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %9) #18
  ret void

61:                                               ; preds = %57, %52, %50, %43, %39, %37, %33, %30, %3
  %62 = cleanuppad within none []
  call void @"??1?$_Tidy_guard@V?$numpunct@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %9) #18 [ "funclet"(token %62) ]
  cleanupret from %62 unwind to caller
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??_G?$numpunct@D@std@@MEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1?$numpunct@D@std@@MEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(48) %6) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX@Z"(ptr noundef %6) #22
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8 @"?do_decimal_point@?$numpunct@D@std@@MEBADXZ"(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::numpunct", ptr %3, i32 0, i32 2
  %5 = load i8, ptr %4, align 8
  ret i8 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8 @"?do_thousands_sep@?$numpunct@D@std@@MEBADXZ"(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::numpunct", ptr %3, i32 0, i32 3
  %5 = load i8, ptr %4, align 1
  ret i8 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?do_grouping@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noalias sret(%"class.std::basic_string") align 8 %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"class.std::numpunct", ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %7)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?do_falsename@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noalias sret(%"class.std::basic_string") align 8 %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"class.std::numpunct", ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %7)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?do_truename@?$numpunct@D@std@@MEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noalias sret(%"class.std::basic_string") align 8 %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"class.std::numpunct", ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %7)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"?_Getlconv@_Locinfo@std@@QEBAPEBUlconv@@XZ"(ptr noundef nonnull align 8 dereferenceable(104) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @localeconv()
  ret ptr %4
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?_Getcvt@_Locinfo@std@@QEBA?AU_Cvtvec@@XZ"(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noalias sret(%struct._Cvtvec) align 4 %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  call void @_Getcvt(ptr sret(%struct._Cvtvec) align 4 %1)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$_Maklocstr@D@std@@YAPEADPEBDPEADAEBU_Cvtvec@@@Z"(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(44) %2) #1 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = call i64 @strlen(ptr noundef %10)
  %12 = add i64 %11, 1
  store i64 %12, ptr %7, align 8
  %13 = load i64, ptr %7, align 8
  %14 = call noalias ptr @calloc(i64 noundef %13, i64 noundef 1) #25
  store ptr %14, ptr %8, align 8
  %15 = load ptr, ptr %8, align 8
  %16 = icmp ne ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  call void @"?_Xbad_alloc@std@@YAXXZ"() #19
  unreachable

18:                                               ; preds = %3
  %19 = load ptr, ptr %8, align 8
  store ptr %19, ptr %9, align 8
  br label %20

20:                                               ; preds = %27, %18
  %21 = load i64, ptr %7, align 8
  %22 = icmp ult i64 0, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load ptr, ptr %6, align 8
  %25 = load i8, ptr %24, align 1
  %26 = load ptr, ptr %9, align 8
  store i8 %25, ptr %26, align 1
  br label %27

27:                                               ; preds = %23
  %28 = load i64, ptr %7, align 8
  %29 = add i64 %28, -1
  store i64 %29, ptr %7, align 8
  %30 = load ptr, ptr %9, align 8
  %31 = getelementptr inbounds i8, ptr %30, i32 1
  store ptr %31, ptr %9, align 8
  %32 = load ptr, ptr %6, align 8
  %33 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %33, ptr %6, align 8
  br label %20, !llvm.loop !19

34:                                               ; preds = %20
  %35 = load ptr, ptr %8, align 8
  ret ptr %35
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?_Getfalse@_Locinfo@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(104) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr @"??_C@_05LAPONLG@false?$AA@"
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?_Gettrue@_Locinfo@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(104) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr @"??_C@_04LOAJBDKD@true?$AA@"
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8 @"??$_Maklocchr@D@std@@YADDPEADAEBU_Cvtvec@@@Z"(i8 noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(44) %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i8 %0, ptr %6, align 1
  %7 = load i8, ptr %6, align 1
  ret i8 %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Getvals@D@?$numpunct@D@std@@IEAAXDPEBUlconv@@U_Cvtvec@@@Z"(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat align 2 {
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  store ptr %2, ptr %5, align 8
  store i8 %1, ptr %6, align 1
  store ptr %0, ptr %7, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds %struct.lconv, ptr %9, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds i8, ptr %11, i64 0
  %13 = load i8, ptr %12, align 1
  %14 = call noundef i8 @"??$_Maklocchr@D@std@@YADDPEADAEBU_Cvtvec@@@Z"(i8 noundef %13, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(44) %3)
  %15 = getelementptr inbounds %"class.std::numpunct", ptr %8, i32 0, i32 2
  store i8 %14, ptr %15, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds %struct.lconv, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds i8, ptr %18, i64 0
  %20 = load i8, ptr %19, align 1
  %21 = call noundef i8 @"??$_Maklocchr@D@std@@YADDPEADAEBU_Cvtvec@@@Z"(i8 noundef %20, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(44) %3)
  %22 = getelementptr inbounds %"class.std::numpunct", ptr %8, i32 0, i32 3
  store i8 %21, ptr %22, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$_Tidy_guard@V?$numpunct@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Tidy_guard", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"struct.std::_Tidy_guard", ptr %3, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  call void @"?_Tidy@?$numpunct@D@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(48) %9) #18
  br label %10

10:                                               ; preds = %7, %1
  ret void
}

declare dso_local ptr @localeconv() #7

declare dso_local void @_Getcvt(ptr sret(%struct._Cvtvec) align 4) #7

declare dso_local i64 @strlen(ptr noundef) #7

; Function Attrs: allocsize(0,1)
declare dso_local noalias ptr @calloc(i64 noundef, i64 noundef) #14

; Function Attrs: noreturn
declare dso_local void @"?_Xbad_alloc@std@@YAXXZ"() #10

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Tidy@?$numpunct@D@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(48) %0) #0 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::numpunct", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  invoke void @free(ptr noundef %5)
          to label %6 unwind label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.std::numpunct", ptr %3, i32 0, i32 4
  %8 = load ptr, ptr %7, align 8
  invoke void @free(ptr noundef %8)
          to label %9 unwind label %13

9:                                                ; preds = %6
  %10 = getelementptr inbounds %"class.std::numpunct", ptr %3, i32 0, i32 5
  %11 = load ptr, ptr %10, align 8
  invoke void @free(ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %9
  ret void

13:                                               ; preds = %9, %6, %1
  %14 = cleanuppad within none []
  call void @__std_terminate() #20 [ "funclet"(token %14) ]
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1?$numpunct@D@std@@MEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  store ptr @"??_7?$numpunct@D@std@@6B@", ptr %3, align 8
  call void @"?_Tidy@?$numpunct@D@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(48) %3) #18
  call void @"??1facet@locale@std@@MEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__CxxFrameHandler3 {
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
  %13 = call noundef ptr @"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 %12) #18
  store ptr %7, ptr %6, align 8
  %14 = getelementptr inbounds %"class.std::basic_string", ptr %9, i32 0, i32 0
  %15 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %14, i32 0, i32 0
  %16 = load ptr, ptr %6, align 8
  %17 = call noundef ptr @"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 1 dereferenceable(1) %15) #18
  call void @"?_Tidy_init@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %9) #18
  %18 = load ptr, ptr %3, align 8
  %19 = invoke noundef nonnull align 8 dereferenceable(32) ptr @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %18)
          to label %20 unwind label %21

20:                                               ; preds = %2
  call void @"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %8) #18
  ret ptr %9

21:                                               ; preds = %2
  %22 = cleanuppad within none []
  call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %10) #18 [ "funclet"(token %22) ]
  cleanupret from %22 unwind to caller
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(ptr noundef %6) #18
  %8 = call noundef i64 @"??$_Convert_size@_K@std@@YA_K_K@Z"(i64 noundef %7) #18
  %9 = load ptr, ptr %3, align 8
  %10 = call noundef nonnull align 8 dereferenceable(32) ptr @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %9, i64 noundef %8)
  ret ptr %10
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2) #1 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  %10 = alloca %class.anon.2, align 1
  store i64 %2, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %0, ptr %7, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load i64, ptr %5, align 8
  %13 = getelementptr inbounds %"class.std::basic_string", ptr %11, i32 0, i32 0
  %14 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %13, i32 0, i32 0
  %15 = getelementptr inbounds %"class.std::_String_val", ptr %14, i32 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = icmp ule i64 %12, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %3
  %19 = getelementptr inbounds %"class.std::basic_string", ptr %11, i32 0, i32 0
  %20 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %19, i32 0, i32 0
  %21 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(32) %20) #18
  store ptr %21, ptr %8, align 8
  %22 = load i64, ptr %5, align 8
  %23 = getelementptr inbounds %"class.std::basic_string", ptr %11, i32 0, i32 0
  %24 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %23, i32 0, i32 0
  %25 = getelementptr inbounds %"class.std::_String_val", ptr %24, i32 0, i32 1
  store i64 %22, ptr %25, align 8
  %26 = load i64, ptr %5, align 8
  %27 = load ptr, ptr %6, align 8
  %28 = load ptr, ptr %8, align 8
  %29 = call noundef ptr @"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %28, ptr noundef %27, i64 noundef %26) #18
  store i8 0, ptr %9, align 1
  %30 = load ptr, ptr %8, align 8
  %31 = load i64, ptr %5, align 8
  %32 = getelementptr inbounds i8, ptr %30, i64 %31
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %32, ptr noundef nonnull align 1 dereferenceable(1) %9) #18
  store ptr %11, ptr %4, align 8
  br label %39

33:                                               ; preds = %3
  %34 = load ptr, ptr %6, align 8
  %35 = load i64, ptr %5, align 8
  %36 = getelementptr inbounds %class.anon.2, ptr %10, i32 0, i32 0
  %37 = load i8, ptr %36, align 1
  %38 = call noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??assign@01@QEAAAEAV01@QEBD0@Z@PEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %35, i8 %37, ptr noundef %34)
  store ptr %38, ptr %4, align 8
  br label %39

39:                                               ; preds = %33, %18
  %40 = load ptr, ptr %4, align 8
  ret ptr %40
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"??$_Convert_size@_K@std@@YA_K_K@Z"(i64 noundef %0) #0 comdat {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(ptr noundef %0) #0 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = invoke i64 @strlen(ptr noundef %3)
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret i64 %4

6:                                                ; preds = %1
  %7 = cleanuppad within none []
  call void @__std_terminate() #20 [ "funclet"(token %7) ]
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
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
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??assign@01@QEAAAEAV01@QEBD0@Z@PEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 %2, ptr noundef %3) #1 comdat align 2 {
  %5 = alloca %class.anon.2, align 1
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = getelementptr inbounds %class.anon.2, ptr %5, i32 0, i32 0
  store i8 %2, ptr %13, align 1
  store ptr %3, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %14 = load ptr, ptr %8, align 8
  %15 = load i64, ptr %7, align 8
  %16 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %14) #18
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  call void @"?_Xlen_string@std@@YAXXZ"() #19
  unreachable

19:                                               ; preds = %4
  %20 = getelementptr inbounds %"class.std::basic_string", ptr %14, i32 0, i32 0
  %21 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %20, i32 0, i32 0
  %22 = getelementptr inbounds %"class.std::_String_val", ptr %21, i32 0, i32 2
  %23 = load i64, ptr %22, align 8
  store i64 %23, ptr %9, align 8
  %24 = load i64, ptr %7, align 8
  %25 = call noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %24) #18
  store i64 %25, ptr %10, align 8
  %26 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %14) #18
  store ptr %26, ptr %11, align 8
  %27 = load ptr, ptr %11, align 8
  %28 = load i64, ptr %10, align 8
  %29 = add i64 %28, 1
  %30 = call noundef ptr @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %27, i64 noundef %29)
  store ptr %30, ptr %12, align 8
  %31 = getelementptr inbounds %"class.std::basic_string", ptr %14, i32 0, i32 0
  %32 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %31, i32 0, i32 0
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %32) #18
  %33 = load i64, ptr %7, align 8
  %34 = getelementptr inbounds %"class.std::basic_string", ptr %14, i32 0, i32 0
  %35 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %34, i32 0, i32 0
  %36 = getelementptr inbounds %"class.std::_String_val", ptr %35, i32 0, i32 1
  store i64 %33, ptr %36, align 8
  %37 = load i64, ptr %10, align 8
  %38 = getelementptr inbounds %"class.std::basic_string", ptr %14, i32 0, i32 0
  %39 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %38, i32 0, i32 0
  %40 = getelementptr inbounds %"class.std::_String_val", ptr %39, i32 0, i32 2
  store i64 %37, ptr %40, align 8
  %41 = load ptr, ptr %6, align 8
  %42 = load i64, ptr %7, align 8
  %43 = load ptr, ptr %12, align 8
  %44 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %43) #18
  call void @"??R<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD10@Z"(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %44, i64 noundef %42, ptr noundef %41)
  %45 = load i64, ptr %9, align 8
  %46 = icmp ule i64 16, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %19
  %48 = load ptr, ptr %11, align 8
  %49 = load i64, ptr %9, align 8
  %50 = add i64 %49, 1
  %51 = getelementptr inbounds %"class.std::basic_string", ptr %14, i32 0, i32 0
  %52 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %51, i32 0, i32 0
  %53 = getelementptr inbounds %"class.std::_String_val", ptr %52, i32 0, i32 0
  %54 = load ptr, ptr %53, align 8
  call void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %48, ptr noundef %54, i64 noundef %50)
  %55 = load ptr, ptr %12, align 8
  %56 = getelementptr inbounds %"class.std::basic_string", ptr %14, i32 0, i32 0
  %57 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %56, i32 0, i32 0
  %58 = getelementptr inbounds %"class.std::_String_val", ptr %57, i32 0, i32 0
  store ptr %55, ptr %58, align 8
  br label %63

59:                                               ; preds = %19
  %60 = getelementptr inbounds %"class.std::basic_string", ptr %14, i32 0, i32 0
  %61 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %60, i32 0, i32 0
  %62 = getelementptr inbounds %"class.std::_String_val", ptr %61, i32 0, i32 0
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef nonnull align 8 dereferenceable(8) %12) #18
  br label %63

63:                                               ; preds = %59, %47
  ret ptr %14
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??R<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD10@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 comdat align 2 {
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
  %14 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %13, ptr noundef %12, i64 noundef %11) #18
  store i8 0, ptr %9, align 1
  %15 = load ptr, ptr %7, align 8
  %16 = load i64, ptr %6, align 8
  %17 = getelementptr inbounds i8, ptr %15, i64 %16
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef nonnull align 1 dereferenceable(1) %9) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
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
define linkonce_odr dso_local noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %"class.std::_String_val", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds [16 x i8], ptr %5, i64 0, i64 0
  store ptr %6, ptr %3, align 8
  %7 = call noundef zeroext i1 @"?_Large_string_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.std::_String_val", ptr %4, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %10) #18
  store ptr %11, ptr %3, align 8
  br label %12

12:                                               ; preds = %8, %1
  %13 = load ptr, ptr %3, align 8
  ret ptr %13
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?_Check_offset@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAX_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #1 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"class.std::_String_val", ptr %5, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = load i64, ptr %3, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  call void @"?_Xran@?$_String_val@U?$_Simple_types@D@std@@@std@@SAXXZ"() #19
  unreachable

11:                                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_grow_by@V<lambda_1>@?0??insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@_K0D@Z@_K_KD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??insert@01@QEAAAEAV01@00D@Z@_K2D@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 %2, i64 noundef %3, i64 noundef %4, i8 noundef %5) #1 comdat align 2 {
  %7 = alloca %class.anon.4, align 1
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = getelementptr inbounds %class.anon.4, ptr %7, i32 0, i32 0
  store i8 %2, ptr %22, align 1
  store i8 %5, ptr %8, align 1
  store i64 %4, ptr %9, align 8
  store i64 %3, ptr %10, align 8
  store i64 %1, ptr %11, align 8
  store ptr %0, ptr %12, align 8
  %23 = load ptr, ptr %12, align 8
  %24 = getelementptr inbounds %"class.std::basic_string", ptr %23, i32 0, i32 0
  %25 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %24, i32 0, i32 0
  store ptr %25, ptr %13, align 8
  %26 = load ptr, ptr %13, align 8
  %27 = getelementptr inbounds %"class.std::_String_val", ptr %26, i32 0, i32 1
  %28 = load i64, ptr %27, align 8
  store i64 %28, ptr %14, align 8
  %29 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %23) #18
  %30 = load i64, ptr %14, align 8
  %31 = sub i64 %29, %30
  %32 = load i64, ptr %11, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %6
  call void @"?_Xlen_string@std@@YAXXZ"() #19
  unreachable

35:                                               ; preds = %6
  %36 = load i64, ptr %14, align 8
  %37 = load i64, ptr %11, align 8
  %38 = add i64 %36, %37
  store i64 %38, ptr %15, align 8
  %39 = load ptr, ptr %13, align 8
  %40 = getelementptr inbounds %"class.std::_String_val", ptr %39, i32 0, i32 2
  %41 = load i64, ptr %40, align 8
  store i64 %41, ptr %16, align 8
  %42 = load i64, ptr %15, align 8
  %43 = call noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %23, i64 noundef %42) #18
  store i64 %43, ptr %17, align 8
  %44 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %23) #18
  store ptr %44, ptr %18, align 8
  %45 = load ptr, ptr %18, align 8
  %46 = load i64, ptr %17, align 8
  %47 = add i64 %46, 1
  %48 = call noundef ptr @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %45, i64 noundef %47)
  store ptr %48, ptr %19, align 8
  %49 = load ptr, ptr %13, align 8
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %49) #18
  %50 = load i64, ptr %15, align 8
  %51 = load ptr, ptr %13, align 8
  %52 = getelementptr inbounds %"class.std::_String_val", ptr %51, i32 0, i32 1
  store i64 %50, ptr %52, align 8
  %53 = load i64, ptr %17, align 8
  %54 = load ptr, ptr %13, align 8
  %55 = getelementptr inbounds %"class.std::_String_val", ptr %54, i32 0, i32 2
  store i64 %53, ptr %55, align 8
  %56 = load ptr, ptr %19, align 8
  %57 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %56) #18
  store ptr %57, ptr %20, align 8
  %58 = load i64, ptr %16, align 8
  %59 = icmp ule i64 16, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %35
  %61 = load ptr, ptr %13, align 8
  %62 = getelementptr inbounds %"class.std::_String_val", ptr %61, i32 0, i32 0
  %63 = load ptr, ptr %62, align 8
  store ptr %63, ptr %21, align 8
  %64 = load i8, ptr %8, align 1
  %65 = load i64, ptr %9, align 8
  %66 = load i64, ptr %10, align 8
  %67 = load i64, ptr %14, align 8
  %68 = load ptr, ptr %21, align 8
  %69 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %68) #18
  %70 = load ptr, ptr %20, align 8
  call void @"??R<lambda_1>@?0??insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@_K0D@Z@QEBA?A?<auto>@@QEADQEBD000D@Z"(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %70, ptr noundef %69, i64 noundef %67, i64 noundef %66, i64 noundef %65, i8 noundef %64)
  %71 = load ptr, ptr %18, align 8
  %72 = load i64, ptr %16, align 8
  %73 = add i64 %72, 1
  %74 = load ptr, ptr %21, align 8
  call void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %71, ptr noundef %74, i64 noundef %73)
  %75 = load ptr, ptr %19, align 8
  %76 = load ptr, ptr %13, align 8
  %77 = getelementptr inbounds %"class.std::_String_val", ptr %76, i32 0, i32 0
  store ptr %75, ptr %77, align 8
  br label %89

78:                                               ; preds = %35
  %79 = load i8, ptr %8, align 1
  %80 = load i64, ptr %9, align 8
  %81 = load i64, ptr %10, align 8
  %82 = load i64, ptr %14, align 8
  %83 = load ptr, ptr %13, align 8
  %84 = getelementptr inbounds %"class.std::_String_val", ptr %83, i32 0, i32 0
  %85 = getelementptr inbounds [16 x i8], ptr %84, i64 0, i64 0
  %86 = load ptr, ptr %20, align 8
  call void @"??R<lambda_1>@?0??insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@_K0D@Z@QEBA?A?<auto>@@QEADQEBD000D@Z"(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %86, ptr noundef %85, i64 noundef %82, i64 noundef %81, i64 noundef %80, i8 noundef %79)
  %87 = load ptr, ptr %13, align 8
  %88 = getelementptr inbounds %"class.std::_String_val", ptr %87, i32 0, i32 0
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %88, ptr noundef nonnull align 8 dereferenceable(8) %19) #18
  br label %89

89:                                               ; preds = %78, %60
  ret ptr %23
}

; Function Attrs: mustprogress noinline noreturn optnone uwtable
define linkonce_odr dso_local void @"?_Xran@?$_String_val@U?$_Simple_types@D@std@@@std@@SAXXZ"() #6 comdat align 2 {
  call void @"?_Xout_of_range@std@@YAXPEBD@Z"(ptr noundef @"??_C@_0BI@CFPLBAOH@invalid?5string?5position?$AA@") #19
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @"?_Xout_of_range@std@@YAXPEBD@Z"(ptr noundef) #10

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??R<lambda_1>@?0??insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@_K0D@Z@QEBA?A?<auto>@@QEADQEBD000D@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i8 noundef %6) #0 comdat align 2 {
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store i8 %6, ptr %8, align 1
  store i64 %5, ptr %9, align 8
  store i64 %4, ptr %10, align 8
  store i64 %3, ptr %11, align 8
  store ptr %2, ptr %12, align 8
  store ptr %1, ptr %13, align 8
  store ptr %0, ptr %14, align 8
  %15 = load ptr, ptr %14, align 8
  %16 = load i64, ptr %10, align 8
  %17 = load ptr, ptr %12, align 8
  %18 = load ptr, ptr %13, align 8
  %19 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %18, ptr noundef %17, i64 noundef %16) #18
  %20 = load i8, ptr %8, align 1
  %21 = load i64, ptr %9, align 8
  %22 = load ptr, ptr %13, align 8
  %23 = load i64, ptr %10, align 8
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  %25 = call noundef ptr @"?assign@?$_Narrow_char_traits@DH@std@@SAPEADQEAD_KD@Z"(ptr noundef %24, i64 noundef %21, i8 noundef %20) #18
  %26 = load i64, ptr %11, align 8
  %27 = load i64, ptr %10, align 8
  %28 = sub i64 %26, %27
  %29 = add i64 %28, 1
  %30 = load ptr, ptr %12, align 8
  %31 = load i64, ptr %10, align 8
  %32 = getelementptr inbounds i8, ptr %30, i64 %31
  %33 = load ptr, ptr %13, align 8
  %34 = load i64, ptr %10, align 8
  %35 = getelementptr inbounds i8, ptr %33, i64 %34
  %36 = load i64, ptr %9, align 8
  %37 = getelementptr inbounds i8, ptr %35, i64 %36
  %38 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %37, ptr noundef %32, i64 noundef %29) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @"??D?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@QEAAAEAV01@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @"??4?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@QEAAAEAV01@D@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef %1) #1 comdat align 2 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8 %1, ptr %3, align 1
  store ptr %0, ptr %4, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"class.std::ostreambuf_iterator", ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = icmp ne ptr %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.std::ostreambuf_iterator", ptr %7, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = load i8, ptr %3, align 1
  %15 = call noundef i32 @"?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHD@Z"(ptr noundef nonnull align 8 dereferenceable(104) %13, i8 noundef %14)
  store i32 %15, ptr %5, align 4
  %16 = call noundef i32 @"?eof@?$_Narrow_char_traits@DH@std@@SAHXZ"() #18
  store i32 %16, ptr %6, align 4
  %17 = call noundef zeroext i1 @"?eq_int_type@?$_Narrow_char_traits@DH@std@@SA_NAEBH0@Z"(ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %5) #18
  br label %18

18:                                               ; preds = %11, %2
  %19 = phi i1 [ true, %2 ], [ %17, %11 ]
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = getelementptr inbounds %"class.std::ostreambuf_iterator", ptr %7, i32 0, i32 0
  store i8 1, ptr %21, align 8
  br label %22

22:                                               ; preds = %20, %18
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @"??E?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@QEAAAEAV01@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"?eq_int_type@?$_Narrow_char_traits@DH@std@@SA_NAEBH0@Z"(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #0 comdat align 2 {
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

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i32 @"?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHD@Z"(ptr noundef nonnull align 8 dereferenceable(104) %0, i8 noundef %1) #1 comdat align 2 {
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
  %11 = call noundef i32 @"?to_int_type@?$_Narrow_char_traits@DH@std@@SAHAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %10) #18
  br label %18

12:                                               ; preds = %2
  %13 = call noundef i32 @"?to_int_type@?$_Narrow_char_traits@DH@std@@SAHAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %3) #18
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
define linkonce_odr dso_local noundef i32 @"?eof@?$_Narrow_char_traits@DH@std@@SAHXZ"() #0 comdat align 2 {
  ret i32 -1
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?_Pnavail@?$basic_streambuf@DU?$char_traits@D@std@@@std@@IEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(104) %0) #0 comdat align 2 {
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
define linkonce_odr dso_local noundef i32 @"?to_int_type@?$_Narrow_char_traits@DH@std@@SAHAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?_Pninc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@IEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(104) %0) #0 comdat align 2 {
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

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %"class.std::basic_string", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %7, i32 0, i32 0
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %8) #18
  %9 = getelementptr inbounds %"class.std::basic_string", ptr %6, i32 0, i32 0
  %10 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %9, i32 0, i32 0
  %11 = call noundef zeroext i1 @"?_Large_string_engaged@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %10) #18
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.std::basic_string", ptr %6, i32 0, i32 0
  %14 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %13, i32 0, i32 0
  %15 = getelementptr inbounds %"class.std::_String_val", ptr %14, i32 0, i32 0
  %16 = load ptr, ptr %15, align 8
  store ptr %16, ptr %3, align 8
  %17 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %6) #18
  store ptr %17, ptr %4, align 8
  %18 = getelementptr inbounds %"class.std::basic_string", ptr %6, i32 0, i32 0
  %19 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %18, i32 0, i32 0
  %20 = getelementptr inbounds %"class.std::_String_val", ptr %19, i32 0, i32 0
  call void @"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %20) #18
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds %"class.std::basic_string", ptr %6, i32 0, i32 0
  %23 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %22, i32 0, i32 0
  %24 = getelementptr inbounds %"class.std::_String_val", ptr %23, i32 0, i32 2
  %25 = load i64, ptr %24, align 8
  %26 = add i64 %25, 1
  %27 = load ptr, ptr %3, align 8
  call void @"?deallocate@?$allocator@D@std@@QEAAXQEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef %27, i64 noundef %26)
  br label %28

28:                                               ; preds = %12, %1
  %29 = getelementptr inbounds %"class.std::basic_string", ptr %6, i32 0, i32 0
  %30 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %29, i32 0, i32 0
  %31 = getelementptr inbounds %"class.std::_String_val", ptr %30, i32 0, i32 1
  store i64 0, ptr %31, align 8
  %32 = getelementptr inbounds %"class.std::basic_string", ptr %6, i32 0, i32 0
  %33 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %32, i32 0, i32 0
  %34 = getelementptr inbounds %"class.std::_String_val", ptr %33, i32 0, i32 2
  store i64 15, ptr %34, align 8
  store i8 0, ptr %5, align 1
  %35 = getelementptr inbounds %"class.std::basic_string", ptr %6, i32 0, i32 0
  %36 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %35, i32 0, i32 0
  %37 = getelementptr inbounds %"class.std::_String_val", ptr %36, i32 0, i32 0
  %38 = getelementptr inbounds [16 x i8], ptr %37, i64 0, i64 0
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %38, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Destroy_in_place@PEAD@std@@YAXAEAPEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i32 @_vsprintf_s_l(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 comdat {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store ptr %4, ptr %6, align 8
  store ptr %3, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i64 %1, ptr %9, align 8
  store ptr %0, ptr %10, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %7, align 8
  %14 = load ptr, ptr %8, align 8
  %15 = load i64, ptr %9, align 8
  %16 = load ptr, ptr %10, align 8
  %17 = call ptr @__local_stdio_printf_options()
  %18 = load i64, ptr %17, align 8
  %19 = call i32 @__stdio_common_vsprintf_s(i64 noundef %18, ptr noundef %16, i64 noundef %15, ptr noundef %14, ptr noundef %13, ptr noundef %12)
  store i32 %19, ptr %11, align 4
  %20 = load i32, ptr %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %25

23:                                               ; preds = %5
  %24 = load i32, ptr %11, align 4
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i32 [ -1, %22 ], [ %24, %23 ]
  ret i32 %26
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

declare dso_local i32 @__stdio_common_vsprintf_s(i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #7

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @__local_stdio_printf_options() #0 comdat {
  ret ptr @"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA"
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  %4 = alloca %"struct.std::_Fake_allocator", align 1
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %"class.std::basic_string", ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Zero_then_variadic_args_t", ptr %3, i32 0, i32 0
  %8 = load i8, ptr %7, align 1
  %9 = call noundef ptr @"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 %8) #18
  %10 = getelementptr inbounds %"class.std::basic_string", ptr %5, i32 0, i32 0
  %11 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %10, i32 0, i32 0
  call void @"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
  call void @"?_Tidy_init@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @"?precision@ios_base@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(72) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::ios_base", ptr %3, i32 0, i32 5
  %5 = load i64, ptr %4, align 8
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @"??$_Float_put_desired_precision@O@std@@YAH_JH@Z"(i64 noundef %0, i32 noundef %1) #0 comdat {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i32 %1, ptr %4, align 4
  store i64 %0, ptr %5, align 8
  %9 = load i32, ptr %4, align 4
  %10 = icmp eq i32 %9, 12288
  %11 = zext i1 %10 to i8
  store i8 %11, ptr %6, align 1
  %12 = load i8, ptr %6, align 1
  %13 = trunc i8 %12 to i1
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 13, ptr %3, align 4
  br label %33

15:                                               ; preds = %2
  %16 = load i64, ptr %5, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i64, ptr %5, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, ptr %3, align 4
  br label %33

21:                                               ; preds = %15
  %22 = load i64, ptr %5, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i32, ptr %4, align 4
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i8
  store i8 %27, ptr %7, align 1
  %28 = load i8, ptr %7, align 1
  %29 = trunc i8 %28 to i1
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 1, ptr %3, align 4
  br label %33

31:                                               ; preds = %24
  store i32 0, ptr %3, align 4
  br label %33

32:                                               ; preds = %21
  store i32 6, ptr %8, align 4
  store i32 6, ptr %3, align 4
  br label %33

33:                                               ; preds = %32, %31, %30, %18, %14
  %34 = load i32, ptr %3, align 4
  ret i32 %34
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #16

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local double @frexpl(double noundef %0, ptr noundef %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca double, align 8
  store ptr %1, ptr %3, align 8
  store double %0, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load double, ptr %4, align 8
  %7 = call double @frexp(double noundef %6, ptr noundef %5) #18
  ret double %7
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i32 @abs(i32 noundef) #17

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?resize@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAX_KD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 noundef %2) #1 comdat align 2 {
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  store i8 %2, ptr %4, align 1
  store i64 %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = call noundef i64 @"?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %8) #18
  store i64 %9, ptr %7, align 8
  %10 = load i64, ptr %5, align 8
  %11 = load i64, ptr %7, align 8
  %12 = icmp ule i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i64, ptr %5, align 8
  call void @"?_Eos@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAX_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %14)
  br label %21

15:                                               ; preds = %3
  %16 = load i8, ptr %4, align 1
  %17 = load i64, ptr %5, align 8
  %18 = load i64, ptr %7, align 8
  %19 = sub i64 %17, %18
  %20 = call noundef nonnull align 8 dereferenceable(32) ptr @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_KD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %19, i8 noundef %16)
  br label %21

21:                                               ; preds = %15, %13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?_Ffmt@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBAPEADPEADDH@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i8 noundef %2, i32 noundef %3) #0 comdat align 2 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store i32 %3, ptr %5, align 4
  store i8 %2, ptr %6, align 1
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = load ptr, ptr %7, align 8
  store ptr %13, ptr %9, align 8
  %14 = load ptr, ptr %9, align 8
  %15 = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %15, ptr %9, align 8
  store i8 37, ptr %14, align 1
  %16 = load i32, ptr %5, align 4
  %17 = and i32 %16, 32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load ptr, ptr %9, align 8
  %21 = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %21, ptr %9, align 8
  store i8 43, ptr %20, align 1
  br label %22

22:                                               ; preds = %19, %4
  %23 = load i32, ptr %5, align 4
  %24 = and i32 %23, 16
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load ptr, ptr %9, align 8
  %28 = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %28, ptr %9, align 8
  store i8 35, ptr %27, align 1
  br label %29

29:                                               ; preds = %26, %22
  %30 = load ptr, ptr %9, align 8
  %31 = getelementptr inbounds i8, ptr %30, i32 1
  store ptr %31, ptr %9, align 8
  store i8 46, ptr %30, align 1
  %32 = load ptr, ptr %9, align 8
  %33 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %33, ptr %9, align 8
  store i8 42, ptr %32, align 1
  %34 = load i8, ptr %6, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i8, ptr %6, align 1
  %39 = load ptr, ptr %9, align 8
  %40 = getelementptr inbounds i8, ptr %39, i32 1
  store ptr %40, ptr %9, align 8
  store i8 %38, ptr %39, align 1
  br label %41

41:                                               ; preds = %37, %29
  %42 = load i32, ptr %5, align 4
  %43 = and i32 %42, 12288
  store i32 %43, ptr %11, align 4
  %44 = load i32, ptr %5, align 4
  %45 = and i32 %44, 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %41
  %48 = load i32, ptr %11, align 4
  %49 = icmp eq i32 %48, 8192
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i8 102, ptr %10, align 1
  br label %62

51:                                               ; preds = %47
  %52 = load i32, ptr %11, align 4
  %53 = icmp eq i32 %52, 12288
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i8 65, ptr %10, align 1
  br label %61

55:                                               ; preds = %51
  %56 = load i32, ptr %11, align 4
  %57 = icmp eq i32 %56, 4096
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i8 69, ptr %10, align 1
  br label %60

59:                                               ; preds = %55
  store i8 71, ptr %10, align 1
  br label %60

60:                                               ; preds = %59, %58
  br label %61

61:                                               ; preds = %60, %54
  br label %62

62:                                               ; preds = %61, %50
  br label %79

63:                                               ; preds = %41
  %64 = load i32, ptr %11, align 4
  %65 = icmp eq i32 %64, 8192
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i8 102, ptr %10, align 1
  br label %78

67:                                               ; preds = %63
  %68 = load i32, ptr %11, align 4
  %69 = icmp eq i32 %68, 12288
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i8 97, ptr %10, align 1
  br label %77

71:                                               ; preds = %67
  %72 = load i32, ptr %11, align 4
  %73 = icmp eq i32 %72, 4096
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i8 101, ptr %10, align 1
  br label %76

75:                                               ; preds = %71
  store i8 103, ptr %10, align 1
  br label %76

76:                                               ; preds = %75, %74
  br label %77

77:                                               ; preds = %76, %70
  br label %78

78:                                               ; preds = %77, %66
  br label %79

79:                                               ; preds = %78, %62
  %80 = load i8, ptr %10, align 1
  %81 = load ptr, ptr %9, align 8
  %82 = getelementptr inbounds i8, ptr %81, i32 1
  store ptr %82, ptr %9, align 8
  store i8 %80, ptr %81, align 1
  %83 = load ptr, ptr %9, align 8
  store i8 0, ptr %83, align 1
  %84 = load ptr, ptr %7, align 8
  ret ptr %84
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?_Fput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias sret(%"class.std::ostreambuf_iterator") align 8 %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i8 noundef %4, ptr noundef %5, i64 noundef %6) #1 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i8, align 1
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i64, align 8
  %17 = alloca [2 x i8], align 1
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  %20 = alloca %"class.std::locale", align 8
  %21 = alloca %"class.std::basic_string", align 8
  %22 = alloca ptr, align 8
  %23 = alloca %"class.std::locale", align 8
  %24 = alloca %"class.std::basic_string", align 8
  %25 = alloca i8, align 1
  %26 = alloca i64, align 8
  %27 = alloca ptr, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca %"class.std::ostreambuf_iterator", align 8
  %31 = alloca %"class.std::ostreambuf_iterator", align 8
  %32 = alloca %"class.std::ostreambuf_iterator", align 8
  %33 = alloca %"class.std::ostreambuf_iterator", align 8
  %34 = alloca %"class.std::ostreambuf_iterator", align 8
  %35 = alloca %"class.std::ostreambuf_iterator", align 8
  %36 = alloca %"class.std::ostreambuf_iterator", align 8
  %37 = alloca %"class.std::ostreambuf_iterator", align 8
  %38 = alloca %"class.std::ostreambuf_iterator", align 8
  %39 = alloca %"class.std::ostreambuf_iterator", align 8
  %40 = alloca %"class.std::ostreambuf_iterator", align 8
  %41 = alloca %"class.std::ostreambuf_iterator", align 8
  %42 = alloca %"class.std::ostreambuf_iterator", align 8
  store ptr %1, ptr %8, align 8
  store i64 %6, ptr %9, align 8
  store ptr %5, ptr %10, align 8
  store i8 %4, ptr %11, align 1
  store ptr %3, ptr %12, align 8
  store ptr %0, ptr %13, align 8
  %43 = load ptr, ptr %13, align 8
  %44 = load i64, ptr %9, align 8
  %45 = icmp ult i64 0, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %7
  %47 = load ptr, ptr %10, align 8
  %48 = load i8, ptr %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 43
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr %10, align 8
  %53 = load i8, ptr %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 45
  br label %56

56:                                               ; preds = %51, %46
  %57 = phi i1 [ true, %46 ], [ %55, %51 ]
  br label %58

58:                                               ; preds = %56, %7
  %59 = phi i1 [ false, %7 ], [ %57, %56 ]
  %60 = zext i1 %59 to i64
  store i64 %60, ptr %14, align 8
  %61 = load ptr, ptr %12, align 8
  %62 = call noundef i32 @"?flags@ios_base@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(72) %61)
  %63 = and i32 %62, 12288
  %64 = icmp ne i32 %63, 12288
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store ptr @"??_C@_02MDKMJEGG@eE?$AA@", ptr %15, align 8
  br label %98

66:                                               ; preds = %58
  store ptr @"??_C@_02OOPEBDOJ@pP?$AA@", ptr %15, align 8
  %67 = load i64, ptr %14, align 8
  %68 = add i64 %67, 2
  %69 = load i64, ptr %9, align 8
  %70 = icmp ule i64 %68, %69
  br i1 %70, label %71, label %97

71:                                               ; preds = %66
  %72 = load ptr, ptr %10, align 8
  %73 = load i64, ptr %14, align 8
  %74 = getelementptr inbounds i8, ptr %72, i64 %73
  %75 = load i8, ptr %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 48
  br i1 %77, label %78, label %97

78:                                               ; preds = %71
  %79 = load ptr, ptr %10, align 8
  %80 = load i64, ptr %14, align 8
  %81 = add i64 %80, 1
  %82 = getelementptr inbounds i8, ptr %79, i64 %81
  %83 = load i8, ptr %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 120
  br i1 %85, label %94, label %86

86:                                               ; preds = %78
  %87 = load ptr, ptr %10, align 8
  %88 = load i64, ptr %14, align 8
  %89 = add i64 %88, 1
  %90 = getelementptr inbounds i8, ptr %87, i64 %89
  %91 = load i8, ptr %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 88
  br i1 %93, label %94, label %97

94:                                               ; preds = %86, %78
  %95 = load i64, ptr %14, align 8
  %96 = add i64 %95, 2
  store i64 %96, ptr %14, align 8
  br label %97

97:                                               ; preds = %94, %86, %71, %66
  br label %98

98:                                               ; preds = %97, %65
  %99 = load ptr, ptr %15, align 8
  %100 = load ptr, ptr %10, align 8
  %101 = getelementptr inbounds i8, ptr %100, i64 0
  %102 = call i64 @strcspn(ptr noundef %101, ptr noundef %99)
  store i64 %102, ptr %16, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %17, ptr align 1 @"__const.?_Fput@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@AEAVios_base@2@DPEBD_K@Z._Dp", i64 2, i1 false)
  %103 = call ptr @localeconv()
  %104 = getelementptr inbounds %struct.lconv, ptr %103, i32 0, i32 0
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr inbounds i8, ptr %105, i64 0
  %107 = load i8, ptr %106, align 1
  %108 = getelementptr inbounds [2 x i8], ptr %17, i64 0, i64 0
  store i8 %107, ptr %108, align 1
  %109 = getelementptr inbounds [2 x i8], ptr %17, i64 0, i64 0
  %110 = load ptr, ptr %10, align 8
  %111 = getelementptr inbounds i8, ptr %110, i64 0
  %112 = call i64 @strcspn(ptr noundef %111, ptr noundef %109)
  store i64 %112, ptr %18, align 8
  %113 = load ptr, ptr %12, align 8
  call void @"?getloc@ios_base@std@@QEBA?AVlocale@2@XZ"(ptr noundef nonnull align 8 dereferenceable(72) %113, ptr sret(%"class.std::locale") align 8 %20)
  %114 = invoke noundef nonnull align 8 dereferenceable(48) ptr @"??$use_facet@V?$ctype@D@std@@@std@@YAAEBV?$ctype@D@0@AEBVlocale@0@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %20)
          to label %115 unwind label %144

115:                                              ; preds = %98
  call void @"??1locale@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %20) #18
  store ptr %114, ptr %19, align 8
  %116 = load i64, ptr %9, align 8
  %117 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@_KD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef %116, i8 noundef 0)
  %118 = load ptr, ptr %19, align 8
  %119 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef 0) #18
  %120 = load ptr, ptr %10, align 8
  %121 = load i64, ptr %9, align 8
  %122 = getelementptr inbounds i8, ptr %120, i64 %121
  %123 = load ptr, ptr %10, align 8
  %124 = invoke noundef ptr @"?widen@?$ctype@D@std@@QEBAPEBDPEBD0PEAD@Z"(ptr noundef nonnull align 8 dereferenceable(48) %118, ptr noundef %123, ptr noundef %122, ptr noundef %119)
          to label %125 unwind label %259

125:                                              ; preds = %115
  %126 = load ptr, ptr %12, align 8
  invoke void @"?getloc@ios_base@std@@QEBA?AVlocale@2@XZ"(ptr noundef nonnull align 8 dereferenceable(72) %126, ptr sret(%"class.std::locale") align 8 %23)
          to label %127 unwind label %259

127:                                              ; preds = %125
  %128 = invoke noundef nonnull align 8 dereferenceable(48) ptr @"??$use_facet@V?$numpunct@D@std@@@std@@YAAEBV?$numpunct@D@0@AEBVlocale@0@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %23)
          to label %129 unwind label %146

129:                                              ; preds = %127
  call void @"??1locale@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %23) #18
  store ptr %128, ptr %22, align 8
  %130 = load ptr, ptr %22, align 8
  invoke void @"?grouping@?$numpunct@D@std@@QEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(48) %130, ptr sret(%"class.std::basic_string") align 8 %24)
          to label %131 unwind label %259

131:                                              ; preds = %129
  %132 = load ptr, ptr %22, align 8
  %133 = invoke noundef i8 @"?thousands_sep@?$numpunct@D@std@@QEBADXZ"(ptr noundef nonnull align 8 dereferenceable(48) %132)
          to label %134 unwind label %257

134:                                              ; preds = %131
  store i8 %133, ptr %25, align 1
  %135 = load i64, ptr %18, align 8
  %136 = load i64, ptr %9, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %134
  %139 = load ptr, ptr %22, align 8
  %140 = invoke noundef i8 @"?decimal_point@?$numpunct@D@std@@QEBADXZ"(ptr noundef nonnull align 8 dereferenceable(48) %139)
          to label %141 unwind label %257

141:                                              ; preds = %138
  %142 = load i64, ptr %18, align 8
  %143 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef %142) #18
  store i8 %140, ptr %143, align 1
  br label %148

144:                                              ; preds = %98
  %145 = cleanuppad within none []
  call void @"??1locale@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %20) #18 [ "funclet"(token %145) ]
  cleanupret from %145 unwind to caller

146:                                              ; preds = %127
  %147 = cleanuppad within none []
  call void @"??1locale@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %23) #18 [ "funclet"(token %147) ]
  cleanupret from %147 unwind label %259

148:                                              ; preds = %141, %134
  %149 = load i64, ptr %18, align 8
  %150 = load i64, ptr %9, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = load i64, ptr %16, align 8
  br label %156

154:                                              ; preds = %148
  %155 = load i64, ptr %18, align 8
  br label %156

156:                                              ; preds = %154, %152
  %157 = phi i64 [ %153, %152 ], [ %155, %154 ]
  store i64 %157, ptr %26, align 8
  %158 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAAEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %24, i64 noundef 0) #18
  store ptr %158, ptr %27, align 8
  br label %159

159:                                              ; preds = %196, %156
  %160 = load ptr, ptr %27, align 8
  %161 = load i8, ptr %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp ne i32 %162, 127
  br i1 %163, label %164, label %177

164:                                              ; preds = %159
  %165 = load ptr, ptr %27, align 8
  %166 = load i8, ptr %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp slt i32 0, %167
  br i1 %168, label %169, label %177

169:                                              ; preds = %164
  %170 = load ptr, ptr %27, align 8
  %171 = load i8, ptr %170, align 1
  %172 = sext i8 %171 to i64
  %173 = load i64, ptr %26, align 8
  %174 = load i64, ptr %14, align 8
  %175 = sub i64 %173, %174
  %176 = icmp ult i64 %172, %175
  br label %177

177:                                              ; preds = %169, %164, %159
  %178 = phi i1 [ false, %164 ], [ false, %159 ], [ %176, %169 ]
  br i1 %178, label %179, label %197

179:                                              ; preds = %177
  %180 = load i8, ptr %25, align 1
  %181 = load ptr, ptr %27, align 8
  %182 = load i8, ptr %181, align 1
  %183 = sext i8 %182 to i64
  %184 = load i64, ptr %26, align 8
  %185 = sub i64 %184, %183
  store i64 %185, ptr %26, align 8
  %186 = invoke noundef nonnull align 8 dereferenceable(32) ptr @"?insert@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_K0D@Z"(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef %185, i64 noundef 1, i8 noundef %180)
          to label %187 unwind label %257

187:                                              ; preds = %179
  %188 = load ptr, ptr %27, align 8
  %189 = getelementptr inbounds i8, ptr %188, i64 1
  %190 = load i8, ptr %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp slt i32 0, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %187
  %194 = load ptr, ptr %27, align 8
  %195 = getelementptr inbounds i8, ptr %194, i32 1
  store ptr %195, ptr %27, align 8
  br label %196

196:                                              ; preds = %193, %187
  br label %159, !llvm.loop !20

197:                                              ; preds = %177
  %198 = call noundef i64 @"?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %21) #18
  store i64 %198, ptr %9, align 8
  %199 = load ptr, ptr %12, align 8
  %200 = call noundef i64 @"?width@ios_base@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(72) %199)
  %201 = icmp sle i64 %200, 0
  br i1 %201, label %207, label %202

202:                                              ; preds = %197
  %203 = load ptr, ptr %12, align 8
  %204 = call noundef i64 @"?width@ios_base@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(72) %203)
  %205 = load i64, ptr %9, align 8
  %206 = icmp ule i64 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %202, %197
  store i64 0, ptr %28, align 8
  br label %213

208:                                              ; preds = %202
  %209 = load ptr, ptr %12, align 8
  %210 = call noundef i64 @"?width@ios_base@std@@QEBA_JXZ"(ptr noundef nonnull align 8 dereferenceable(72) %209)
  %211 = load i64, ptr %9, align 8
  %212 = sub i64 %210, %211
  store i64 %212, ptr %28, align 8
  br label %213

213:                                              ; preds = %208, %207
  %214 = load ptr, ptr %12, align 8
  %215 = invoke noundef i32 @"?flags@ios_base@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(72) %214)
          to label %216 unwind label %257

216:                                              ; preds = %213
  %217 = and i32 %215, 448
  store i32 %217, ptr %29, align 4
  %218 = load i32, ptr %29, align 4
  %219 = icmp ne i32 %218, 64
  br i1 %219, label %220, label %230

220:                                              ; preds = %216
  %221 = load i32, ptr %29, align 4
  %222 = icmp ne i32 %221, 256
  br i1 %222, label %223, label %230

223:                                              ; preds = %220
  %224 = load i64, ptr %28, align 8
  %225 = load i8, ptr %11, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %31, ptr align 8 %2, i64 16, i1 false)
  invoke void @"?_Rep@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@D_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %43, ptr sret(%"class.std::ostreambuf_iterator") align 8 %30, ptr noundef %31, i8 noundef %225, i64 noundef %224)
          to label %226 unwind label %257

226:                                              ; preds = %223
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %30, i64 16, i1 false)
  store i64 0, ptr %28, align 8
  %227 = load i64, ptr %14, align 8
  %228 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef 0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %33, ptr align 8 %2, i64 16, i1 false)
  invoke void @"?_Put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@PEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %43, ptr sret(%"class.std::ostreambuf_iterator") align 8 %32, ptr noundef %33, ptr noundef %228, i64 noundef %227)
          to label %229 unwind label %257

229:                                              ; preds = %226
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %32, i64 16, i1 false)
  br label %245

230:                                              ; preds = %220, %216
  %231 = load i32, ptr %29, align 4
  %232 = icmp eq i32 %231, 256
  br i1 %232, label %233, label %240

233:                                              ; preds = %230
  %234 = load i64, ptr %14, align 8
  %235 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef 0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %35, ptr align 8 %2, i64 16, i1 false)
  invoke void @"?_Put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@PEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %43, ptr sret(%"class.std::ostreambuf_iterator") align 8 %34, ptr noundef %35, ptr noundef %235, i64 noundef %234)
          to label %236 unwind label %257

236:                                              ; preds = %233
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %34, i64 16, i1 false)
  %237 = load i64, ptr %28, align 8
  %238 = load i8, ptr %11, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %37, ptr align 8 %2, i64 16, i1 false)
  invoke void @"?_Rep@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@D_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %43, ptr sret(%"class.std::ostreambuf_iterator") align 8 %36, ptr noundef %37, i8 noundef %238, i64 noundef %237)
          to label %239 unwind label %257

239:                                              ; preds = %236
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %36, i64 16, i1 false)
  store i64 0, ptr %28, align 8
  br label %244

240:                                              ; preds = %230
  %241 = load i64, ptr %14, align 8
  %242 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef 0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %39, ptr align 8 %2, i64 16, i1 false)
  invoke void @"?_Put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@PEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %43, ptr sret(%"class.std::ostreambuf_iterator") align 8 %38, ptr noundef %39, ptr noundef %242, i64 noundef %241)
          to label %243 unwind label %257

243:                                              ; preds = %240
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %38, i64 16, i1 false)
  br label %244

244:                                              ; preds = %243, %239
  br label %245

245:                                              ; preds = %244, %229
  %246 = load i64, ptr %9, align 8
  %247 = load i64, ptr %14, align 8
  %248 = sub i64 %246, %247
  %249 = load i64, ptr %14, align 8
  %250 = call noundef nonnull align 1 dereferenceable(1) ptr @"??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef %249) #18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %41, ptr align 8 %2, i64 16, i1 false)
  invoke void @"?_Put@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@PEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %43, ptr sret(%"class.std::ostreambuf_iterator") align 8 %40, ptr noundef %41, ptr noundef %250, i64 noundef %248)
          to label %251 unwind label %257

251:                                              ; preds = %245
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %40, i64 16, i1 false)
  %252 = load ptr, ptr %12, align 8
  %253 = call noundef i64 @"?width@ios_base@std@@QEAA_J_J@Z"(ptr noundef nonnull align 8 dereferenceable(72) %252, i64 noundef 0)
  %254 = load i64, ptr %28, align 8
  %255 = load i8, ptr %11, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %42, ptr align 8 %2, i64 16, i1 false)
  invoke void @"?_Rep@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBA?AV?$ostreambuf_iterator@DU?$char_traits@D@std@@@2@V32@D_K@Z"(ptr noundef nonnull align 8 dereferenceable(16) %43, ptr sret(%"class.std::ostreambuf_iterator") align 8 %1, ptr noundef %42, i8 noundef %255, i64 noundef %254)
          to label %256 unwind label %257

256:                                              ; preds = %251
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %24) #18
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %21) #18
  ret void

257:                                              ; preds = %251, %245, %240, %236, %233, %226, %223, %213, %179, %138, %131
  %258 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %24) #18 [ "funclet"(token %258) ]
  cleanupret from %258 unwind label %259

259:                                              ; preds = %257, %129, %146, %125, %115
  %260 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %21) #18 [ "funclet"(token %260) ]
  cleanupret from %260 unwind to caller
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::basic_string", ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %4, i32 0, i32 0
  %6 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local double @frexp(double noundef, ptr noundef) #5

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Eos@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAX_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #0 comdat align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  store i64 %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  store i8 0, ptr %5, align 1
  %7 = getelementptr inbounds %"class.std::basic_string", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %7, i32 0, i32 0
  %9 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(32) %8) #18
  %10 = load i64, ptr %3, align 8
  %11 = getelementptr inbounds %"class.std::basic_string", ptr %6, i32 0, i32 0
  %12 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds %"class.std::_String_val", ptr %12, i32 0, i32 1
  store i64 %10, ptr %13, align 8
  %14 = getelementptr inbounds i8, ptr %9, i64 %10
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@_KD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 noundef %2) #1 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  %11 = alloca %class.anon.6, align 1
  store i8 %2, ptr %5, align 1
  store i64 %1, ptr %6, align 8
  store ptr %0, ptr %7, align 8
  %12 = load ptr, ptr %7, align 8
  %13 = getelementptr inbounds %"class.std::basic_string", ptr %12, i32 0, i32 0
  %14 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %13, i32 0, i32 0
  %15 = getelementptr inbounds %"class.std::_String_val", ptr %14, i32 0, i32 1
  %16 = load i64, ptr %15, align 8
  store i64 %16, ptr %8, align 8
  %17 = load i64, ptr %6, align 8
  %18 = getelementptr inbounds %"class.std::basic_string", ptr %12, i32 0, i32 0
  %19 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %18, i32 0, i32 0
  %20 = getelementptr inbounds %"class.std::_String_val", ptr %19, i32 0, i32 2
  %21 = load i64, ptr %20, align 8
  %22 = load i64, ptr %8, align 8
  %23 = sub i64 %21, %22
  %24 = icmp ule i64 %17, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %3
  %26 = load i64, ptr %8, align 8
  %27 = load i64, ptr %6, align 8
  %28 = add i64 %26, %27
  %29 = getelementptr inbounds %"class.std::basic_string", ptr %12, i32 0, i32 0
  %30 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %29, i32 0, i32 0
  %31 = getelementptr inbounds %"class.std::_String_val", ptr %30, i32 0, i32 1
  store i64 %28, ptr %31, align 8
  %32 = getelementptr inbounds %"class.std::basic_string", ptr %12, i32 0, i32 0
  %33 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %32, i32 0, i32 0
  %34 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(32) %33) #18
  store ptr %34, ptr %9, align 8
  %35 = load i8, ptr %5, align 1
  %36 = load i64, ptr %6, align 8
  %37 = load ptr, ptr %9, align 8
  %38 = load i64, ptr %8, align 8
  %39 = getelementptr inbounds i8, ptr %37, i64 %38
  %40 = call noundef ptr @"?assign@?$_Narrow_char_traits@DH@std@@SAPEADQEAD_KD@Z"(ptr noundef %39, i64 noundef %36, i8 noundef %35) #18
  store i8 0, ptr %10, align 1
  %41 = load ptr, ptr %9, align 8
  %42 = load i64, ptr %8, align 8
  %43 = load i64, ptr %6, align 8
  %44 = add i64 %42, %43
  %45 = getelementptr inbounds i8, ptr %41, i64 %44
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %45, ptr noundef nonnull align 1 dereferenceable(1) %10) #18
  store ptr %12, ptr %4, align 8
  br label %53

46:                                               ; preds = %3
  %47 = load i8, ptr %5, align 1
  %48 = load i64, ptr %6, align 8
  %49 = load i64, ptr %6, align 8
  %50 = getelementptr inbounds %class.anon.6, ptr %11, i32 0, i32 0
  %51 = load i8, ptr %50, align 1
  %52 = call noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_grow_by@V<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@_KD@Z@_KD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??append@01@QEAAAEAV01@0D@Z@_KD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %49, i8 %51, i64 noundef %48, i8 noundef %47)
  store ptr %52, ptr %4, align 8
  br label %53

53:                                               ; preds = %46, %25
  %54 = load ptr, ptr %4, align 8
  ret ptr %54
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_grow_by@V<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@_KD@Z@_KD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??append@01@QEAAAEAV01@0D@Z@_KD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 %2, i64 noundef %3, i8 noundef %4) #1 comdat align 2 {
  %6 = alloca %class.anon.6, align 1
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
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
  %20 = getelementptr inbounds %class.anon.6, ptr %6, i32 0, i32 0
  store i8 %2, ptr %20, align 1
  store i8 %4, ptr %7, align 1
  store i64 %3, ptr %8, align 8
  store i64 %1, ptr %9, align 8
  store ptr %0, ptr %10, align 8
  %21 = load ptr, ptr %10, align 8
  %22 = getelementptr inbounds %"class.std::basic_string", ptr %21, i32 0, i32 0
  %23 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %22, i32 0, i32 0
  store ptr %23, ptr %11, align 8
  %24 = load ptr, ptr %11, align 8
  %25 = getelementptr inbounds %"class.std::_String_val", ptr %24, i32 0, i32 1
  %26 = load i64, ptr %25, align 8
  store i64 %26, ptr %12, align 8
  %27 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %21) #18
  %28 = load i64, ptr %12, align 8
  %29 = sub i64 %27, %28
  %30 = load i64, ptr %9, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %5
  call void @"?_Xlen_string@std@@YAXXZ"() #19
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
  %41 = call noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef %40) #18
  store i64 %41, ptr %15, align 8
  %42 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %21) #18
  store ptr %42, ptr %16, align 8
  %43 = load ptr, ptr %16, align 8
  %44 = load i64, ptr %15, align 8
  %45 = add i64 %44, 1
  %46 = call noundef ptr @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %43, i64 noundef %45)
  store ptr %46, ptr %17, align 8
  %47 = load ptr, ptr %11, align 8
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %47) #18
  %48 = load i64, ptr %13, align 8
  %49 = load ptr, ptr %11, align 8
  %50 = getelementptr inbounds %"class.std::_String_val", ptr %49, i32 0, i32 1
  store i64 %48, ptr %50, align 8
  %51 = load i64, ptr %15, align 8
  %52 = load ptr, ptr %11, align 8
  %53 = getelementptr inbounds %"class.std::_String_val", ptr %52, i32 0, i32 2
  store i64 %51, ptr %53, align 8
  %54 = load ptr, ptr %17, align 8
  %55 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %54) #18
  store ptr %55, ptr %18, align 8
  %56 = load i64, ptr %14, align 8
  %57 = icmp ule i64 16, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %33
  %59 = load ptr, ptr %11, align 8
  %60 = getelementptr inbounds %"class.std::_String_val", ptr %59, i32 0, i32 0
  %61 = load ptr, ptr %60, align 8
  store ptr %61, ptr %19, align 8
  %62 = load i8, ptr %7, align 1
  %63 = load i64, ptr %8, align 8
  %64 = load i64, ptr %12, align 8
  %65 = load ptr, ptr %19, align 8
  %66 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %65) #18
  %67 = load ptr, ptr %18, align 8
  call void @"??R<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@_KD@Z@QEBA?A?<auto>@@QEADQEBD00D@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %67, ptr noundef %66, i64 noundef %64, i64 noundef %63, i8 noundef %62)
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
  %76 = load i8, ptr %7, align 1
  %77 = load i64, ptr %8, align 8
  %78 = load i64, ptr %12, align 8
  %79 = load ptr, ptr %11, align 8
  %80 = getelementptr inbounds %"class.std::_String_val", ptr %79, i32 0, i32 0
  %81 = getelementptr inbounds [16 x i8], ptr %80, i64 0, i64 0
  %82 = load ptr, ptr %18, align 8
  call void @"??R<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@_KD@Z@QEBA?A?<auto>@@QEADQEBD00D@Z"(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %82, ptr noundef %81, i64 noundef %78, i64 noundef %77, i8 noundef %76)
  %83 = load ptr, ptr %11, align 8
  %84 = getelementptr inbounds %"class.std::_String_val", ptr %83, i32 0, i32 0
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %84, ptr noundef nonnull align 8 dereferenceable(8) %17) #18
  br label %85

85:                                               ; preds = %75, %58
  ret ptr %21
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??R<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@_KD@Z@QEBA?A?<auto>@@QEADQEBD00D@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i8 noundef %5) #0 comdat align 2 {
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i8, align 1
  store i8 %5, ptr %7, align 1
  store i64 %4, ptr %8, align 8
  store i64 %3, ptr %9, align 8
  store ptr %2, ptr %10, align 8
  store ptr %1, ptr %11, align 8
  store ptr %0, ptr %12, align 8
  %14 = load ptr, ptr %12, align 8
  %15 = load i64, ptr %9, align 8
  %16 = load ptr, ptr %10, align 8
  %17 = load ptr, ptr %11, align 8
  %18 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %17, ptr noundef %16, i64 noundef %15) #18
  %19 = load i8, ptr %7, align 1
  %20 = load i64, ptr %8, align 8
  %21 = load ptr, ptr %11, align 8
  %22 = load i64, ptr %9, align 8
  %23 = getelementptr inbounds i8, ptr %21, i64 %22
  %24 = call noundef ptr @"?assign@?$_Narrow_char_traits@DH@std@@SAPEADQEAD_KD@Z"(ptr noundef %23, i64 noundef %20, i8 noundef %19) #18
  store i8 0, ptr %13, align 1
  %25 = load ptr, ptr %11, align 8
  %26 = load i64, ptr %9, align 8
  %27 = load i64, ptr %8, align 8
  %28 = add i64 %26, %27
  %29 = getelementptr inbounds i8, ptr %25, i64 %28
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %29, ptr noundef nonnull align 1 dereferenceable(1) %13) #18
  ret void
}

declare dso_local i64 @strcspn(ptr noundef, ptr noundef) #7

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i8 @"?decimal_point@?$numpunct@D@std@@QEBADXZ"(ptr noundef nonnull align 8 dereferenceable(48) %0) #1 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = call noundef i8 %6(ptr noundef nonnull align 8 dereferenceable(48) %3)
  ret i8 %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @"??$_Float_put_desired_precision@N@std@@YAH_JH@Z"(i64 noundef %0, i32 noundef %1) #0 comdat {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i32 %1, ptr %4, align 4
  store i64 %0, ptr %5, align 8
  %9 = load i32, ptr %4, align 4
  %10 = icmp eq i32 %9, 12288
  %11 = zext i1 %10 to i8
  store i8 %11, ptr %6, align 1
  %12 = load i8, ptr %6, align 1
  %13 = trunc i8 %12 to i1
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 13, ptr %3, align 4
  br label %33

15:                                               ; preds = %2
  %16 = load i64, ptr %5, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i64, ptr %5, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, ptr %3, align 4
  br label %33

21:                                               ; preds = %15
  %22 = load i64, ptr %5, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i32, ptr %4, align 4
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i8
  store i8 %27, ptr %7, align 1
  %28 = load i8, ptr %7, align 1
  %29 = trunc i8 %28 to i1
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 1, ptr %3, align 4
  br label %33

31:                                               ; preds = %24
  store i32 0, ptr %3, align 4
  br label %33

32:                                               ; preds = %21
  store i32 6, ptr %8, align 4
  store i32 6, ptr %3, align 4
  br label %33

33:                                               ; preds = %32, %31, %30, %18, %14
  %34 = load i32, ptr %3, align 4
  ret i32 %34
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?_Ifmt@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@AEBAPEADPEADPEBDH@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 comdat align 2 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store i32 %3, ptr %5, align 4
  store ptr %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %11 = load ptr, ptr %8, align 8
  %12 = load ptr, ptr %7, align 8
  store ptr %12, ptr %9, align 8
  %13 = load ptr, ptr %9, align 8
  %14 = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %14, ptr %9, align 8
  store i8 37, ptr %13, align 1
  %15 = load i32, ptr %5, align 4
  %16 = and i32 %15, 32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load ptr, ptr %9, align 8
  %20 = getelementptr inbounds i8, ptr %19, i32 1
  store ptr %20, ptr %9, align 8
  store i8 43, ptr %19, align 1
  br label %21

21:                                               ; preds = %18, %4
  %22 = load i32, ptr %5, align 4
  %23 = and i32 %22, 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load ptr, ptr %9, align 8
  %27 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %27, ptr %9, align 8
  store i8 35, ptr %26, align 1
  br label %28

28:                                               ; preds = %25, %21
  %29 = load ptr, ptr %6, align 8
  %30 = getelementptr inbounds i8, ptr %29, i64 0
  %31 = load i8, ptr %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 76
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load ptr, ptr %6, align 8
  %36 = getelementptr inbounds i8, ptr %35, i64 0
  %37 = load i8, ptr %36, align 1
  %38 = load ptr, ptr %9, align 8
  %39 = getelementptr inbounds i8, ptr %38, i32 1
  store ptr %39, ptr %9, align 8
  store i8 %37, ptr %38, align 1
  br label %47

40:                                               ; preds = %28
  %41 = load ptr, ptr %9, align 8
  %42 = getelementptr inbounds i8, ptr %41, i32 1
  store ptr %42, ptr %9, align 8
  store i8 73, ptr %41, align 1
  %43 = load ptr, ptr %9, align 8
  %44 = getelementptr inbounds i8, ptr %43, i32 1
  store ptr %44, ptr %9, align 8
  store i8 54, ptr %43, align 1
  %45 = load ptr, ptr %9, align 8
  %46 = getelementptr inbounds i8, ptr %45, i32 1
  store ptr %46, ptr %9, align 8
  store i8 52, ptr %45, align 1
  br label %47

47:                                               ; preds = %40, %34
  %48 = load i32, ptr %5, align 4
  %49 = and i32 %48, 3584
  store i32 %49, ptr %10, align 4
  %50 = load i32, ptr %10, align 4
  %51 = icmp eq i32 %50, 1024
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %68

53:                                               ; preds = %47
  %54 = load i32, ptr %10, align 4
  %55 = icmp ne i32 %54, 2048
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load ptr, ptr %6, align 8
  %58 = getelementptr inbounds i8, ptr %57, i64 1
  %59 = load i8, ptr %58, align 1
  br label %66

60:                                               ; preds = %53
  %61 = load i32, ptr %5, align 4
  %62 = and i32 %61, 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8 88, i8 120
  br label %66

66:                                               ; preds = %60, %56
  %67 = phi i8 [ %59, %56 ], [ %65, %60 ]
  br label %68

68:                                               ; preds = %66, %52
  %69 = phi i8 [ 111, %52 ], [ %67, %66 ]
  %70 = load ptr, ptr %9, align 8
  %71 = getelementptr inbounds i8, ptr %70, i32 1
  store ptr %71, ptr %9, align 8
  store i8 %69, ptr %70, align 1
  %72 = load ptr, ptr %9, align 8
  store i8 0, ptr %72, align 1
  %73 = load ptr, ptr %7, align 8
  ret ptr %73
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@$$QEAV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef nonnull align 8 dereferenceable(32) ptr @"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@$$QEAV01@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?truename@?$numpunct@D@std@@QEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noalias sret(%"class.std::basic_string") align 8 %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds ptr, ptr %6, i64 7
  %8 = load ptr, ptr %7, align 8
  call void %8(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr sret(%"class.std::basic_string") align 8 %1)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?falsename@?$numpunct@D@std@@QEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noalias sret(%"class.std::basic_string") align 8 %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds ptr, ptr %6, i64 6
  %8 = load ptr, ptr %7, align 8
  call void %8(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr sret(%"class.std::basic_string") align 8 %1)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??4?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV01@$$QEAV01@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::_Equal_allocators", align 1
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = icmp ne ptr %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %"struct.std::_Equal_allocators", ptr %5, i32 0, i32 0
  %12 = load i8, ptr %11, align 1
  call void @"?_Move_assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U_Equal_allocators@2@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %10, i8 %12) #18
  br label %13

13:                                               ; preds = %9, %2
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Move_assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U_Equal_allocators@2@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 %2) #0 comdat align 2 {
  %4 = alloca %"struct.std::_Equal_allocators", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.std::integral_constant", align 1
  %8 = getelementptr inbounds %"struct.std::_Equal_allocators", ptr %4, i32 0, i32 0
  store i8 %2, ptr %8, align 1
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %9 = load ptr, ptr %6, align 8
  call void @"?_Tidy_deallocate@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %9) #18
  %10 = load ptr, ptr %5, align 8
  %11 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %10) #18
  %12 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %9) #18
  call void @"??$_Pocma@V?$allocator@D@std@@@std@@YAXAEAV?$allocator@D@0@0@Z"(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 1 dereferenceable(1) %11) #18
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds %"struct.std::integral_constant", ptr %7, i32 0, i32 0
  %15 = load i8, ptr %14, align 1
  call void @"?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U?$integral_constant@_N$00@2@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %13, i8 %15) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??$_Pocma@V?$allocator@D@std@@@std@@YAXAEAV?$allocator@D@0@0@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U?$integral_constant@_N$00@2@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 %2) #0 comdat align 2 {
  %4 = alloca %"struct.std::integral_constant", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %"struct.std::integral_constant", ptr %4, i32 0, i32 0
  store i8 %2, ptr %7, align 1
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %5, align 8
  call void @"?_Memcpy_val_from@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9) #18
  %10 = load ptr, ptr %5, align 8
  call void @"?_Tidy_init@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %10) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?_Memcpy_val_from@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"class.std::basic_string", ptr %7, i32 0, i32 0
  %9 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %8, i32 0, i32 0
  %10 = getelementptr inbounds i8, ptr %9, i64 0
  store ptr %10, ptr %5, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %"class.std::basic_string", ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %12, i32 0, i32 0
  %14 = getelementptr inbounds i8, ptr %13, i64 0
  store ptr %14, ptr %6, align 8
  %15 = load ptr, ptr %5, align 8
  %16 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr align 1 %16, i64 32, i1 false)
  ret void
}

declare dso_local void @"?_Locinfo_dtor@_Locinfo@std@@SAXPEAV12@@Z"(ptr noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_cast@std@@QEAA@XZ"(ptr noundef nonnull returned align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef ptr @"??0exception@std@@QEAA@QEBDH@Z"(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef @"??_C@_08EPJLHIJG@bad?5cast?$AA@", i32 noundef 1) #18
  store ptr @"??_7bad_cast@std@@6B@", ptr %3, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0bad_cast@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"??0exception@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #18
  store ptr @"??_7bad_cast@std@@6B@", ptr %5, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1bad_cast@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1exception@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??_Gbad_cast@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1bad_cast@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %6) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX@Z"(ptr noundef %6) #22
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$?0AEAPEAV_Facet_base@std@@@?$_Compressed_pair@U?$default_delete@V_Facet_base@std@@@std@@PEAV_Facet_base@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@AEAPEAV_Facet_base@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(8) %0, i8 %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 comdat align 2 {
  %4 = alloca %"struct.std::_Zero_then_variadic_args_t", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %"struct.std::_Zero_then_variadic_args_t", ptr %4, i32 0, i32 0
  store i8 %1, ptr %7, align 1
  store ptr %2, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = getelementptr inbounds %"class.std::_Compressed_pair", ptr %8, i32 0, i32 0
  %10 = load ptr, ptr %5, align 8
  %11 = load ptr, ptr %10, align 8
  store ptr %11, ptr %9, align 8
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$exchange@PEAV_Facet_base@std@@PEAV12@@std@@YAPEAV_Facet_base@0@AEAPEAV10@$$QEAPEAV10@@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %6, align 8
  store ptr %7, ptr %5, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %4, align 8
  store ptr %9, ptr %10, align 8
  %11 = load ptr, ptr %5, align 8
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @"?_Get_first@?$_Compressed_pair@U?$default_delete@V_Facet_base@std@@@std@@PEAV_Facet_base@2@$00@std@@QEAAAEAU?$default_delete@V_Facet_base@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??R?$default_delete@V_Facet_base@std@@@std@@QEBAXPEAV_Facet_base@1@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 8
  %10 = getelementptr inbounds ptr, ptr %9, i64 0
  %11 = load ptr, ptr %10, align 8
  %12 = call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1) #18
  br label %13

13:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0locale@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds i8, ptr %5, i64 1
  %7 = getelementptr inbounds %"class.std::locale", ptr %5, i32 0, i32 1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %"class.std::locale", ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %7, align 8
  %11 = getelementptr inbounds %"class.std::locale", ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds ptr, ptr %13, i64 1
  %15 = load ptr, ptr %14, align 8
  call void %15(ptr noundef nonnull align 8 dereferenceable(16) %12) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?clear@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z"(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
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
define linkonce_odr dso_local void @"?clear@ios_base@std@@QEAAXH_N@Z"(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
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
  call void @_CxxThrowException(ptr null, ptr null) #19
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
  call void @"?make_error_code@std@@YA?AVerror_code@1@W4io_errc@1@@Z"(ptr sret(%"class.std::error_code") align 8 %10, i32 noundef 1) #18
  %40 = load ptr, ptr %8, align 8
  %41 = call noundef ptr @"??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z"(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef %40, ptr noundef nonnull align 8 dereferenceable(16) %10)
  call void @_CxxThrowException(ptr %9, ptr @"_TI5?AVfailure@ios_base@std@@") #19
  unreachable

42:                                               ; preds = %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?make_error_code@std@@YA?AVerror_code@1@W4io_errc@1@@Z"(ptr noalias sret(%"class.std::error_code") align 8 %0, i32 noundef %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = call noundef nonnull align 8 dereferenceable(16) ptr @"?iostream_category@std@@YAAEBVerror_category@1@XZ"() #18
  %6 = load i32, ptr %4, align 4
  %7 = call noundef ptr @"??0error_code@std@@QEAA@HAEBVerror_category@1@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0failure@ios_base@std@@QEAA@PEBDAEBVerror_code@2@@Z"(ptr noundef nonnull returned align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 {
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
define linkonce_odr dso_local noundef ptr @"??0failure@ios_base@std@@QEAA@AEBV012@@Z"(ptr noundef nonnull returned align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"??0system_error@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %6) #18
  store ptr @"??_7failure@ios_base@std@@6B@", ptr %5, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0system_error@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"??0_System_error@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %6) #18
  store ptr @"??_7system_error@std@@6B@", ptr %5, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0_System_error@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"??0runtime_error@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #18
  store ptr @"??_7_System_error@std@@6B@", ptr %5, align 8
  %8 = getelementptr inbounds %"class.std::_System_error", ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %"class.std::_System_error", ptr %9, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %10, i64 16, i1 false)
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0runtime_error@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"??0exception@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #18
  store ptr @"??_7runtime_error@std@@6B@", ptr %5, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1failure@ios_base@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1system_error@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %3) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @"?iostream_category@std@@YAAEBVerror_category@1@XZ"() #0 comdat {
  %1 = call noundef nonnull align 8 dereferenceable(16) ptr @"??$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@0@XZ"() #18
  ret ptr %1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0error_code@std@@QEAA@HAEBVerror_category@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 {
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
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @"??$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@0@XZ"() #0 comdat {
  %1 = load atomic i32, ptr @"?$TSS0@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@0@XZ@4HA" unordered, align 4
  %2 = load i32, ptr @_Init_thread_epoch, align 4
  %3 = icmp sgt i32 %1, %2
  br i1 %3, label %4, label %9, !prof !21

4:                                                ; preds = %0
  call void @_Init_thread_header(ptr @"?$TSS0@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@0@XZ@4HA") #18
  %5 = load atomic i32, ptr @"?$TSS0@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@0@XZ@4HA" unordered, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = call i32 @atexit(ptr @"??__F_Static@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@YAXXZ") #18
  call void @_Init_thread_footer(ptr @"?$TSS0@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@0@XZ@4HA") #18
  br label %9

9:                                                ; preds = %7, %4, %0
  ret ptr @"?_Static@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4V21@A"
}

; Function Attrs: nounwind
declare dso_local void @_Init_thread_header(ptr) #18

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1_Iostream_error_category2@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1error_category@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  ret void
}

; Function Attrs: noinline uwtable
define internal void @"??__F_Static@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@YAXXZ"() #2 {
  call void @"??1_Iostream_error_category2@std@@UEAA@XZ"(ptr @"?_Static@?1???$_Immortalize_memcpy_image@V_Iostream_error_category2@std@@@std@@YAAEBV_Iostream_error_category2@1@XZ@4V21@A")
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @atexit(ptr) #18

; Function Attrs: nounwind
declare dso_local void @_Init_thread_footer(ptr) #18

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??_G_Iostream_error_category2@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1_Iostream_error_category2@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX@Z"(ptr noundef %6) #22
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"?name@_Iostream_error_category2@std@@UEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr @"??_C@_08LLGCOLLL@iostream?$AA@"
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?message@_Iostream_error_category2@std@@UEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@H@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias sret(%"class.std::basic_string") align 8 %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
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
define linkonce_odr dso_local void @"?default_error_condition@error_category@std@@UEBA?AVerror_condition@2@H@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias sret(%"class.std::error_condition") align 8 %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8
  store i32 %2, ptr %5, align 4
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load i32, ptr %5, align 4
  %9 = call noundef ptr @"??0error_condition@std@@QEAA@HAEBVerror_category@1@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %8, ptr noundef nonnull align 8 dereferenceable(16) %7) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"?equivalent@error_category@std@@UEBA_NAEBVerror_code@2@H@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i32 %2, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = call noundef nonnull align 8 dereferenceable(16) ptr @"?category@error_code@std@@QEBAAEBVerror_category@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %8) #18
  %10 = call noundef zeroext i1 @"??8error_category@std@@QEBA_NAEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %9) #18
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load ptr, ptr %5, align 8
  %13 = call noundef i32 @"?value@error_code@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(16) %12) #18
  %14 = load i32, ptr %4, align 4
  %15 = icmp eq i32 %13, %14
  br label %16

16:                                               ; preds = %11, %3
  %17 = phi i1 [ false, %3 ], [ %15, %11 ]
  ret i1 %17
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"?equivalent@error_category@std@@UEBA_NHAEBVerror_condition@2@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 comdat align 2 {
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
  call void %13(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr sret(%"class.std::error_condition") align 8 %7, i32 noundef %10) #18
  %14 = call noundef zeroext i1 @"??8std@@YA_NAEBVerror_condition@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %9) #18
  ret i1 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1error_category@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@QEBD_K@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__CxxFrameHandler3 {
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
  %15 = call noundef ptr @"??$?0$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_Zero_then_variadic_args_t@1@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 %14) #18
  store ptr %9, ptr %8, align 8
  %16 = getelementptr inbounds %"class.std::basic_string", ptr %11, i32 0, i32 0
  %17 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %16, i32 0, i32 0
  %18 = load ptr, ptr %8, align 8
  %19 = call noundef ptr @"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull align 1 dereferenceable(1) %17) #18
  call void @"?_Tidy_init@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(32) %11) #18
  %20 = load i64, ptr %4, align 8
  %21 = load ptr, ptr %5, align 8
  %22 = invoke noundef nonnull align 8 dereferenceable(32) ptr @"?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %21, i64 noundef %20)
          to label %23 unwind label %24

23:                                               ; preds = %3
  call void @"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %10) #18
  ret ptr %11

24:                                               ; preds = %3
  %25 = cleanuppad within none []
  call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %12) #18 [ "funclet"(token %25) ]
  cleanupret from %25 unwind to caller
}

declare dso_local noundef ptr @"?_Syserror_map@std@@YAPEBDH@Z"(i32 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0error_condition@std@@QEAA@HAEBVerror_category@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 {
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
define linkonce_odr dso_local noundef zeroext i1 @"??8error_category@std@@QEBA_NAEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 comdat align 2 {
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
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @"?category@error_code@std@@QEBAAEBVerror_category@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::error_code", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @"?value@error_code@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::error_code", ptr %3, i32 0, i32 0
  %5 = load i32, ptr %4, align 8
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"??8std@@YA_NAEBVerror_condition@0@0@Z"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = call noundef nonnull align 8 dereferenceable(16) ptr @"?category@error_condition@std@@QEBAAEBVerror_category@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  %7 = load ptr, ptr %3, align 8
  %8 = call noundef nonnull align 8 dereferenceable(16) ptr @"?category@error_condition@std@@QEBAAEBVerror_category@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %7) #18
  %9 = call noundef zeroext i1 @"??8error_category@std@@QEBA_NAEBV01@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %8) #18
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8
  %12 = call noundef i32 @"?value@error_condition@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(16) %11) #18
  %13 = load ptr, ptr %3, align 8
  %14 = call noundef i32 @"?value@error_condition@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(16) %13) #18
  %15 = icmp eq i32 %12, %14
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi i1 [ false, %2 ], [ %15, %10 ]
  ret i1 %17
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @"?category@error_condition@std@@QEBAAEBVerror_category@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::error_condition", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @"?value@error_condition@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::error_condition", ptr %3, i32 0, i32 0
  %5 = load i32, ptr %4, align 8
  ret i32 %5
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0system_error@std@@QEAA@Verror_code@1@PEBD@Z"(ptr noundef nonnull returned align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__CxxFrameHandler3 {
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
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %6) #18
  store ptr @"??_7system_error@std@@6B@", ptr %8, align 8
  ret ptr %8

13:                                               ; preds = %3
  %14 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %6) #18 [ "funclet"(token %14) ]
  cleanupret from %14 unwind to caller
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??_Gfailure@ios_base@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1failure@ios_base@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %6) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX@Z"(ptr noundef %6) #22
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0_System_error@std@@IEAA@Verror_code@1@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #4 comdat align 2 personality ptr @__CxxFrameHandler3 {
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
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %6) #18
  store ptr @"??_7_System_error@std@@6B@", ptr %9, align 8
  %14 = getelementptr inbounds %"class.std::_System_error", ptr %9, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 8 %1, i64 16, i1 false)
  ret ptr %9

15:                                               ; preds = %3
  %16 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %6) #18 [ "funclet"(token %16) ]
  cleanupret from %16 unwind to caller
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??_Gsystem_error@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1system_error@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %6) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX@Z"(ptr noundef %6) #22
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?_Makestr@_System_error@std@@CA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@Verror_code@2@V32@@Z"(ptr noalias sret(%"class.std::basic_string") align 8 %0, ptr noundef %1, ptr noundef %2) #1 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::basic_string", align 8
  store ptr %0, ptr %4, align 8
  %6 = call noundef zeroext i1 @"?empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
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
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  %14 = call noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@$$QEAV01@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  ret void

15:                                               ; preds = %11
  %16 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %5) #18 [ "funclet"(token %16) ]
  cleanupret from %16 unwind label %17

17:                                               ; preds = %15, %10, %7
  %18 = cleanuppad within none []
  call void @"??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %2) #18 [ "funclet"(token %18) ]
  cleanupret from %18 unwind to caller
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@AEBV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #4 comdat align 2 personality ptr @__CxxFrameHandler3 {
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
  %13 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBAAEBV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %12) #18
  call void @"?select_on_container_copy_construction@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA?AV?$allocator@D@2@AEBV32@@Z"(ptr sret(%"class.std::allocator") align 1 %5, ptr noundef nonnull align 1 dereferenceable(1) %13)
  %14 = getelementptr inbounds %"struct.std::_One_then_variadic_args_t", ptr %6, i32 0, i32 0
  %15 = load i8, ptr %14, align 1
  %16 = call noundef ptr @"??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 %15, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  store ptr %8, ptr %7, align 8
  %17 = getelementptr inbounds %"class.std::basic_string", ptr %10, i32 0, i32 0
  %18 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %17, i32 0, i32 0
  %19 = load ptr, ptr %7, align 8
  %20 = call noundef ptr @"??0_Fake_proxy_ptr_impl@std@@QEAA@AEBU_Fake_allocator@1@AEBU_Container_base0@1@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %19, ptr noundef nonnull align 1 dereferenceable(1) %18) #18
  %21 = load ptr, ptr %3, align 8
  invoke void @"?_Construct_lv_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %22 unwind label %23

22:                                               ; preds = %2
  call void @"?_Release@_Fake_proxy_ptr_impl@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %9) #18
  ret ptr %10

23:                                               ; preds = %2
  %24 = cleanuppad within none []
  call void @"??1?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %11) #18 [ "funclet"(token %24) ]
  cleanupret from %24 unwind to caller
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0runtime_error@std@@QEAA@AEBV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef ptr @"?c_str@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %6) #18
  %8 = call noundef ptr @"??0exception@std@@QEAA@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %7) #18
  store ptr @"??_7runtime_error@std@@6B@", ptr %5, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??_G_System_error@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1_System_error@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %6) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX@Z"(ptr noundef %6) #22
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @"?empty@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef i64 @"?size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  %5 = icmp eq i64 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef i64 @"?length@?$_Narrow_char_traits@DH@std@@SA_KQEBD@Z"(ptr noundef %6) #18
  %8 = call noundef i64 @"??$_Convert_size@_K@std@@YA_K_K@Z"(i64 noundef %7) #18
  %9 = load ptr, ptr %3, align 8
  %10 = call noundef nonnull align 8 dereferenceable(32) ptr @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %9, i64 noundef %8)
  ret ptr %10
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@AEBV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %"class.std::basic_string", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %7, i32 0, i32 0
  %9 = getelementptr inbounds %"class.std::_String_val", ptr %8, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %"class.std::basic_string", ptr %11, i32 0, i32 0
  %13 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %12, i32 0, i32 0
  %14 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %13) #18
  %15 = call noundef nonnull align 8 dereferenceable(32) ptr @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, i64 noundef %10)
  ret ptr %15
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?message@error_code@std@@QEBA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias sret(%"class.std::basic_string") align 8 %1) #1 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = call noundef nonnull align 8 dereferenceable(16) ptr @"?category@error_code@std@@QEBAAEBVerror_category@2@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  %7 = call noundef i32 @"?value@error_code@std@@QEBAHXZ"(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  %8 = load ptr, ptr %6, align 8
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  call void %10(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr sret(%"class.std::basic_string") align 8 %1, i32 noundef %7)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAA@$$QEAV01@@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 comdat align 2 {
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
  %11 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %10) #18
  %12 = getelementptr inbounds %"struct.std::_One_then_variadic_args_t", ptr %5, i32 0, i32 0
  %13 = load i8, ptr %12, align 1
  %14 = call noundef ptr @"??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 %13, ptr noundef nonnull align 1 dereferenceable(1) %11) #18
  %15 = getelementptr inbounds %"class.std::basic_string", ptr %8, i32 0, i32 0
  %16 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %15, i32 0, i32 0
  call void @"?_Alloc_proxy@_Container_base0@std@@QEAAXAEBU_Fake_allocator@2@@Z"(ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 1 dereferenceable(1) %6) #18
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %"struct.std::integral_constant", ptr %7, i32 0, i32 0
  %19 = load i8, ptr %18, align 1
  call void @"?_Take_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEAV12@U?$integral_constant@_N$00@2@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %17, i8 %19) #18
  ret ptr %8
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"?append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV12@QEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2) #1 comdat align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  %11 = alloca %class.anon.8, align 1
  store i64 %2, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %0, ptr %7, align 8
  %12 = load ptr, ptr %7, align 8
  %13 = getelementptr inbounds %"class.std::basic_string", ptr %12, i32 0, i32 0
  %14 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %13, i32 0, i32 0
  %15 = getelementptr inbounds %"class.std::_String_val", ptr %14, i32 0, i32 1
  %16 = load i64, ptr %15, align 8
  store i64 %16, ptr %8, align 8
  %17 = load i64, ptr %5, align 8
  %18 = getelementptr inbounds %"class.std::basic_string", ptr %12, i32 0, i32 0
  %19 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %18, i32 0, i32 0
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
  %30 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %29, i32 0, i32 0
  %31 = getelementptr inbounds %"class.std::_String_val", ptr %30, i32 0, i32 1
  store i64 %28, ptr %31, align 8
  %32 = getelementptr inbounds %"class.std::basic_string", ptr %12, i32 0, i32 0
  %33 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %32, i32 0, i32 0
  %34 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEAAPEADXZ"(ptr noundef nonnull align 8 dereferenceable(32) %33) #18
  store ptr %34, ptr %9, align 8
  %35 = load i64, ptr %5, align 8
  %36 = load ptr, ptr %6, align 8
  %37 = load ptr, ptr %9, align 8
  %38 = load i64, ptr %8, align 8
  %39 = getelementptr inbounds i8, ptr %37, i64 %38
  %40 = call noundef ptr @"?move@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %39, ptr noundef %36, i64 noundef %35) #18
  store i8 0, ptr %10, align 1
  %41 = load ptr, ptr %9, align 8
  %42 = load i64, ptr %8, align 8
  %43 = load i64, ptr %5, align 8
  %44 = add i64 %42, %43
  %45 = getelementptr inbounds i8, ptr %41, i64 %44
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %45, ptr noundef nonnull align 1 dereferenceable(1) %10) #18
  store ptr %12, ptr %4, align 8
  br label %53

46:                                               ; preds = %3
  %47 = load i64, ptr %5, align 8
  %48 = load ptr, ptr %6, align 8
  %49 = load i64, ptr %5, align 8
  %50 = getelementptr inbounds %class.anon.8, ptr %11, i32 0, i32 0
  %51 = load i8, ptr %50, align 1
  %52 = call noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_grow_by@V<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD_K@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??append@01@QEAAAEAV01@QEBD0@Z@PEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %49, i8 %51, ptr noundef %48, i64 noundef %47)
  store ptr %52, ptr %4, align 8
  br label %53

53:                                               ; preds = %46, %25
  %54 = load ptr, ptr %4, align 8
  ret ptr %54
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @"??$_Reallocate_grow_by@V<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV34@QEBD_K@Z@PEBD_K@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV01@_KV<lambda_1>@?0??append@01@QEAAAEAV01@QEBD0@Z@PEBD_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 %2, ptr noundef %3, i64 noundef %4) #1 comdat align 2 {
  %6 = alloca %class.anon.8, align 1
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
  %20 = getelementptr inbounds %class.anon.8, ptr %6, i32 0, i32 0
  store i8 %2, ptr %20, align 1
  store i64 %4, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  store i64 %1, ptr %9, align 8
  store ptr %0, ptr %10, align 8
  %21 = load ptr, ptr %10, align 8
  %22 = getelementptr inbounds %"class.std::basic_string", ptr %21, i32 0, i32 0
  %23 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %22, i32 0, i32 0
  store ptr %23, ptr %11, align 8
  %24 = load ptr, ptr %11, align 8
  %25 = getelementptr inbounds %"class.std::_String_val", ptr %24, i32 0, i32 1
  %26 = load i64, ptr %25, align 8
  store i64 %26, ptr %12, align 8
  %27 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %21) #18
  %28 = load i64, ptr %12, align 8
  %29 = sub i64 %27, %28
  %30 = load i64, ptr %9, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %5
  call void @"?_Xlen_string@std@@YAXXZ"() #19
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
  %41 = call noundef i64 @"?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEBA_K_K@Z"(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef %40) #18
  store i64 %41, ptr %15, align 8
  %42 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %21) #18
  store ptr %42, ptr %16, align 8
  %43 = load ptr, ptr %16, align 8
  %44 = load i64, ptr %15, align 8
  %45 = add i64 %44, 1
  %46 = call noundef ptr @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %43, i64 noundef %45)
  store ptr %46, ptr %17, align 8
  %47 = load ptr, ptr %11, align 8
  call void @"?_Orphan_all@_Container_base0@std@@QEAAXXZ"(ptr noundef nonnull align 1 dereferenceable(1) %47) #18
  %48 = load i64, ptr %13, align 8
  %49 = load ptr, ptr %11, align 8
  %50 = getelementptr inbounds %"class.std::_String_val", ptr %49, i32 0, i32 1
  store i64 %48, ptr %50, align 8
  %51 = load i64, ptr %15, align 8
  %52 = load ptr, ptr %11, align 8
  %53 = getelementptr inbounds %"class.std::_String_val", ptr %52, i32 0, i32 2
  store i64 %51, ptr %53, align 8
  %54 = load ptr, ptr %17, align 8
  %55 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %54) #18
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
  %66 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %65) #18
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
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %84, ptr noundef nonnull align 8 dereferenceable(8) %17) #18
  br label %85

85:                                               ; preds = %75, %58
  ret ptr %21
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??R<lambda_1>@?0??append@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEAAAEAV23@QEBD_K@Z@QEBA?A?<auto>@@QEAD0101@Z"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) #0 comdat align 2 {
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
  %18 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %17, ptr noundef %16, i64 noundef %15) #18
  %19 = load i64, ptr %7, align 8
  %20 = load ptr, ptr %8, align 8
  %21 = load ptr, ptr %11, align 8
  %22 = load i64, ptr %9, align 8
  %23 = getelementptr inbounds i8, ptr %21, i64 %22
  %24 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %23, ptr noundef %20, i64 noundef %19) #18
  store i8 0, ptr %13, align 1
  %25 = load ptr, ptr %11, align 8
  %26 = load i64, ptr %9, align 8
  %27 = load i64, ptr %7, align 8
  %28 = add i64 %26, %27
  %29 = getelementptr inbounds i8, ptr %25, i64 %28
  call void @"?assign@?$_Narrow_char_traits@DH@std@@SAXAEADAEBD@Z"(ptr noundef nonnull align 1 dereferenceable(1) %29, ptr noundef nonnull align 1 dereferenceable(1) %13) #18
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??$?0V?$allocator@D@std@@$$V@?$_Compressed_pair@V?$allocator@D@std@@V?$_String_val@U?$_Simple_types@D@std@@@2@$00@std@@QEAA@U_One_then_variadic_args_t@1@$$QEAV?$allocator@D@1@@Z"(ptr noundef nonnull returned align 8 dereferenceable(32) %0, i8 %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat align 2 {
  %4 = alloca %"struct.std::_One_then_variadic_args_t", align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %"struct.std::_One_then_variadic_args_t", ptr %4, i32 0, i32 0
  store i8 %1, ptr %7, align 1
  store ptr %2, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %8, i32 0, i32 0
  %11 = call noundef ptr @"??0?$_String_val@U?$_Simple_types@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %10) #18
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"?select_on_container_copy_construction@?$_Default_allocator_traits@V?$allocator@D@std@@@std@@SA?AV?$allocator@D@2@AEBV32@@Z"(ptr noalias sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #0 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?_Construct_lv_contents@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAXAEBV12@@Z"(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #1 comdat align 2 {
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
  %17 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %16, i32 0, i32 0
  store ptr %17, ptr %5, align 8
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds %"class.std::_String_val", ptr %18, i32 0, i32 1
  %20 = load i64, ptr %19, align 8
  store i64 %20, ptr %6, align 8
  %21 = load ptr, ptr %5, align 8
  %22 = call noundef ptr @"?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QEBAPEBDXZ"(ptr noundef nonnull align 8 dereferenceable(32) %21) #18
  store ptr %22, ptr %7, align 8
  %23 = getelementptr inbounds %"class.std::basic_string", ptr %14, i32 0, i32 0
  %24 = getelementptr inbounds %"class.std::_Compressed_pair.1", ptr %23, i32 0, i32 0
  store ptr %24, ptr %8, align 8
  %25 = load i64, ptr %6, align 8
  %26 = icmp ult i64 %25, 16
  br i1 %26, label %27, label %38

27:                                               ; preds = %2
  %28 = load ptr, ptr %7, align 8
  %29 = load ptr, ptr %8, align 8
  %30 = getelementptr inbounds %"class.std::_String_val", ptr %29, i32 0, i32 0
  %31 = getelementptr inbounds [16 x i8], ptr %30, i64 0, i64 0
  %32 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %31, ptr noundef %28, i64 noundef 16) #18
  %33 = load i64, ptr %6, align 8
  %34 = load ptr, ptr %8, align 8
  %35 = getelementptr inbounds %"class.std::_String_val", ptr %34, i32 0, i32 1
  store i64 %33, ptr %35, align 8
  %36 = load ptr, ptr %8, align 8
  %37 = getelementptr inbounds %"class.std::_String_val", ptr %36, i32 0, i32 2
  store i64 15, ptr %37, align 8
  br label %63

38:                                               ; preds = %2
  %39 = call noundef nonnull align 1 dereferenceable(1) ptr @"?_Getal@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@AEAAAEAV?$allocator@D@2@XZ"(ptr noundef nonnull align 8 dereferenceable(32) %14) #18
  store ptr %39, ptr %9, align 8
  %40 = call noundef i64 @"?max_size@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QEBA_KXZ"(ptr noundef nonnull align 8 dereferenceable(32) %14) #18
  store i64 %40, ptr %11, align 8
  %41 = load i64, ptr %6, align 8
  %42 = or i64 %41, 15
  store i64 %42, ptr %12, align 8
  %43 = call noundef nonnull align 8 dereferenceable(8) ptr @"??$min@_K@std@@YAAEB_KAEB_K0@Z"(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11) #18
  %44 = load i64, ptr %43, align 8
  store i64 %44, ptr %10, align 8
  %45 = load ptr, ptr %9, align 8
  %46 = load i64, ptr %10, align 8
  %47 = add i64 %46, 1
  %48 = call noundef ptr @"?allocate@?$allocator@D@std@@QEAAPEAD_K@Z"(ptr noundef nonnull align 1 dereferenceable(1) %45, i64 noundef %47)
  store ptr %48, ptr %13, align 8
  %49 = load ptr, ptr %8, align 8
  %50 = getelementptr inbounds %"class.std::_String_val", ptr %49, i32 0, i32 0
  call void @"??$_Construct_in_place@PEADAEBQEAD@std@@YAXAEAPEADAEBQEAD@Z"(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef nonnull align 8 dereferenceable(8) %13) #18
  %51 = load i64, ptr %6, align 8
  %52 = add i64 %51, 1
  %53 = load ptr, ptr %7, align 8
  %54 = load ptr, ptr %13, align 8
  %55 = call noundef ptr @"??$_Unfancy@D@std@@YAPEADPEAD@Z"(ptr noundef %54) #18
  %56 = call noundef ptr @"?copy@?$_Char_traits@DH@std@@SAPEADQEADQEBD_K@Z"(ptr noundef %55, ptr noundef %53, i64 noundef %52) #18
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

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??0exception@std@@QEAA@QEBD@Z"(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__CxxFrameHandler3 {
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
  call void @__std_terminate() #20 [ "funclet"(token %14) ]
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @"??_Gruntime_error@std@@UEAAPEAXI@Z"(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %1, ptr %4, align 4
  store ptr %0, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  call void @"??1runtime_error@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %6) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @"??3@YAXPEAX@Z"(ptr noundef %6) #22
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1runtime_error@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1exception@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1_System_error@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1runtime_error@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @"??1system_error@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @"??1_System_error@std@@UEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(40) %3) #18
  ret void
}

; Function Attrs: nounwind
declare dso_local noundef zeroext i1 @"?uncaught_exception@std@@YA_NXZ"() #5

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @"?_Osfx@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAXXZ"(ptr noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 personality ptr @__CxxFrameHandler3 {
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

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i64 @"?sputn@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAA_JPEBD_J@Z"(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i64 noundef %2) #1 comdat align 2 {
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

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @"?put@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAAAEAV12@D@Z"(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef %1) #1 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca %"class.std::basic_ostream<char>::sentry", align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8 %1, ptr %3, align 1
  store ptr %0, ptr %4, align 8
  %9 = load ptr, ptr %4, align 8
  store i32 0, ptr %5, align 4
  %10 = call noundef ptr @"??0sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@AEAV12@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %11 = call noundef zeroext i1 @"??Bsentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEBA_NXZ"(ptr noundef nonnull align 8 dereferenceable(16) %6)
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, ptr %5, align 4
  %14 = or i32 %13, 4
  store i32 %14, ptr %5, align 4
  br label %47

15:                                               ; preds = %2
  %16 = getelementptr inbounds i8, ptr %9, i64 0
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds i32, ptr %17, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 0, %20
  %22 = getelementptr inbounds i8, ptr %9, i64 %21
  %23 = call noundef ptr @"?rdbuf@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBAPEAV?$basic_streambuf@DU?$char_traits@D@std@@@2@XZ"(ptr noundef nonnull align 8 dereferenceable(96) %22)
  %24 = load i8, ptr %3, align 1
  %25 = invoke noundef i32 @"?sputc@?$basic_streambuf@DU?$char_traits@D@std@@@std@@QEAAHD@Z"(ptr noundef nonnull align 8 dereferenceable(104) %23, i8 noundef %24)
          to label %40 unwind label %26

26:                                               ; preds = %15
  %27 = catchswitch within none [label %28] unwind label %57

28:                                               ; preds = %26
  %29 = catchpad within %27 [ptr null, i32 64, ptr null]
  %30 = getelementptr inbounds i8, ptr %9, i64 0
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds i32, ptr %31, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 0, %34
  %36 = getelementptr inbounds i8, ptr %9, i64 %35
  invoke void @"?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z"(ptr noundef nonnull align 8 dereferenceable(96) %36, i32 noundef 4, i1 noundef zeroext true) [ "funclet"(token %29) ]
          to label %37 unwind label %57

37:                                               ; preds = %28
  catchret from %29 to label %38

38:                                               ; preds = %37
  br label %39

39:                                               ; preds = %38, %46
  br label %47

40:                                               ; preds = %15
  store i32 %25, ptr %7, align 4
  %41 = call noundef i32 @"?eof@?$_Narrow_char_traits@DH@std@@SAHXZ"() #18
  store i32 %41, ptr %8, align 4
  %42 = call noundef zeroext i1 @"?eq_int_type@?$_Narrow_char_traits@DH@std@@SA_NAEBH0@Z"(ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %7) #18
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, ptr %5, align 4
  %45 = or i32 %44, 4
  store i32 %45, ptr %5, align 4
  br label %46

46:                                               ; preds = %43, %40
  br label %39

47:                                               ; preds = %39, %12
  %48 = getelementptr inbounds i8, ptr %9, i64 0
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds i32, ptr %49, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 0, %52
  %54 = getelementptr inbounds i8, ptr %9, i64 %53
  %55 = load i32, ptr %5, align 4
  invoke void @"?setstate@?$basic_ios@DU?$char_traits@D@std@@@std@@QEAAXH_N@Z"(ptr noundef nonnull align 8 dereferenceable(96) %54, i32 noundef %55, i1 noundef zeroext false)
          to label %56 unwind label %57

56:                                               ; preds = %47
  call void @"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
  ret ptr %9

57:                                               ; preds = %47, %28, %26
  %58 = cleanuppad within none []
  call void @"??1sentry@?$basic_ostream@DU?$char_traits@D@std@@@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %6) #18 [ "funclet"(token %58) ]
  cleanupret from %58 unwind to caller
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i8 @"?widen@?$basic_ios@DU?$char_traits@D@std@@@std@@QEBADD@Z"(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 noundef %1) #1 comdat align 2 personality ptr @__CxxFrameHandler3 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::locale", align 8
  store i8 %1, ptr %3, align 1
  store ptr %0, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  call void @"?getloc@ios_base@std@@QEBA?AVlocale@2@XZ"(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr sret(%"class.std::locale") align 8 %5)
  %7 = invoke noundef nonnull align 8 dereferenceable(48) ptr @"??$use_facet@V?$ctype@D@std@@@std@@YAAEBV?$ctype@D@0@AEBVlocale@0@@Z"(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %8 unwind label %12

8:                                                ; preds = %2
  %9 = load i8, ptr %3, align 1
  %10 = invoke noundef i8 @"?widen@?$ctype@D@std@@QEBADD@Z"(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 noundef %9)
          to label %11 unwind label %12

11:                                               ; preds = %8
  call void @"??1locale@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  ret i8 %10

12:                                               ; preds = %8, %2
  %13 = cleanuppad within none []
  call void @"??1locale@std@@QEAA@XZ"(ptr noundef nonnull align 8 dereferenceable(16) %5) #18 [ "funclet"(token %13) ]
  cleanupret from %13 unwind to caller
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i8 @"?widen@?$ctype@D@std@@QEBADD@Z"(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef %1) #1 comdat align 2 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  store i8 %1, ptr %3, align 1
  store ptr %0, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load i8, ptr %3, align 1
  %7 = load ptr, ptr %5, align 8
  %8 = getelementptr inbounds ptr, ptr %7, i64 8
  %9 = load ptr, ptr %8, align 8
  %10 = call noundef i8 %9(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 noundef %6)
  ret i8 %10
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline noreturn optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn nounwind }
attributes #12 = { argmemonly nocallback nofree nounwind willreturn }
attributes #13 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #14 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind }
attributes #19 = { noreturn }
attributes #20 = { noreturn nounwind }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }
attributes #23 = { nounwind readnone willreturn }
attributes #24 = { allocsize(0) }
attributes #25 = { allocsize(0,1) }

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
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = !{!"branch_weights", i32 1, i32 1048575}
