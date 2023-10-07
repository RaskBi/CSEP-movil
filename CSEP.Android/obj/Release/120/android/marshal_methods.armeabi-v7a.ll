; ModuleID = 'obj\Release\120\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Release\120\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [142 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 65
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 49
	i32 39852199, ; 2: Plugin.Permissions => 0x26018a7 => 52
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 60
	i32 57967248, ; 4: Xamarin.Android.Support.VersionedParcelable.dll => 0x3748290 => 20
	i32 166922606, ; 5: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 14
	i32 172012715, ; 6: FastAndroidCamera.dll => 0xa40b4ab => 46
	i32 174758319, ; 7: CSEP.Android => 0xa6a99af => 44
	i32 182336117, ; 8: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 35
	i32 219130465, ; 9: Xamarin.Android.Support.v4 => 0xd0faa61 => 19
	i32 232815796, ; 10: System.Web.Services => 0xde07cb4 => 40
	i32 318968648, ; 11: Xamarin.AndroidX.Activity.dll => 0x13031348 => 57
	i32 321597661, ; 12: System.Numerics => 0x132b30dd => 8
	i32 334355562, ; 13: ZXing.Net.Mobile.Forms.dll => 0x13eddc6a => 68
	i32 342366114, ; 14: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 30
	i32 381494705, ; 15: Xamarin.Forms.Material => 0x16bd25b1 => 61
	i32 389971796, ; 16: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 15
	i32 442521989, ; 17: Xamarin.Essentials => 0x1a605985 => 59
	i32 450948140, ; 18: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 28
	i32 465846621, ; 19: mscorlib => 0x1bc4415d => 4
	i32 469710990, ; 20: System.dll => 0x1bff388e => 7
	i32 514659665, ; 21: Xamarin.Android.Support.Compat => 0x1ead1551 => 14
	i32 535407790, ; 22: CSEP.dll => 0x1fe9acae => 45
	i32 548916678, ; 23: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 48
	i32 627609679, ; 24: Xamarin.AndroidX.CustomView => 0x2568904f => 26
	i32 662205335, ; 25: System.Text.Encodings.Web.dll => 0x27787397 => 55
	i32 690569205, ; 26: System.Xml.Linq.dll => 0x29293ff5 => 11
	i32 703051821, ; 27: CSEP.Android.dll => 0x29e7b82d => 44
	i32 809851609, ; 28: System.Drawing.Common.dll => 0x30455ad9 => 39
	i32 882883187, ; 29: Xamarin.Android.Support.v4.dll => 0x349fba73 => 19
	i32 928116545, ; 30: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 65
	i32 954320159, ; 31: ZXing.Net.Mobile.Forms => 0x38e1c51f => 68
	i32 955402788, ; 32: Newtonsoft.Json => 0x38f24a24 => 49
	i32 957807352, ; 33: Plugin.CurrentActivity => 0x3916faf8 => 50
	i32 958213972, ; 34: Xamarin.Android.Support.Media.Compat => 0x391d2f54 => 18
	i32 967690846, ; 35: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 30
	i32 974778368, ; 36: FormsViewGroup.dll => 0x3a19f000 => 47
	i32 1012816738, ; 37: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 58
	i32 1035644815, ; 38: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 22
	i32 1042160112, ; 39: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 63
	i32 1052210849, ; 40: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 32
	i32 1098259244, ; 41: System => 0x41761b2c => 7
	i32 1104002344, ; 42: Plugin.Media => 0x41cdbd28 => 51
	i32 1134191450, ; 43: ZXingNetMobile.dll => 0x439a635a => 70
	i32 1137654822, ; 44: Plugin.Permissions.dll => 0x43cf3c26 => 52
	i32 1293217323, ; 45: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 27
	i32 1365406463, ; 46: System.ServiceModel.Internals.dll => 0x516272ff => 41
	i32 1376866003, ; 47: Xamarin.AndroidX.SavedState => 0x52114ed3 => 58
	i32 1406073936, ; 48: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 24
	i32 1411638395, ; 49: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 9
	i32 1445445088, ; 50: Xamarin.Android.Support.Fragment => 0x5627bde0 => 17
	i32 1460219004, ; 51: Xamarin.Forms.Xaml => 0x57092c7c => 64
	i32 1469204771, ; 52: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 21
	i32 1571005899, ; 53: zxing.portable => 0x5da3a5cb => 69
	i32 1574652163, ; 54: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 16
	i32 1592978981, ; 55: System.Runtime.Serialization.dll => 0x5ef2ee25 => 1
	i32 1622152042, ; 56: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 33
	i32 1639515021, ; 57: System.Net.Http.dll => 0x61b9038d => 0
	i32 1658251792, ; 58: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 37
	i32 1729485958, ; 59: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 23
	i32 1766324549, ; 60: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 35
	i32 1776026572, ; 61: System.Core.dll => 0x69dc03cc => 6
	i32 1788241197, ; 62: Xamarin.AndroidX.Fragment => 0x6a96652d => 28
	i32 1796167890, ; 63: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 48
	i32 1808609942, ; 64: Xamarin.AndroidX.Loader => 0x6bcd3296 => 33
	i32 1813201214, ; 65: Xamarin.Google.Android.Material => 0x6c13413e => 37
	i32 1867746548, ; 66: Xamarin.Essentials.dll => 0x6f538cf4 => 59
	i32 1878053835, ; 67: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 64
	i32 1904184254, ; 68: FastAndroidCamera => 0x717f8bbe => 46
	i32 2011961780, ; 69: System.Buffers.dll => 0x77ec19b4 => 5
	i32 2019465201, ; 70: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 32
	i32 2048185678, ; 71: Plugin.Media.dll => 0x7a14d54e => 51
	i32 2055257422, ; 72: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 31
	i32 2097448633, ; 73: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 29
	i32 2126786730, ; 74: Xamarin.Forms.Platform.Android => 0x7ec430aa => 62
	i32 2166116741, ; 75: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 16
	i32 2196165013, ; 76: Xamarin.Android.Support.VersionedParcelable => 0x82e6d195 => 20
	i32 2199181557, ; 77: CSEP => 0x8314d8f5 => 45
	i32 2201231467, ; 78: System.Net.Http => 0x8334206b => 0
	i32 2279755925, ; 79: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 34
	i32 2329204181, ; 80: zxing.portable.dll => 0x8ad4d5d5 => 69
	i32 2330457430, ; 81: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 15
	i32 2341995103, ; 82: ZXingNetMobile => 0x8b98025f => 70
	i32 2373288475, ; 83: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 17
	i32 2431243866, ; 84: ZXing.Net.Mobile.Core.dll => 0x90e9d65a => 66
	i32 2475788418, ; 85: Java.Interop.dll => 0x93918882 => 2
	i32 2482213323, ; 86: ZXing.Net.Mobile.Forms.Android => 0x93f391cb => 67
	i32 2570120770, ; 87: System.Text.Encodings.Web => 0x9930ee42 => 55
	i32 2732626843, ; 88: Xamarin.AndroidX.Activity => 0xa2e0939b => 57
	i32 2737747696, ; 89: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 21
	i32 2751899777, ; 90: Xamarin.Android.Support.Collections => 0xa406a881 => 13
	i32 2766581644, ; 91: Xamarin.Forms.Core => 0xa4e6af8c => 60
	i32 2778768386, ; 92: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 36
	i32 2806986428, ; 93: Plugin.CurrentActivity.dll => 0xa74f36bc => 50
	i32 2810250172, ; 94: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 24
	i32 2819470561, ; 95: System.Xml.dll => 0xa80db4e1 => 10
	i32 2853208004, ; 96: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 36
	i32 2905242038, ; 97: mscorlib.dll => 0xad2a79b6 => 4
	i32 2917517763, ; 98: Plugin.XamarinFormsSaveOpenPDFPackage.dll => 0xade5c9c3 => 53
	i32 2978675010, ; 99: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 27
	i32 3044182254, ; 100: FormsViewGroup => 0xb57288ee => 47
	i32 3068715062, ; 101: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 12
	i32 3092211740, ; 102: Xamarin.Android.Support.Media.Compat.dll => 0xb84f681c => 18
	i32 3111772706, ; 103: System.Runtime.Serialization => 0xb979e222 => 1
	i32 3124832203, ; 104: System.Threading.Tasks.Extensions => 0xba4127cb => 42
	i32 3204380047, ; 105: System.Data.dll => 0xbefef58f => 38
	i32 3247949154, ; 106: Mono.Security => 0xc197c562 => 43
	i32 3249260365, ; 107: RestSharp.dll => 0xc1abc74d => 54
	i32 3258312781, ; 108: Xamarin.AndroidX.CardView => 0xc235e84d => 23
	i32 3265893370, ; 109: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 42
	i32 3296380511, ; 110: Xamarin.Android.Support.Collections.dll => 0xc47ac65f => 13
	i32 3317135071, ; 111: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 26
	i32 3317144872, ; 112: System.Data => 0xc5b79d28 => 38
	i32 3353484488, ; 113: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 29
	i32 3358260929, ; 114: System.Text.Json => 0xc82afec1 => 56
	i32 3362522851, ; 115: Xamarin.AndroidX.Core => 0xc86c06e3 => 25
	i32 3366347497, ; 116: Java.Interop => 0xc8a662e9 => 2
	i32 3374517072, ; 117: Plugin.XamarinFormsSaveOpenPDFPackage => 0xc9230b50 => 53
	i32 3374999561, ; 118: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 34
	i32 3395150330, ; 119: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 9
	i32 3404865022, ; 120: System.ServiceModel.Internals => 0xcaf21dfe => 41
	i32 3429136800, ; 121: System.Xml => 0xcc6479a0 => 10
	i32 3476120550, ; 122: Mono.Android => 0xcf3163e6 => 3
	i32 3485117614, ; 123: System.Text.Json.dll => 0xcfbaacae => 56
	i32 3509114376, ; 124: System.Xml.Linq => 0xd128d608 => 11
	i32 3536029504, ; 125: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 62
	i32 3632359727, ; 126: Xamarin.Forms.Platform => 0xd881692f => 63
	i32 3641597786, ; 127: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 31
	i32 3672681054, ; 128: Mono.Android.dll => 0xdae8aa5e => 3
	i32 3676310014, ; 129: System.Web.Services.dll => 0xdb2009fe => 40
	i32 3681174138, ; 130: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 12
	i32 3685813676, ; 131: Xamarin.Forms.Material.dll => 0xdbb10dac => 61
	i32 3689375977, ; 132: System.Drawing.Common => 0xdbe768e9 => 39
	i32 3816437471, ; 133: RestSharp => 0xe37a36df => 54
	i32 3829621856, ; 134: System.Numerics.dll => 0xe4436460 => 8
	i32 3847036339, ; 135: ZXing.Net.Mobile.Forms.Android.dll => 0xe54d1db3 => 67
	i32 3896760992, ; 136: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 25
	i32 3955647286, ; 137: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 22
	i32 4105002889, ; 138: Mono.Security.dll => 0xf4ad5f89 => 43
	i32 4151237749, ; 139: System.Core => 0xf76edc75 => 6
	i32 4186595366, ; 140: ZXing.Net.Mobile.Core => 0xf98a6026 => 66
	i32 4260525087 ; 141: System.Buffers => 0xfdf2741f => 5
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [142 x i32] [
	i32 65, i32 49, i32 52, i32 60, i32 20, i32 14, i32 46, i32 44, ; 0..7
	i32 35, i32 19, i32 40, i32 57, i32 8, i32 68, i32 30, i32 61, ; 8..15
	i32 15, i32 59, i32 28, i32 4, i32 7, i32 14, i32 45, i32 48, ; 16..23
	i32 26, i32 55, i32 11, i32 44, i32 39, i32 19, i32 65, i32 68, ; 24..31
	i32 49, i32 50, i32 18, i32 30, i32 47, i32 58, i32 22, i32 63, ; 32..39
	i32 32, i32 7, i32 51, i32 70, i32 52, i32 27, i32 41, i32 58, ; 40..47
	i32 24, i32 9, i32 17, i32 64, i32 21, i32 69, i32 16, i32 1, ; 48..55
	i32 33, i32 0, i32 37, i32 23, i32 35, i32 6, i32 28, i32 48, ; 56..63
	i32 33, i32 37, i32 59, i32 64, i32 46, i32 5, i32 32, i32 51, ; 64..71
	i32 31, i32 29, i32 62, i32 16, i32 20, i32 45, i32 0, i32 34, ; 72..79
	i32 69, i32 15, i32 70, i32 17, i32 66, i32 2, i32 67, i32 55, ; 80..87
	i32 57, i32 21, i32 13, i32 60, i32 36, i32 50, i32 24, i32 10, ; 88..95
	i32 36, i32 4, i32 53, i32 27, i32 47, i32 12, i32 18, i32 1, ; 96..103
	i32 42, i32 38, i32 43, i32 54, i32 23, i32 42, i32 13, i32 26, ; 104..111
	i32 38, i32 29, i32 56, i32 25, i32 2, i32 53, i32 34, i32 9, ; 112..119
	i32 41, i32 10, i32 3, i32 56, i32 11, i32 62, i32 63, i32 31, ; 120..127
	i32 3, i32 40, i32 12, i32 61, i32 39, i32 54, i32 8, i32 67, ; 128..135
	i32 25, i32 22, i32 43, i32 6, i32 66, i32 5 ; 136..141
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a200af12c1e846626b8caebd926ac14c185f71ec"}
!llvm.linker.options = !{}
