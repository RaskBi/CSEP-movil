; ModuleID = 'obj\Release\120\android\compressed_assemblies.armeabi-v7a.ll'
source_filename = "obj\Release\120\android\compressed_assemblies.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.CompressedAssemblyDescriptor = type {
	i32,; uint32_t uncompressed_file_size
	i8,; bool loaded
	i8*; uint8_t* data
}

%struct.CompressedAssemblies = type {
	i32,; uint32_t count
	%struct.CompressedAssemblyDescriptor*; CompressedAssemblyDescriptor* descriptors
}
@__CompressedAssemblyDescriptor_data_0 = internal global [578560 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_1 = internal global [207872 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_2 = internal global [11264 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_3 = internal global [16384 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_4 = internal global [166912 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_5 = internal global [5120 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_6 = internal global [2393600 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_7 = internal global [122880 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_8 = internal global [684544 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_9 = internal global [9216 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_10 = internal global [46592 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_11 = internal global [16384 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_12 = internal global [123904 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_13 = internal global [154624 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_14 = internal global [14736 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_15 = internal global [390144 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_16 = internal global [748032 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_17 = internal global [26112 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_18 = internal global [231936 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_19 = internal global [38912 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_20 = internal global [7680 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_21 = internal global [419328 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_22 = internal global [55808 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_23 = internal global [55296 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_24 = internal global [340992 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_25 = internal global [15248 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_26 = internal global [38912 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_27 = internal global [65024 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_28 = internal global [1397760 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_29 = internal global [884224 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_30 = internal global [53248 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_31 = internal global [17408 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_32 = internal global [466432 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_33 = internal global [17920 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_34 = internal global [79360 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_35 = internal global [598528 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_36 = internal global [9216 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_37 = internal global [44032 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_38 = internal global [175104 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_39 = internal global [15872 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_40 = internal global [15360 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_41 = internal global [16384 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_42 = internal global [17408 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_43 = internal global [36864 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_44 = internal global [424448 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_45 = internal global [13312 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_46 = internal global [40448 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_47 = internal global [57856 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_48 = internal global [43008 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_49 = internal global [1207808 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_50 = internal global [297472 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_51 = internal global [934912 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_52 = internal global [263040 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_53 = internal global [103424 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_54 = internal global [474112 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_55 = internal global [18072 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_56 = internal global [12800 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_57 = internal global [10240 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_58 = internal global [15360 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_59 = internal global [41984 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_60 = internal global [2180096 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_61 = internal global [446976 x i8] zeroinitializer, align 1


; Compressed assembly data storage
@compressed_assembly_descriptors = internal global [62 x %struct.CompressedAssemblyDescriptor] [
	; 0
	%struct.CompressedAssemblyDescriptor {
		i32 578560, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([578560 x i8], [578560 x i8]* @__CompressedAssemblyDescriptor_data_0, i32 0, i32 0); data
	}, 
	; 1
	%struct.CompressedAssemblyDescriptor {
		i32 207872, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([207872 x i8], [207872 x i8]* @__CompressedAssemblyDescriptor_data_1, i32 0, i32 0); data
	}, 
	; 2
	%struct.CompressedAssemblyDescriptor {
		i32 11264, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([11264 x i8], [11264 x i8]* @__CompressedAssemblyDescriptor_data_2, i32 0, i32 0); data
	}, 
	; 3
	%struct.CompressedAssemblyDescriptor {
		i32 16384, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @__CompressedAssemblyDescriptor_data_3, i32 0, i32 0); data
	}, 
	; 4
	%struct.CompressedAssemblyDescriptor {
		i32 166912, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([166912 x i8], [166912 x i8]* @__CompressedAssemblyDescriptor_data_4, i32 0, i32 0); data
	}, 
	; 5
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([5120 x i8], [5120 x i8]* @__CompressedAssemblyDescriptor_data_5, i32 0, i32 0); data
	}, 
	; 6
	%struct.CompressedAssemblyDescriptor {
		i32 2393600, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([2393600 x i8], [2393600 x i8]* @__CompressedAssemblyDescriptor_data_6, i32 0, i32 0); data
	}, 
	; 7
	%struct.CompressedAssemblyDescriptor {
		i32 122880, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([122880 x i8], [122880 x i8]* @__CompressedAssemblyDescriptor_data_7, i32 0, i32 0); data
	}, 
	; 8
	%struct.CompressedAssemblyDescriptor {
		i32 684544, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([684544 x i8], [684544 x i8]* @__CompressedAssemblyDescriptor_data_8, i32 0, i32 0); data
	}, 
	; 9
	%struct.CompressedAssemblyDescriptor {
		i32 9216, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([9216 x i8], [9216 x i8]* @__CompressedAssemblyDescriptor_data_9, i32 0, i32 0); data
	}, 
	; 10
	%struct.CompressedAssemblyDescriptor {
		i32 46592, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([46592 x i8], [46592 x i8]* @__CompressedAssemblyDescriptor_data_10, i32 0, i32 0); data
	}, 
	; 11
	%struct.CompressedAssemblyDescriptor {
		i32 16384, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @__CompressedAssemblyDescriptor_data_11, i32 0, i32 0); data
	}, 
	; 12
	%struct.CompressedAssemblyDescriptor {
		i32 123904, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([123904 x i8], [123904 x i8]* @__CompressedAssemblyDescriptor_data_12, i32 0, i32 0); data
	}, 
	; 13
	%struct.CompressedAssemblyDescriptor {
		i32 154624, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([154624 x i8], [154624 x i8]* @__CompressedAssemblyDescriptor_data_13, i32 0, i32 0); data
	}, 
	; 14
	%struct.CompressedAssemblyDescriptor {
		i32 14736, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([14736 x i8], [14736 x i8]* @__CompressedAssemblyDescriptor_data_14, i32 0, i32 0); data
	}, 
	; 15
	%struct.CompressedAssemblyDescriptor {
		i32 390144, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([390144 x i8], [390144 x i8]* @__CompressedAssemblyDescriptor_data_15, i32 0, i32 0); data
	}, 
	; 16
	%struct.CompressedAssemblyDescriptor {
		i32 748032, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([748032 x i8], [748032 x i8]* @__CompressedAssemblyDescriptor_data_16, i32 0, i32 0); data
	}, 
	; 17
	%struct.CompressedAssemblyDescriptor {
		i32 26112, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([26112 x i8], [26112 x i8]* @__CompressedAssemblyDescriptor_data_17, i32 0, i32 0); data
	}, 
	; 18
	%struct.CompressedAssemblyDescriptor {
		i32 231936, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([231936 x i8], [231936 x i8]* @__CompressedAssemblyDescriptor_data_18, i32 0, i32 0); data
	}, 
	; 19
	%struct.CompressedAssemblyDescriptor {
		i32 38912, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([38912 x i8], [38912 x i8]* @__CompressedAssemblyDescriptor_data_19, i32 0, i32 0); data
	}, 
	; 20
	%struct.CompressedAssemblyDescriptor {
		i32 7680, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([7680 x i8], [7680 x i8]* @__CompressedAssemblyDescriptor_data_20, i32 0, i32 0); data
	}, 
	; 21
	%struct.CompressedAssemblyDescriptor {
		i32 419328, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([419328 x i8], [419328 x i8]* @__CompressedAssemblyDescriptor_data_21, i32 0, i32 0); data
	}, 
	; 22
	%struct.CompressedAssemblyDescriptor {
		i32 55808, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([55808 x i8], [55808 x i8]* @__CompressedAssemblyDescriptor_data_22, i32 0, i32 0); data
	}, 
	; 23
	%struct.CompressedAssemblyDescriptor {
		i32 55296, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([55296 x i8], [55296 x i8]* @__CompressedAssemblyDescriptor_data_23, i32 0, i32 0); data
	}, 
	; 24
	%struct.CompressedAssemblyDescriptor {
		i32 340992, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([340992 x i8], [340992 x i8]* @__CompressedAssemblyDescriptor_data_24, i32 0, i32 0); data
	}, 
	; 25
	%struct.CompressedAssemblyDescriptor {
		i32 15248, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15248 x i8], [15248 x i8]* @__CompressedAssemblyDescriptor_data_25, i32 0, i32 0); data
	}, 
	; 26
	%struct.CompressedAssemblyDescriptor {
		i32 38912, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([38912 x i8], [38912 x i8]* @__CompressedAssemblyDescriptor_data_26, i32 0, i32 0); data
	}, 
	; 27
	%struct.CompressedAssemblyDescriptor {
		i32 65024, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([65024 x i8], [65024 x i8]* @__CompressedAssemblyDescriptor_data_27, i32 0, i32 0); data
	}, 
	; 28
	%struct.CompressedAssemblyDescriptor {
		i32 1397760, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1397760 x i8], [1397760 x i8]* @__CompressedAssemblyDescriptor_data_28, i32 0, i32 0); data
	}, 
	; 29
	%struct.CompressedAssemblyDescriptor {
		i32 884224, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([884224 x i8], [884224 x i8]* @__CompressedAssemblyDescriptor_data_29, i32 0, i32 0); data
	}, 
	; 30
	%struct.CompressedAssemblyDescriptor {
		i32 53248, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([53248 x i8], [53248 x i8]* @__CompressedAssemblyDescriptor_data_30, i32 0, i32 0); data
	}, 
	; 31
	%struct.CompressedAssemblyDescriptor {
		i32 17408, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([17408 x i8], [17408 x i8]* @__CompressedAssemblyDescriptor_data_31, i32 0, i32 0); data
	}, 
	; 32
	%struct.CompressedAssemblyDescriptor {
		i32 466432, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([466432 x i8], [466432 x i8]* @__CompressedAssemblyDescriptor_data_32, i32 0, i32 0); data
	}, 
	; 33
	%struct.CompressedAssemblyDescriptor {
		i32 17920, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([17920 x i8], [17920 x i8]* @__CompressedAssemblyDescriptor_data_33, i32 0, i32 0); data
	}, 
	; 34
	%struct.CompressedAssemblyDescriptor {
		i32 79360, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([79360 x i8], [79360 x i8]* @__CompressedAssemblyDescriptor_data_34, i32 0, i32 0); data
	}, 
	; 35
	%struct.CompressedAssemblyDescriptor {
		i32 598528, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([598528 x i8], [598528 x i8]* @__CompressedAssemblyDescriptor_data_35, i32 0, i32 0); data
	}, 
	; 36
	%struct.CompressedAssemblyDescriptor {
		i32 9216, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([9216 x i8], [9216 x i8]* @__CompressedAssemblyDescriptor_data_36, i32 0, i32 0); data
	}, 
	; 37
	%struct.CompressedAssemblyDescriptor {
		i32 44032, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([44032 x i8], [44032 x i8]* @__CompressedAssemblyDescriptor_data_37, i32 0, i32 0); data
	}, 
	; 38
	%struct.CompressedAssemblyDescriptor {
		i32 175104, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([175104 x i8], [175104 x i8]* @__CompressedAssemblyDescriptor_data_38, i32 0, i32 0); data
	}, 
	; 39
	%struct.CompressedAssemblyDescriptor {
		i32 15872, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15872 x i8], [15872 x i8]* @__CompressedAssemblyDescriptor_data_39, i32 0, i32 0); data
	}, 
	; 40
	%struct.CompressedAssemblyDescriptor {
		i32 15360, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15360 x i8], [15360 x i8]* @__CompressedAssemblyDescriptor_data_40, i32 0, i32 0); data
	}, 
	; 41
	%struct.CompressedAssemblyDescriptor {
		i32 16384, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @__CompressedAssemblyDescriptor_data_41, i32 0, i32 0); data
	}, 
	; 42
	%struct.CompressedAssemblyDescriptor {
		i32 17408, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([17408 x i8], [17408 x i8]* @__CompressedAssemblyDescriptor_data_42, i32 0, i32 0); data
	}, 
	; 43
	%struct.CompressedAssemblyDescriptor {
		i32 36864, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([36864 x i8], [36864 x i8]* @__CompressedAssemblyDescriptor_data_43, i32 0, i32 0); data
	}, 
	; 44
	%struct.CompressedAssemblyDescriptor {
		i32 424448, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([424448 x i8], [424448 x i8]* @__CompressedAssemblyDescriptor_data_44, i32 0, i32 0); data
	}, 
	; 45
	%struct.CompressedAssemblyDescriptor {
		i32 13312, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([13312 x i8], [13312 x i8]* @__CompressedAssemblyDescriptor_data_45, i32 0, i32 0); data
	}, 
	; 46
	%struct.CompressedAssemblyDescriptor {
		i32 40448, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([40448 x i8], [40448 x i8]* @__CompressedAssemblyDescriptor_data_46, i32 0, i32 0); data
	}, 
	; 47
	%struct.CompressedAssemblyDescriptor {
		i32 57856, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([57856 x i8], [57856 x i8]* @__CompressedAssemblyDescriptor_data_47, i32 0, i32 0); data
	}, 
	; 48
	%struct.CompressedAssemblyDescriptor {
		i32 43008, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([43008 x i8], [43008 x i8]* @__CompressedAssemblyDescriptor_data_48, i32 0, i32 0); data
	}, 
	; 49
	%struct.CompressedAssemblyDescriptor {
		i32 1207808, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1207808 x i8], [1207808 x i8]* @__CompressedAssemblyDescriptor_data_49, i32 0, i32 0); data
	}, 
	; 50
	%struct.CompressedAssemblyDescriptor {
		i32 297472, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([297472 x i8], [297472 x i8]* @__CompressedAssemblyDescriptor_data_50, i32 0, i32 0); data
	}, 
	; 51
	%struct.CompressedAssemblyDescriptor {
		i32 934912, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([934912 x i8], [934912 x i8]* @__CompressedAssemblyDescriptor_data_51, i32 0, i32 0); data
	}, 
	; 52
	%struct.CompressedAssemblyDescriptor {
		i32 263040, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([263040 x i8], [263040 x i8]* @__CompressedAssemblyDescriptor_data_52, i32 0, i32 0); data
	}, 
	; 53
	%struct.CompressedAssemblyDescriptor {
		i32 103424, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([103424 x i8], [103424 x i8]* @__CompressedAssemblyDescriptor_data_53, i32 0, i32 0); data
	}, 
	; 54
	%struct.CompressedAssemblyDescriptor {
		i32 474112, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([474112 x i8], [474112 x i8]* @__CompressedAssemblyDescriptor_data_54, i32 0, i32 0); data
	}, 
	; 55
	%struct.CompressedAssemblyDescriptor {
		i32 18072, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([18072 x i8], [18072 x i8]* @__CompressedAssemblyDescriptor_data_55, i32 0, i32 0); data
	}, 
	; 56
	%struct.CompressedAssemblyDescriptor {
		i32 12800, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([12800 x i8], [12800 x i8]* @__CompressedAssemblyDescriptor_data_56, i32 0, i32 0); data
	}, 
	; 57
	%struct.CompressedAssemblyDescriptor {
		i32 10240, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @__CompressedAssemblyDescriptor_data_57, i32 0, i32 0); data
	}, 
	; 58
	%struct.CompressedAssemblyDescriptor {
		i32 15360, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15360 x i8], [15360 x i8]* @__CompressedAssemblyDescriptor_data_58, i32 0, i32 0); data
	}, 
	; 59
	%struct.CompressedAssemblyDescriptor {
		i32 41984, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([41984 x i8], [41984 x i8]* @__CompressedAssemblyDescriptor_data_59, i32 0, i32 0); data
	}, 
	; 60
	%struct.CompressedAssemblyDescriptor {
		i32 2180096, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([2180096 x i8], [2180096 x i8]* @__CompressedAssemblyDescriptor_data_60, i32 0, i32 0); data
	}, 
	; 61
	%struct.CompressedAssemblyDescriptor {
		i32 446976, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([446976 x i8], [446976 x i8]* @__CompressedAssemblyDescriptor_data_61, i32 0, i32 0); data
	}
], align 4; end of 'compressed_assembly_descriptors' array


; compressed_assemblies
@compressed_assemblies = local_unnamed_addr global %struct.CompressedAssemblies {
	i32 62, ; count
	%struct.CompressedAssemblyDescriptor* getelementptr inbounds ([62 x %struct.CompressedAssemblyDescriptor], [62 x %struct.CompressedAssemblyDescriptor]* @compressed_assembly_descriptors, i32 0, i32 0); descriptors
}, align 4


!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a200af12c1e846626b8caebd926ac14c185f71ec"}
