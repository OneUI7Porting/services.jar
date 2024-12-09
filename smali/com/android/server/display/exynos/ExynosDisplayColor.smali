.class public final Lcom/android/server/display/exynos/ExynosDisplayColor;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final BYPASS_XML_FILE_PATH:Ljava/lang/String;

.field public final CGC17_CON_SYSFS_PATH:Ljava/lang/String;

.field public final CGC17_DEC_SYSFS_PATH:Ljava/lang/String;

.field public final CGC17_ENC_SYSFS_PATH:Ljava/lang/String;

.field public final CGC17_IDX_SYSFS_PATH:Ljava/lang/String;

.field public final CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

.field public final CGC_SYSFS_PATH:Ljava/lang/String;

.field public final COLORMODE_XML_FILE_PATH:Ljava/lang/String;

.field public final COLORTEMP_XML_FILE_PATH:Ljava/lang/String;

.field public final DE_SYSFS_PATH:Ljava/lang/String;

.field public final EXTENSION_OFF:Ljava/lang/String;

.field public final EXTENSION_ON:Ljava/lang/String;

.field public final EYETEMP_XML_FILE_PATH:Ljava/lang/String;

.field public final GAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

.field public final GAMMA_MATRIX_SYSFS_PATH:Ljava/lang/String;

.field public final GAMMA_SYSFS_PATH:Ljava/lang/String;

.field public final HSC_SYSFS_PATH:Ljava/lang/String;

.field public final HW_VER_8_0:Ljava/lang/String;

.field public final LINEAR_MATRIX_SYSFS_PATH:Ljava/lang/String;

.field public final RGBGAIN_XML_FILE_PATH:Ljava/lang/String;

.field public final SHARPNESS_XML_FILE_PATH:Ljava/lang/String;

.field public final SKINCOLOR_XML_FILE_PATH:Ljava/lang/String;

.field public final WHITEPOINT_XML_FILE_PATH:Ljava/lang/String;

.field public bIsColortempOn:Z

.field public bIsRgbWeightOn:Z

.field public bgain_array:[Ljava/lang/String;

.field public cgc_dither_array:[Ljava/lang/String;

.field public final colortemp_map:Ljava/util/TreeMap;

.field public eyetemp_array:[Ljava/lang/String;

.field public gamma_bypass_array:[Ljava/lang/String;

.field public gamma_ext_bypass_array:[Ljava/lang/String;

.field public gamma_matrix_bypass_array:[Ljava/lang/String;

.field public ggain_array:[Ljava/lang/String;

.field public hsc_bypass_array:[Ljava/lang/String;

.field public final hw_ver:Ljava/lang/String;

.field public linear_matrix_bypass_array:[Ljava/lang/String;

.field public mColortempConvMethod:I

.field public mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

.field public rgain_array:[Ljava/lang/String;

.field public sharpness_array:[Ljava/lang/String;

.field public skincolor_array:[Ljava/lang/String;

.field public whitepoint_array:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "eng"

    .line 5
    .line 6
    .line 7
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "/sys/class/dqe/dqe/gamma_ext"

    .line 14
    .line 15
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->GAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, "/sys/class/dqe/dqe/gamma"

    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->GAMMA_SYSFS_PATH:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "/sys/class/dqe/dqe/hsc"

    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->HSC_SYSFS_PATH:Ljava/lang/String;

    .line 24
    .line 25
    const-string v1, "/sys/class/dqe/dqe/cgc"

    .line 26
    .line 27
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC_SYSFS_PATH:Ljava/lang/String;

    .line 28
    .line 29
    const-string v1, "/sys/class/dqe/dqe/cgc17_idx"

    .line 30
    .line 31
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC17_IDX_SYSFS_PATH:Ljava/lang/String;

    .line 32
    .line 33
    const-string v1, "/sys/class/dqe/dqe/cgc17_enc"

    .line 34
    .line 35
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC17_ENC_SYSFS_PATH:Ljava/lang/String;

    .line 36
    .line 37
    const-string v1, "/sys/class/dqe/dqe/cgc17_dec"

    .line 38
    .line 39
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC17_DEC_SYSFS_PATH:Ljava/lang/String;

    .line 40
    .line 41
    const-string v1, "/sys/class/dqe/dqe/cgc17_con"

    .line 42
    .line 43
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC17_CON_SYSFS_PATH:Ljava/lang/String;

    .line 44
    .line 45
    const-string v1, "/sys/class/dqe/dqe/gamma_matrix"

    .line 46
    .line 47
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->GAMMA_MATRIX_SYSFS_PATH:Ljava/lang/String;

    .line 48
    .line 49
    const-string v1, "/sys/class/dqe/dqe/linear_matrix"

    .line 50
    .line 51
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->LINEAR_MATRIX_SYSFS_PATH:Ljava/lang/String;

    .line 52
    .line 53
    const-string v1, "/sys/class/dqe/dqe/cgc_dither"

    .line 54
    .line 55
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

    .line 56
    .line 57
    const-string v1, "/sys/class/dqe/dqe/de"

    .line 58
    .line 59
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->DE_SYSFS_PATH:Ljava/lang/String;

    .line 60
    .line 61
    const-string v1, "/vendor/etc/dqe/calib_data_colortemp.xml"

    .line 62
    .line 63
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->COLORTEMP_XML_FILE_PATH:Ljava/lang/String;

    .line 64
    .line 65
    const-string v1, "/vendor/etc/dqe/calib_data_eyetemp.xml"

    .line 66
    .line 67
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EYETEMP_XML_FILE_PATH:Ljava/lang/String;

    .line 68
    .line 69
    const-string v1, "/vendor/etc/dqe/calib_data_bypass.xml"

    .line 70
    .line 71
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    .line 72
    .line 73
    const-string v1, "/vendor/etc/dqe/calib_data_rgbgain.xml"

    .line 74
    .line 75
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->RGBGAIN_XML_FILE_PATH:Ljava/lang/String;

    .line 76
    .line 77
    const-string v1, "/vendor/etc/dqe/calib_data_skincolor.xml"

    .line 78
    .line 79
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->SKINCOLOR_XML_FILE_PATH:Ljava/lang/String;

    .line 80
    .line 81
    const-string v1, "/vendor/etc/dqe/calib_data_whitepoint.xml"

    .line 82
    .line 83
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->WHITEPOINT_XML_FILE_PATH:Ljava/lang/String;

    .line 84
    .line 85
    const-string v1, "/vendor/etc/dqe/calib_data_sharpness.xml"

    .line 86
    .line 87
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->SHARPNESS_XML_FILE_PATH:Ljava/lang/String;

    .line 88
    .line 89
    const-string v1, "/vendor/etc/dqe/calib_data_colormode0.xml"

    .line 90
    .line 91
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->COLORMODE_XML_FILE_PATH:Ljava/lang/String;

    .line 92
    .line 93
    const-string v1, "0"

    .line 94
    .line 95
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EXTENSION_OFF:Ljava/lang/String;

    .line 96
    .line 97
    const-string v1, "1"

    .line 98
    .line 99
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EXTENSION_ON:Ljava/lang/String;

    .line 100
    .line 101
    const/4 v1, 0x0

    .line 102
    iput-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bIsColortempOn:Z

    .line 103
    .line 104
    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mColortempConvMethod:I

    .line 105
    .line 106
    iput-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bIsRgbWeightOn:Z

    .line 107
    .line 108
    const/4 v1, 0x0

    .line 109
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->eyetemp_array:[Ljava/lang/String;

    .line 110
    .line 111
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_bypass_array:[Ljava/lang/String;

    .line 112
    .line 113
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_ext_bypass_array:[Ljava/lang/String;

    .line 114
    .line 115
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    .line 116
    .line 117
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->linear_matrix_bypass_array:[Ljava/lang/String;

    .line 118
    .line 119
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_matrix_bypass_array:[Ljava/lang/String;

    .line 120
    .line 121
    new-instance v2, Ljava/util/TreeMap;

    .line 122
    .line 123
    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 124
    .line 125
    .line 126
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_map:Ljava/util/TreeMap;

    .line 127
    .line 128
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_array:[Ljava/lang/String;

    .line 129
    .line 130
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->ggain_array:[Ljava/lang/String;

    .line 131
    .line 132
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bgain_array:[Ljava/lang/String;

    .line 133
    .line 134
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->skincolor_array:[Ljava/lang/String;

    .line 135
    .line 136
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->sharpness_array:[Ljava/lang/String;

    .line 137
    .line 138
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->whitepoint_array:[Ljava/lang/String;

    .line 139
    .line 140
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->hsc_bypass_array:[Ljava/lang/String;

    .line 141
    .line 142
    const-string v2, "08000000"

    .line 143
    .line 144
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->HW_VER_8_0:Ljava/lang/String;

    .line 145
    .line 146
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    .line 147
    .line 148
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->hw_ver:Ljava/lang/String;

    .line 149
    .line 150
    new-instance v1, Ljava/io/File;

    .line 151
    .line 152
    const-string v2, "/sys/class/dqe/dqe/dqe_ver"

    .line 153
    .line 154
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-nez v3, :cond_0

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-nez v1, :cond_1

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_1
    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->hw_ver:Ljava/lang/String;

    .line 176
    .line 177
    if-eqz v0, :cond_2

    .line 178
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string/jumbo v1, "hw_ver: "

    .line 182
    .line 183
    .line 184
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->hw_ver:Ljava/lang/String;

    .line 188
    .line 189
    const-string v1, "ExynosDisplayColor"

    .line 190
    .line 191
    invoke-static {v0, p0, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :cond_2
    :goto_0
    return-void
.end method

.method public static T2xy(I)[F
    .locals 13

    .line 1
    const/16 v0, 0x1b58

    .line 2
    .line 3
    const-wide/high16 v1, 0x4018000000000000L    # 6.0

    .line 4
    .line 5
    const-wide/high16 v3, 0x4022000000000000L    # 9.0

    .line 6
    .line 7
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 8
    .line 9
    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    .line 10
    .line 11
    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    .line 12
    .line 13
    if-gt p0, v0, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    double-to-float v0, v3

    .line 20
    const v3, -0x3f6c9375    # -4.607f

    .line 21
    .line 22
    .line 23
    mul-float/2addr v0, v3

    .line 24
    int-to-double v3, p0

    .line 25
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 26
    .line 27
    .line 28
    move-result-wide v11

    .line 29
    double-to-float v11, v11

    .line 30
    div-float/2addr v0, v11

    .line 31
    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->pow(DD)D

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    double-to-float v1, v1

    .line 36
    const v2, 0x403df06f    # 2.9678f

    .line 37
    .line 38
    .line 39
    mul-float/2addr v1, v2

    .line 40
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    double-to-float v2, v2

    .line 45
    div-float/2addr v1, v2

    .line 46
    add-float/2addr v1, v0

    .line 47
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    double-to-float v0, v2

    .line 52
    const v2, 0x3dcafa2f    # 0.09911f

    .line 53
    .line 54
    .line 55
    mul-float/2addr v0, v2

    .line 56
    int-to-float p0, p0

    .line 57
    div-float/2addr v0, p0

    .line 58
    add-float/2addr v0, v1

    .line 59
    const p0, 0x3e79eba7

    .line 60
    .line 61
    .line 62
    :goto_0
    add-float/2addr v0, p0

    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception p0

    .line 65
    goto :goto_2

    .line 66
    :cond_0
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 67
    .line 68
    .line 69
    move-result-wide v3

    .line 70
    double-to-float v0, v3

    .line 71
    const v3, -0x3fff9724

    .line 72
    .line 73
    .line 74
    mul-float/2addr v0, v3

    .line 75
    int-to-double v3, p0

    .line 76
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 77
    .line 78
    .line 79
    move-result-wide v11

    .line 80
    double-to-float v11, v11

    .line 81
    div-float/2addr v0, v11

    .line 82
    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->pow(DD)D

    .line 83
    .line 84
    .line 85
    move-result-wide v1

    .line 86
    double-to-float v1, v1

    .line 87
    const v2, 0x3ff36e2f    # 1.9018f

    .line 88
    .line 89
    .line 90
    mul-float/2addr v1, v2

    .line 91
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 92
    .line 93
    .line 94
    move-result-wide v2

    .line 95
    double-to-float v2, v2

    .line 96
    div-float/2addr v1, v2

    .line 97
    add-float/2addr v1, v0

    .line 98
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 99
    .line 100
    .line 101
    move-result-wide v2

    .line 102
    double-to-float v0, v2

    .line 103
    const v2, 0x3e7d6b66    # 0.24748f

    .line 104
    .line 105
    .line 106
    mul-float/2addr v0, v2

    .line 107
    int-to-float p0, p0

    .line 108
    div-float/2addr v0, p0

    .line 109
    add-float/2addr v0, v1

    .line 110
    const p0, 0x3e72ba9d    # 0.23704f

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :goto_1
    float-to-double v1, v0

    .line 115
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 116
    .line 117
    .line 118
    move-result-wide v1

    .line 119
    double-to-float p0, v1

    .line 120
    const/high16 v1, -0x3fc00000    # -3.0f

    .line 121
    .line 122
    mul-float/2addr p0, v1

    .line 123
    const v1, 0x4037ae14    # 2.87f

    .line 124
    .line 125
    .line 126
    mul-float/2addr v1, v0

    .line 127
    add-float/2addr v1, p0

    .line 128
    const p0, 0x3e8ccccd    # 0.275f

    .line 129
    .line 130
    .line 131
    sub-float/2addr v1, p0

    .line 132
    const/4 p0, 0x2

    .line 133
    new-array p0, p0, [F

    .line 134
    .line 135
    const/4 v2, 0x0

    .line 136
    aput v0, p0, v2

    .line 137
    .line 138
    const/4 v0, 0x1

    .line 139
    aput v1, p0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .line 141
    return-object p0

    .line 142
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    .line 144
    .line 145
    const/4 p0, 0x0

    .line 146
    return-object p0
.end method

.method public static calcChromaticAdaptation(IILcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;)[[F
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;->getFwdMethod()[[F

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    invoke-virtual {p2}, Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;->getRewMethod()[[F

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-static {p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->T2xy(I)[F

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->T2xy(I)[F

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    aget v5, p0, v3

    .line 22
    .line 23
    aget p0, p0, v2

    .line 24
    .line 25
    invoke-static {v5, p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->xyY2XYZ(FF)[F

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    aget v5, p1, v3

    .line 30
    .line 31
    aget p1, p1, v2

    .line 32
    .line 33
    invoke-static {v5, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->xyY2XYZ(FF)[F

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    aget v5, p0, v3

    .line 38
    .line 39
    new-array v6, v2, [F

    .line 40
    .line 41
    aput v5, v6, v3

    .line 42
    .line 43
    aget v5, p0, v2

    .line 44
    .line 45
    new-array v7, v2, [F

    .line 46
    .line 47
    aput v5, v7, v3

    .line 48
    .line 49
    aget p0, p0, v1

    .line 50
    .line 51
    new-array v5, v2, [F

    .line 52
    .line 53
    aput p0, v5, v3

    .line 54
    .line 55
    filled-new-array {v6, v7, v5}, [[F

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {v4, p0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->matrixMultiplication([[F[[F)[[F

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    aget v5, p1, v3

    .line 64
    .line 65
    new-array v6, v2, [F

    .line 66
    .line 67
    aput v5, v6, v3

    .line 68
    .line 69
    aget v5, p1, v2

    .line 70
    .line 71
    new-array v7, v2, [F

    .line 72
    .line 73
    aput v5, v7, v3

    .line 74
    .line 75
    aget p1, p1, v1

    .line 76
    .line 77
    new-array v5, v2, [F

    .line 78
    .line 79
    aput p1, v5, v3

    .line 80
    .line 81
    filled-new-array {v6, v7, v5}, [[F

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {v4, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->matrixMultiplication([[F[[F)[[F

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    aget-object v5, p1, v3

    .line 90
    .line 91
    aget v5, v5, v3

    .line 92
    .line 93
    aget-object v6, p0, v3

    .line 94
    .line 95
    aget v6, v6, v3

    .line 96
    .line 97
    div-float/2addr v5, v6

    .line 98
    const/4 v6, 0x0

    .line 99
    new-array v7, v0, [F

    .line 100
    .line 101
    aput v5, v7, v3

    .line 102
    .line 103
    aput v6, v7, v2

    .line 104
    .line 105
    aput v6, v7, v1

    .line 106
    .line 107
    aget-object v5, p1, v2

    .line 108
    .line 109
    aget v5, v5, v3

    .line 110
    .line 111
    aget-object v8, p0, v2

    .line 112
    .line 113
    aget v8, v8, v3

    .line 114
    .line 115
    div-float/2addr v5, v8

    .line 116
    new-array v8, v0, [F

    .line 117
    .line 118
    aput v6, v8, v3

    .line 119
    .line 120
    aput v5, v8, v2

    .line 121
    .line 122
    aput v6, v8, v1

    .line 123
    .line 124
    aget-object p1, p1, v1

    .line 125
    .line 126
    aget p1, p1, v3

    .line 127
    .line 128
    aget-object p0, p0, v1

    .line 129
    .line 130
    aget p0, p0, v3

    .line 131
    .line 132
    div-float/2addr p1, p0

    .line 133
    new-array p0, v0, [F

    .line 134
    .line 135
    aput v6, p0, v3

    .line 136
    .line 137
    aput v6, p0, v2

    .line 138
    .line 139
    aput p1, p0, v1

    .line 140
    .line 141
    filled-new-array {v7, v8, p0}, [[F

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-static {p2, p0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->matrixMultiplication([[F[[F)[[F

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-static {p0, v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->matrixMultiplication([[F[[F)[[F

    .line 150
    .line 151
    .line 152
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    return-object p0

    .line 154
    :catch_0
    move-exception p0

    .line 155
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    .line 157
    .line 158
    const/4 p0, 0x0

    .line 159
    return-object p0
.end method

.method public static xyY2XYZ(FF)[F
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    cmpl-float v1, p1, v1

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    :try_start_0
    new-array p0, v0, [F

    .line 8
    .line 9
    fill-array-data p0, :array_0

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    .line 17
    mul-float v2, p0, v1

    .line 18
    .line 19
    div-float/2addr v2, p1

    .line 20
    sub-float p0, v1, p0

    .line 21
    .line 22
    sub-float/2addr p0, p1

    .line 23
    mul-float/2addr p0, v1

    .line 24
    div-float/2addr p0, p1

    .line 25
    new-array p1, v0, [F

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    aput v2, p1, v0

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    aput v1, p1, v0

    .line 32
    .line 33
    const/4 v0, 0x2

    .line 34
    aput p0, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    return-object p1

    .line 37
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    return-object p0

    .line 42
    nop

    .line 43
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final getColorModePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ".xml"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->COLORMODE_XML_FILE_PATH:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    const-string/jumbo v3, "bypass"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    .line 16
    .line 17
    return-object p0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-static {v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getPathWithPanel(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :try_start_1
    const-string/jumbo v3, "subxml"

    .line 25
    .line 26
    .line 27
    invoke-static {p0, p1, v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    array-length v2, p1

    .line 34
    const/4 v3, 0x1

    .line 35
    if-ge v2, v3, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    aget-object p1, p1, v3

    .line 48
    .line 49
    const-string v2, "\\s*,\\s*"

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, "_"

    .line 64
    .line 65
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    aget-object p1, p1, v3

    .line 69
    .line 70
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    goto :goto_2

    .line 81
    :catch_1
    move-exception p1

    .line 82
    move-object v2, p0

    .line 83
    move-object p0, p1

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    :goto_0
    return-object p0

    .line 86
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    .line 88
    .line 89
    move-object p0, v2

    .line 90
    :goto_2
    return-object p0
.end method

.method public final getColorTempFromXml(I)Ljava/lang/String;
    .locals 4

    .line 1
    const-string/jumbo v0, "getColorTempFromXml: failed to find "

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_map:Ljava/util/TreeMap;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/TreeMap;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_map:Ljava/util/TreeMap;

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/Integer;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_map:Ljava/util/TreeMap;

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Ljava/lang/String;

    .line 35
    .line 36
    return-object p0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_map:Ljava/util/TreeMap;

    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Ljava/lang/Integer;

    .line 50
    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_map:Ljava/util/TreeMap;

    .line 54
    .line 55
    invoke-virtual {p0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Ljava/lang/String;

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_2
    const-string p0, "ExynosDisplayColor"

    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    :goto_1
    return-object v1
.end method

.method public final loadColorTempXml()V
    .locals 6

    .line 1
    const-string/jumbo v0, "linear_matrix"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "loadColorTempXml: invalid data in "

    .line 5
    .line 6
    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_map:Ljava/util/TreeMap;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/TreeMap;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->COLORTEMP_XML_FILE_PATH:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getPathWithPanel(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    const-string/jumbo v3, "colortemp"

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v3, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const-string/jumbo v4, "temp"

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v0, v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXMLAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    array-length v4, v3

    .line 44
    array-length v5, v0

    .line 45
    if-eq v4, v5, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const/4 v1, 0x0

    .line 49
    :goto_0
    array-length v2, v0

    .line 50
    if-ge v1, v2, :cond_4

    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_map:Ljava/util/TreeMap;

    .line 53
    .line 54
    aget-object v4, v0, v1

    .line 55
    .line 56
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    aget-object v5, v3, v1

    .line 65
    .line 66
    invoke-virtual {v2, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception p0

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    :goto_1
    const-string p0, "ExynosDisplayColor"

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    .line 86
    .line 87
    :cond_4
    return-void
.end method

.method public final setColorTempOn(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-lez p1, :cond_0

    .line 4
    .line 5
    move v2, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v0

    .line 8
    :goto_0
    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bIsColortempOn:Z

    .line 9
    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    sub-int/2addr p1, v1

    .line 13
    iput p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mColortempConvMethod:I

    .line 14
    .line 15
    invoke-static {}, Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;->values()[Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    array-length v0, v0

    .line 20
    if-ge p1, v0, :cond_1

    .line 21
    .line 22
    goto :goto_4

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->loadColorTempXml()V

    .line 24
    .line 25
    .line 26
    goto :goto_4

    .line 27
    :catch_0
    move-exception p0

    .line 28
    goto :goto_3

    .line 29
    :cond_2
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->colortemp_map:Ljava/util/TreeMap;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/util/TreeMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :try_start_1
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->linear_matrix_bypass_array:[Ljava/lang/String;

    .line 35
    .line 36
    if-nez p1, :cond_3

    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    .line 39
    .line 40
    const-string/jumbo v1, "bypass"

    .line 41
    .line 42
    .line 43
    const-string/jumbo v2, "linear_matrix"

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v1, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->linear_matrix_bypass_array:[Ljava/lang/String;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catch_1
    move-exception p0

    .line 54
    goto :goto_2

    .line 55
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->linear_matrix_bypass_array:[Ljava/lang/String;

    .line 56
    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    array-length v1, p1

    .line 60
    if-lez v1, :cond_4

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->LINEAR_MATRIX_SYSFS_PATH:Ljava/lang/String;

    .line 63
    .line 64
    aget-object p1, p1, v0

    .line 65
    .line 66
    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    .line 68
    .line 69
    goto :goto_4

    .line 70
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_4

    .line 74
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    :cond_4
    :goto_4
    return-void
.end method

.method public final setColorTempValue(II)V
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bIsColortempOn:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mColortempConvMethod:I

    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;->values()[Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    array-length v1, v1

    .line 13
    if-ge v0, v1, :cond_2

    .line 14
    .line 15
    iget v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mColortempConvMethod:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :try_start_1
    invoke-static {}, Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;->values()[Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    array-length v2, v2

    .line 23
    if-ge v0, v2, :cond_1

    .line 24
    .line 25
    invoke-static {}, Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;->values()[Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    aget-object v0, v2, v0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-static {}, Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;->values()[Lcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v2, 0x0

    .line 37
    aget-object v0, v0, v2

    .line 38
    .line 39
    :goto_0
    invoke-static {p1, p2, v0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->calcChromaticAdaptation(IILcom/android/server/display/exynos/ExynosDisplayColor$eColortempMethod;)[[F

    .line 40
    .line 41
    .line 42
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 43
    :try_start_2
    sget-object p2, Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;->P3:Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor$eRGBXYZTransform;->execute([[F)[[F

    .line 46
    .line 47
    .line 48
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 49
    goto :goto_1

    .line 50
    :catch_0
    move-exception p1

    .line 51
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    move-object p1, v1

    .line 55
    :goto_1
    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->toString([[F)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 59
    goto :goto_2

    .line 60
    :catch_1
    move-exception p1

    .line 61
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :catch_2
    move-exception p0

    .line 66
    goto :goto_3

    .line 67
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/display/exynos/ExynosDisplayColor;->getColorTempFromXml(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    :goto_2
    if-eqz v1, :cond_3

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->LINEAR_MATRIX_SYSFS_PATH:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {p0, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 76
    .line 77
    .line 78
    goto :goto_4

    .line 79
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_4
    return-void
.end method

.method public final setEdgeSharpnessOn(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "de"

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->SHARPNESS_XML_FILE_PATH:Ljava/lang/String;

    .line 7
    .line 8
    const-string/jumbo v1, "sharpness"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->sharpness_array:[Ljava/lang/String;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    .line 21
    .line 22
    const-string/jumbo v1, "bypass"

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->sharpness_array:[Ljava/lang/String;

    .line 30
    .line 31
    :goto_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->sharpness_array:[Ljava/lang/String;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    array-length v0, p1

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    aget-object p1, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_2
    :goto_1
    return-void

    .line 44
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    :goto_3
    if-eqz p1, :cond_3

    .line 49
    .line 50
    const-string v0, "ExynosDisplayColor"

    .line 51
    .line 52
    const-string/jumbo v1, "setEdgeSharpnessOn()"

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->DE_SYSFS_PATH:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    :cond_3
    return-void
.end method

.method public final setGammaBypass()V
    .locals 7

    .line 1
    const-string/jumbo v0, "gamma"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_bypass_array:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    const-string/jumbo v3, "bypass"

    .line 8
    .line 9
    .line 10
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    :try_start_1
    invoke-static {v5, v5, v4, v3, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_bypass_array:[Ljava/lang/String;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_ext_bypass_array:[Ljava/lang/String;

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    const/16 v2, 0xa

    .line 26
    .line 27
    invoke-static {v2, v5, v4, v3, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_bypass_array:[Ljava/lang/String;

    .line 32
    .line 33
    const/16 v2, 0x8

    .line 34
    .line 35
    invoke-static {v2, v5, v4, v3, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_ext_bypass_array:[Ljava/lang/String;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    move-object v2, v1

    .line 44
    move-object v3, v2

    .line 45
    goto :goto_3

    .line 46
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_bypass_array:[Ljava/lang/String;

    .line 47
    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    array-length v0, v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    .line 55
    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    const-string/jumbo v0, "cgc_dither"

    .line 59
    .line 60
    .line 61
    invoke-static {v4, v3, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    .line 66
    .line 67
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_bypass_array:[Ljava/lang/String;

    .line 68
    .line 69
    aget-object v0, v0, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    .line 71
    :try_start_2
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_ext_bypass_array:[Ljava/lang/String;

    .line 72
    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    aget-object v2, v2, v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catch_1
    move-exception v2

    .line 79
    move-object v3, v1

    .line 80
    move-object v6, v2

    .line 81
    move-object v2, v0

    .line 82
    move-object v0, v6

    .line 83
    goto :goto_3

    .line 84
    :cond_3
    move-object v2, v1

    .line 85
    :goto_1
    :try_start_3
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    .line 86
    .line 87
    if-eqz v3, :cond_6

    .line 88
    .line 89
    array-length v4, v3

    .line 90
    if-nez v4, :cond_4

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_4
    aget-object v1, v3, v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :catch_2
    move-exception v3

    .line 97
    move-object v6, v2

    .line 98
    move-object v2, v0

    .line 99
    move-object v0, v3

    .line 100
    move-object v3, v6

    .line 101
    goto :goto_3

    .line 102
    :cond_5
    :goto_2
    return-void

    .line 103
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    .line 105
    .line 106
    move-object v0, v2

    .line 107
    move-object v2, v3

    .line 108
    :cond_6
    :goto_4
    if-eqz v0, :cond_8

    .line 109
    .line 110
    const-string v3, "ExynosDisplayColor"

    .line 111
    .line 112
    const-string/jumbo v4, "setGammaBypass()"

    .line 113
    .line 114
    .line 115
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    if-eqz v1, :cond_7

    .line 119
    .line 120
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {v3, v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    :cond_7
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EXTENSION_OFF:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EXTENSION_ON:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {p0, v2, v0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_8
    return-void
.end method

.method public final setHsvGainOn()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->hsc_bypass_array:[Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    .line 6
    .line 7
    const-string/jumbo v1, "bypass"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v2, "hsc"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->hsc_bypass_array:[Ljava/lang/String;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    goto :goto_2

    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->hsc_bypass_array:[Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    array-length v1, v0

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    goto :goto_3

    .line 34
    :cond_2
    :goto_1
    return-void

    .line 35
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    :goto_3
    if-eqz v0, :cond_3

    .line 40
    .line 41
    const-string v1, "ExynosDisplayColor"

    .line 42
    .line 43
    const-string/jumbo v2, "setHsvGainOn()"

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->HSC_SYSFS_PATH:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    :cond_3
    return-void
.end method

.method public final setHsvGainValue(III)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, ","

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    :try_start_0
    iget-object v4, v1, Lcom/android/server/display/exynos/ExynosDisplayColor;->hsc_bypass_array:[Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v4, :cond_7

    .line 14
    .line 15
    array-length v5, v4

    .line 16
    if-nez v5, :cond_0

    .line 17
    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :cond_0
    const/4 v5, 0x0

    .line 21
    aget-object v4, v4, v5

    .line 22
    .line 23
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget-object v6, v1, Lcom/android/server/display/exynos/ExynosDisplayColor;->hw_ver:Ljava/lang/String;

    .line 28
    .line 29
    const/16 v7, 0xd

    .line 30
    .line 31
    const/16 v8, 0xc

    .line 32
    .line 33
    const/16 v9, 0xb

    .line 34
    .line 35
    const/16 v10, 0xa

    .line 36
    .line 37
    const/16 v11, 0x9

    .line 38
    .line 39
    const/16 v12, 0xff

    .line 40
    .line 41
    const/4 v13, 0x1

    .line 42
    if-nez v6, :cond_1

    .line 43
    .line 44
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    aput-object v6, v4, v11

    .line 49
    .line 50
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    aput-object v6, v4, v10

    .line 55
    .line 56
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    aput-object v6, v4, v9

    .line 61
    .line 62
    add-int/lit8 v6, p2, -0x7f

    .line 63
    .line 64
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    aput-object v6, v4, v8

    .line 69
    .line 70
    add-int/lit8 v6, p1, -0x7f

    .line 71
    .line 72
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    aput-object v6, v4, v7

    .line 77
    .line 78
    add-int/lit8 v6, p3, -0x7f

    .line 79
    .line 80
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    const/16 v7, 0xe

    .line 85
    .line 86
    aput-object v6, v4, v7

    .line 87
    .line 88
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    const/16 v7, 0x92

    .line 93
    .line 94
    aput-object v6, v4, v7

    .line 95
    .line 96
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    const/16 v7, 0x93

    .line 101
    .line 102
    aput-object v6, v4, v7

    .line 103
    .line 104
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    const/16 v7, 0x94

    .line 109
    .line 110
    aput-object v6, v4, v7

    .line 111
    .line 112
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    const/16 v7, 0x95

    .line 117
    .line 118
    aput-object v6, v4, v7

    .line 119
    .line 120
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    const/16 v7, 0x96

    .line 125
    .line 126
    aput-object v6, v4, v7

    .line 127
    .line 128
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    const/16 v7, 0x97

    .line 133
    .line 134
    aput-object v6, v4, v7

    .line 135
    .line 136
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    const/16 v7, 0x98

    .line 141
    .line 142
    aput-object v6, v4, v7

    .line 143
    .line 144
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    const/16 v7, 0x99

    .line 149
    .line 150
    aput-object v6, v4, v7

    .line 151
    .line 152
    goto/16 :goto_2

    .line 153
    .line 154
    :catch_0
    move-exception v0

    .line 155
    goto/16 :goto_5

    .line 156
    .line 157
    :cond_1
    iget-object v14, v1, Lcom/android/server/display/exynos/ExynosDisplayColor;->HW_VER_8_0:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v6, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    const/16 v14, 0x42

    .line 164
    .line 165
    const/16 v15, 0x8

    .line 166
    .line 167
    if-ltz v6, :cond_3

    .line 168
    .line 169
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    const/4 v7, 0x4

    .line 174
    aput-object v6, v4, v7

    .line 175
    .line 176
    add-int/lit8 v6, p1, -0x7f

    .line 177
    .line 178
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    const/4 v7, 0x5

    .line 183
    aput-object v6, v4, v7

    .line 184
    .line 185
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    const/4 v7, 0x6

    .line 190
    aput-object v6, v4, v7

    .line 191
    .line 192
    add-int/lit8 v6, p2, -0x7f

    .line 193
    .line 194
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    const/4 v7, 0x7

    .line 199
    aput-object v6, v4, v7

    .line 200
    .line 201
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    aput-object v6, v4, v15

    .line 206
    .line 207
    add-int/lit8 v6, p3, -0x7f

    .line 208
    .line 209
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    aput-object v6, v4, v11

    .line 214
    .line 215
    const/16 v6, 0x31

    .line 216
    .line 217
    move v7, v6

    .line 218
    :goto_0
    if-gt v7, v14, :cond_2

    .line 219
    .line 220
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    aput-object v8, v4, v7

    .line 225
    .line 226
    add-int/lit8 v7, v7, 0x1

    .line 227
    .line 228
    goto :goto_0

    .line 229
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    aput-object v7, v4, v6

    .line 234
    .line 235
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    const/16 v7, 0x3a

    .line 240
    .line 241
    aput-object v6, v4, v7

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_3
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    aput-object v6, v4, v15

    .line 249
    .line 250
    add-int/lit8 v6, p1, -0x7f

    .line 251
    .line 252
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    aput-object v6, v4, v11

    .line 257
    .line 258
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    aput-object v6, v4, v10

    .line 263
    .line 264
    add-int/lit8 v6, p2, -0x7f

    .line 265
    .line 266
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    aput-object v6, v4, v9

    .line 271
    .line 272
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    aput-object v6, v4, v8

    .line 277
    .line 278
    add-int/lit8 v6, p3, -0x7f

    .line 279
    .line 280
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    aput-object v6, v4, v7

    .line 285
    .line 286
    const/16 v6, 0x39

    .line 287
    .line 288
    move v7, v6

    .line 289
    :goto_1
    const/16 v8, 0x4a

    .line 290
    .line 291
    if-gt v7, v8, :cond_4

    .line 292
    .line 293
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v8

    .line 297
    aput-object v8, v4, v7

    .line 298
    .line 299
    add-int/lit8 v7, v7, 0x1

    .line 300
    .line 301
    goto :goto_1

    .line 302
    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v7

    .line 306
    aput-object v7, v4, v6

    .line 307
    .line 308
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v6

    .line 312
    aput-object v6, v4, v14

    .line 313
    .line 314
    :goto_2
    array-length v6, v4

    .line 315
    if-ge v5, v6, :cond_6

    .line 316
    .line 317
    array-length v6, v4

    .line 318
    sub-int/2addr v6, v13

    .line 319
    if-ge v5, v6, :cond_5

    .line 320
    .line 321
    new-instance v6, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .line 325
    .line 326
    aget-object v7, v4, v5

    .line 327
    .line 328
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v6

    .line 338
    goto :goto_3

    .line 339
    :cond_5
    aget-object v6, v4, v5

    .line 340
    .line 341
    :goto_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    add-int/lit8 v5, v5, 0x1

    .line 345
    .line 346
    goto :goto_2

    .line 347
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    if-lez v0, :cond_8

    .line 352
    .line 353
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    goto :goto_6

    .line 358
    :cond_7
    :goto_4
    return-void

    .line 359
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 360
    .line 361
    .line 362
    :cond_8
    :goto_6
    if-eqz v3, :cond_9

    .line 363
    .line 364
    const-string v0, "ExynosDisplayColor"

    .line 365
    .line 366
    const-string/jumbo v2, "setHsvGainValue()"

    .line 367
    .line 368
    .line 369
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .line 371
    .line 372
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayColor;->HSC_SYSFS_PATH:Ljava/lang/String;

    .line 373
    .line 374
    invoke-static {v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 375
    .line 376
    .line 377
    :cond_9
    return-void
.end method

.method public final setRgbGainOn(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "rgbgain"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->RGBGAIN_XML_FILE_PATH:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    :try_start_0
    const-string/jumbo p1, "red"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_array:[Ljava/lang/String;

    .line 16
    .line 17
    const-string/jumbo p1, "green"

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->ggain_array:[Ljava/lang/String;

    .line 25
    .line 26
    const-string/jumbo p1, "blue"

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bgain_array:[Ljava/lang/String;

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catch_0
    move-exception p0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bgain_array:[Ljava/lang/String;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->ggain_array:[Ljava/lang/String;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_array:[Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayColor;->setGammaBypass()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :goto_1
    return-void
.end method

.method public final setRgbGainValue(III)V
    .locals 5

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_array:[Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_7

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->ggain_array:[Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v2, :cond_7

    .line 14
    .line 15
    array-length v3, v2

    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bgain_array:[Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v3, :cond_7

    .line 22
    .line 23
    array-length v4, v3

    .line 24
    if-nez v4, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    array-length v1, v1

    .line 28
    if-lt p1, v1, :cond_3

    .line 29
    .line 30
    return-void

    .line 31
    :cond_3
    array-length v1, v2

    .line 32
    if-lt p2, v1, :cond_4

    .line 33
    .line 34
    return-void

    .line 35
    :cond_4
    array-length v1, v3

    .line 36
    if-lt p3, v1, :cond_5

    .line 37
    .line 38
    return-void

    .line 39
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->rgain_array:[Ljava/lang/String;

    .line 45
    .line 46
    aget-object p1, v2, p1

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->ggain_array:[Ljava/lang/String;

    .line 55
    .line 56
    aget-object p1, p1, p2

    .line 57
    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bgain_array:[Ljava/lang/String;

    .line 65
    .line 66
    aget-object p1, p1, p3

    .line 67
    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-nez p1, :cond_6

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_6
    const-string p2, "ExynosDisplayColor"

    .line 79
    .line 80
    const-string/jumbo p3, "setGammaValue()"

    .line 81
    .line 82
    .line 83
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    iget-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->EXTENSION_OFF:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayColor;->sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :catch_0
    move-exception p0

    .line 93
    goto :goto_1

    .line 94
    :cond_7
    :goto_0
    return-void

    .line 95
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    .line 97
    .line 98
    :goto_2
    return-void
.end method

.method public final setRgbWeightOn(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move p1, v0

    .line 7
    :goto_0
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->bIsRgbWeightOn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    .line 9
    if-nez p1, :cond_2

    .line 10
    .line 11
    :try_start_1
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_matrix_bypass_array:[Ljava/lang/String;

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    .line 16
    .line 17
    const-string/jumbo v1, "bypass"

    .line 18
    .line 19
    .line 20
    const-string/jumbo v2, "gamma_matrix"

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v1, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_matrix_bypass_array:[Ljava/lang/String;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catch_0
    move-exception p0

    .line 31
    goto :goto_2

    .line 32
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->gamma_matrix_bypass_array:[Ljava/lang/String;

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    array-length v1, p1

    .line 37
    if-lez v1, :cond_2

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->GAMMA_MATRIX_SYSFS_PATH:Ljava/lang/String;

    .line 40
    .line 41
    aget-object p1, p1, v0

    .line 42
    .line 43
    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_3

    .line 47
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 48
    .line 49
    .line 50
    goto :goto_3

    .line 51
    :catch_1
    move-exception p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_3
    return-void
.end method

.method public final setSkinColorOn(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "hsc"

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->SKINCOLOR_XML_FILE_PATH:Ljava/lang/String;

    .line 7
    .line 8
    const-string/jumbo v1, "skincolor"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->skincolor_array:[Ljava/lang/String;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    .line 21
    .line 22
    const-string/jumbo v1, "bypass"

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->skincolor_array:[Ljava/lang/String;

    .line 30
    .line 31
    :goto_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->skincolor_array:[Ljava/lang/String;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    array-length v0, p1

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    aget-object p1, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_2
    :goto_1
    return-void

    .line 44
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    :goto_3
    if-eqz p1, :cond_3

    .line 49
    .line 50
    const-string v0, "ExynosDisplayColor"

    .line 51
    .line 52
    const-string/jumbo v1, "setSkinColorOn()"

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->HSC_SYSFS_PATH:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    :cond_3
    return-void
.end method

.method public final setWhitePointColorOn(I)V
    .locals 13

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->hw_ver:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

    .line 8
    .line 9
    const-string/jumbo v4, "cgc_dither"

    .line 10
    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    const-string/jumbo v6, "whitepoint"

    .line 14
    .line 15
    .line 16
    iget-object v7, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->WHITEPOINT_XML_FILE_PATH:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    iget-object v9, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->BYPASS_XML_FILE_PATH:Ljava/lang/String;

    .line 20
    .line 21
    const-string/jumbo v10, "bypass"

    .line 22
    .line 23
    .line 24
    const-string v11, "ExynosDisplayColor"

    .line 25
    .line 26
    if-nez v2, :cond_6

    .line 27
    .line 28
    const-string/jumbo v2, "cgc"

    .line 29
    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    :try_start_0
    invoke-static {v7, v6, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->whitepoint_array:[Ljava/lang/String;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    move-object v2, v8

    .line 42
    goto :goto_2

    .line 43
    :cond_0
    invoke-static {v9, v10, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->whitepoint_array:[Ljava/lang/String;

    .line 48
    .line 49
    :goto_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->whitepoint_array:[Ljava/lang/String;

    .line 50
    .line 51
    if-eqz p1, :cond_12

    .line 52
    .line 53
    array-length v2, p1

    .line 54
    if-nez v2, :cond_1

    .line 55
    .line 56
    goto/16 :goto_c

    .line 57
    .line 58
    :cond_1
    aget-object p1, p1, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    :try_start_1
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    .line 61
    .line 62
    if-nez v2, :cond_2

    .line 63
    .line 64
    invoke-static {v9, v10, v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catch_1
    move-exception v2

    .line 72
    move-object v12, v2

    .line 73
    move-object v2, p1

    .line 74
    move-object p1, v12

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    .line 77
    .line 78
    if-eqz v2, :cond_4

    .line 79
    .line 80
    array-length v4, v2

    .line 81
    if-nez v4, :cond_3

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_3
    aget-object v8, v2, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    .line 89
    .line 90
    move-object p1, v2

    .line 91
    :cond_4
    :goto_3
    if-eqz p1, :cond_12

    .line 92
    .line 93
    const-string/jumbo v2, "setWhitePointColorOn()"

    .line 94
    .line 95
    .line 96
    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    if-eqz v8, :cond_5

    .line 100
    .line 101
    invoke-static {v3, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    :cond_5
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC_SYSFS_PATH:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    goto/16 :goto_c

    .line 110
    .line 111
    :cond_6
    if-eqz p1, :cond_7

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_7
    move-object v7, v9

    .line 115
    move-object v6, v10

    .line 116
    :goto_4
    :try_start_2
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    .line 117
    .line 118
    if-nez p1, :cond_8

    .line 119
    .line 120
    invoke-static {v9, v10, v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    .line 125
    .line 126
    goto :goto_5

    .line 127
    :catch_2
    move-exception p0

    .line 128
    goto/16 :goto_b

    .line 129
    .line 130
    :cond_8
    :goto_5
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->cgc_dither_array:[Ljava/lang/String;

    .line 131
    .line 132
    if-eqz p1, :cond_a

    .line 133
    .line 134
    array-length v2, p1

    .line 135
    if-nez v2, :cond_9

    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_9
    aget-object v8, p1, v5

    .line 139
    .line 140
    :cond_a
    :goto_6
    if-eqz v8, :cond_b

    .line 141
    .line 142
    invoke-static {v3, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    :cond_b
    move p1, v5

    .line 146
    :goto_7
    const/4 v2, 0x3

    .line 147
    const/4 v3, 0x1

    .line 148
    if-ge p1, v2, :cond_f

    .line 149
    .line 150
    move v2, v5

    .line 151
    :goto_8
    const/16 v4, 0x11

    .line 152
    .line 153
    if-ge v2, v4, :cond_e

    .line 154
    .line 155
    const-string/jumbo v4, "cgc17_enc"

    .line 156
    .line 157
    .line 158
    invoke-static {p1, v2, v7, v6, v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    if-eqz v4, :cond_d

    .line 163
    .line 164
    array-length v8, v4

    .line 165
    if-ge v8, v3, :cond_c

    .line 166
    .line 167
    goto :goto_9

    .line 168
    :cond_c
    aget-object v4, v4, v5

    .line 169
    .line 170
    new-instance v8, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v9, " "

    .line 183
    .line 184
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    iget-object v9, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC17_IDX_SYSFS_PATH:Ljava/lang/String;

    .line 199
    .line 200
    invoke-static {v9, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 201
    .line 202
    .line 203
    iget-object v8, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC17_ENC_SYSFS_PATH:Ljava/lang/String;

    .line 204
    .line 205
    invoke-static {v8, v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 206
    .line 207
    .line 208
    add-int/lit8 v2, v2, 0x1

    .line 209
    .line 210
    goto :goto_8

    .line 211
    :cond_d
    :goto_9
    const-string/jumbo p0, "xml cgc17_enc not found"

    .line 212
    .line 213
    .line 214
    invoke-static {v11, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    goto :goto_c

    .line 218
    :cond_e
    add-int/lit8 p1, p1, 0x1

    .line 219
    .line 220
    goto :goto_7

    .line 221
    :cond_f
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC17_DEC_SYSFS_PATH:Ljava/lang/String;

    .line 222
    .line 223
    const-string v2, "7"

    .line 224
    .line 225
    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 226
    .line 227
    .line 228
    const-string/jumbo p1, "cgc17_con"

    .line 229
    .line 230
    .line 231
    invoke-static {v5, v5, v7, v6, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    if-eqz p1, :cond_11

    .line 236
    .line 237
    array-length v2, p1

    .line 238
    if-ge v2, v3, :cond_10

    .line 239
    .line 240
    goto :goto_a

    .line 241
    :cond_10
    aget-object p1, p1, v5

    .line 242
    .line 243
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->CGC17_CON_SYSFS_PATH:Ljava/lang/String;

    .line 244
    .line 245
    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 246
    .line 247
    .line 248
    goto :goto_c

    .line 249
    :cond_11
    :goto_a
    const-string/jumbo p0, "xml cgc17_con not found"

    .line 250
    .line 251
    .line 252
    invoke-static {v11, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 253
    .line 254
    .line 255
    goto :goto_c

    .line 256
    :goto_b
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 257
    .line 258
    .line 259
    :cond_12
    :goto_c
    new-instance p0, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    const-string/jumbo p1, "elaspedTime: "

    .line 262
    .line 263
    .line 264
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 268
    .line 269
    .line 270
    move-result-wide v2

    .line 271
    sub-long/2addr v2, v0

    .line 272
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p0

    .line 279
    invoke-static {v11, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    return-void
.end method

.method public final setXMLColorModesImpl(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "setXMLColorModesImpl: xml_path="

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayColor;->getColorModePath(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    :try_start_1
    const-string/jumbo v2, "bypass"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->COLORMODE_XML_FILE_PATH:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getPathWithPanel(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string/jumbo v3, "subxml"

    .line 25
    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-static {v2, p1, v4, v3}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    array-length v2, v2

    .line 35
    const/4 v3, 0x1

    .line 36
    if-ge v2, v3, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const-string/jumbo p1, "tune"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v2

    .line 44
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    const-string v2, "ExynosDisplayColor"

    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, ", mode_name="

    .line 58
    .line 59
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    .line 73
    .line 74
    if-eqz p0, :cond_3

    .line 75
    .line 76
    invoke-virtual {p0, v1, p1}, Lcom/android/server/display/exynos/ExynosDisplayTune;->setCalibrationDQE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catch_1
    move-exception p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    .line 83
    .line 84
    :cond_3
    :goto_1
    return-void
.end method

.method public final sysfsWriteGamma(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->GAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, p2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayColor;->GAMMA_SYSFS_PATH:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
