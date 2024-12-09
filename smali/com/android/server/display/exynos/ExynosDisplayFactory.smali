.class public final Lcom/android/server/display/exynos/ExynosDisplayFactory;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final APS_SYSFS_PATH:Ljava/lang/String;

.field public final CGC17_CON_SYSFS_PATH:Ljava/lang/String;

.field public final CGC17_DEC_SYSFS_PATH:Ljava/lang/String;

.field public final CGC17_ENC_SYSFS_PATH:Ljava/lang/String;

.field public final CGC17_IDX_SYSFS_PATH:Ljava/lang/String;

.field public final CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

.field public final DEBUG:Z

.field public final DEGAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

.field public final DEGAMMA_SYSFS_PATH:Ljava/lang/String;

.field public final DE_SYSFS_PATH:Ljava/lang/String;

.field public final DQE_COEF_XML_FILE_PATH:Ljava/lang/String;

.field public final DQE_SYSFS_PATH:Ljava/lang/String;

.field public final EXTENSION_OFF:Ljava/lang/String;

.field public final EXTENSION_ON:Ljava/lang/String;

.field public final GAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

.field public final GAMMA_MATRIX_SYSFS_PATH:Ljava/lang/String;

.field public final GAMMA_SYSFS_PATH:Ljava/lang/String;

.field public final HDR_SYSFS_PATH:Ljava/lang/String;

.field public final HSC48_IDX_SYSFS_PATH:Ljava/lang/String;

.field public final HSC48_LCG_SYSFS_PATH:Ljava/lang/String;

.field public final HSC_SYSFS_PATH:Ljava/lang/String;

.field public final MODE_IDX_SYSFS_PATH:Ljava/lang/String;

.field public final SCL_SYSFS_PATH:Ljava/lang/String;

.field public final mColorModeModeIdx:[I

.field public final mColorModeSettingTable:[Ljava/lang/String;

.field public mCountDownTimerCount:I

.field public final mCountDownTimerTable:[[I

.field public final mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayFactory$3;

.field public mFactoryXMLPath:Ljava/lang/String;

.field public final mIntervalMs:I

.field public final mLocalHandler:Landroid/os/Handler;

.field public final mTimeoutMs:I


# direct methods
.method public static -$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->MODE_IDX_SYSFS_PATH:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

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
    iput-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayFactory$3;

    .line 17
    .line 18
    const/16 v2, 0x320

    .line 19
    .line 20
    iput v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mTimeoutMs:I

    .line 21
    .line 22
    const/16 v2, 0x28

    .line 23
    .line 24
    iput v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mIntervalMs:I

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    iput v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 28
    .line 29
    const-string v3, "/sys/class/dqe/dqe"

    .line 30
    .line 31
    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DQE_SYSFS_PATH:Ljava/lang/String;

    .line 32
    .line 33
    const-string v4, "/sys/class/dqe/hdr"

    .line 34
    .line 35
    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HDR_SYSFS_PATH:Ljava/lang/String;

    .line 36
    .line 37
    const-string v4, "/sys/class/dqe/dqe/mode_idx"

    .line 38
    .line 39
    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->MODE_IDX_SYSFS_PATH:Ljava/lang/String;

    .line 40
    .line 41
    const-string v4, "/sys/class/dqe/dqe/aps"

    .line 42
    .line 43
    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->APS_SYSFS_PATH:Ljava/lang/String;

    .line 44
    .line 45
    const-string v4, "/sys/class/dqe/dqe/gamma_ext"

    .line 46
    .line 47
    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->GAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    .line 48
    .line 49
    const-string v4, "/sys/class/dqe/dqe/gamma"

    .line 50
    .line 51
    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->GAMMA_SYSFS_PATH:Ljava/lang/String;

    .line 52
    .line 53
    const-string v4, "/sys/class/dqe/dqe/degamma_ext"

    .line 54
    .line 55
    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEGAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    .line 56
    .line 57
    const-string v4, "/sys/class/dqe/dqe/degamma"

    .line 58
    .line 59
    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEGAMMA_SYSFS_PATH:Ljava/lang/String;

    .line 60
    .line 61
    const-string v4, "/sys/class/dqe/dqe/hsc"

    .line 62
    .line 63
    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HSC_SYSFS_PATH:Ljava/lang/String;

    .line 64
    .line 65
    const-string v4, "/sys/class/dqe/dqe/cgc17_idx"

    .line 66
    .line 67
    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_IDX_SYSFS_PATH:Ljava/lang/String;

    .line 68
    .line 69
    const-string v4, "/sys/class/dqe/dqe/cgc17_enc"

    .line 70
    .line 71
    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_ENC_SYSFS_PATH:Ljava/lang/String;

    .line 72
    .line 73
    const-string v4, "/sys/class/dqe/dqe/cgc17_dec"

    .line 74
    .line 75
    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_DEC_SYSFS_PATH:Ljava/lang/String;

    .line 76
    .line 77
    const-string v4, "/sys/class/dqe/dqe/cgc17_con"

    .line 78
    .line 79
    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_CON_SYSFS_PATH:Ljava/lang/String;

    .line 80
    .line 81
    const-string v4, "/sys/class/dqe/dqe/gamma_matrix"

    .line 82
    .line 83
    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->GAMMA_MATRIX_SYSFS_PATH:Ljava/lang/String;

    .line 84
    .line 85
    const-string v4, "/sys/class/dqe/dqe/cgc_dither"

    .line 86
    .line 87
    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

    .line 88
    .line 89
    const-string v4, "/sys/class/dqe/dqe/hsc48_idx"

    .line 90
    .line 91
    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HSC48_IDX_SYSFS_PATH:Ljava/lang/String;

    .line 92
    .line 93
    const-string v4, "/sys/class/dqe/dqe/hsc48_lcg"

    .line 94
    .line 95
    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HSC48_LCG_SYSFS_PATH:Ljava/lang/String;

    .line 96
    .line 97
    const-string v4, "/sys/class/dqe/dqe/scl"

    .line 98
    .line 99
    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->SCL_SYSFS_PATH:Ljava/lang/String;

    .line 100
    .line 101
    const-string v4, "/sys/class/dqe/dqe/de"

    .line 102
    .line 103
    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DE_SYSFS_PATH:Ljava/lang/String;

    .line 104
    .line 105
    const-string v4, "/vendor/etc/dqe/DQE_coef_data.xml"

    .line 106
    .line 107
    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DQE_COEF_XML_FILE_PATH:Ljava/lang/String;

    .line 108
    .line 109
    const-string v4, "0"

    .line 110
    .line 111
    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->EXTENSION_OFF:Ljava/lang/String;

    .line 112
    .line 113
    const-string v4, "1"

    .line 114
    .line 115
    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->EXTENSION_ON:Ljava/lang/String;

    .line 116
    .line 117
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 118
    .line 119
    const/4 v4, 0x1

    .line 120
    const/4 v5, 0x2

    .line 121
    filled-new-array {v4, v5}, [I

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    iput-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    .line 126
    .line 127
    const-string/jumbo v6, "hdr10"

    .line 128
    .line 129
    .line 130
    const-string/jumbo v7, "hdr10p"

    .line 131
    .line 132
    .line 133
    filled-new-array {v6, v7}, [Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    iput-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    .line 138
    .line 139
    filled-new-array {v2}, [I

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    filled-new-array {v2}, [I

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    filled-new-array {v6, v7}, [[I

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    iput-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 152
    .line 153
    new-instance v6, Lcom/android/server/display/exynos/ExynosDisplayFactory$2;

    .line 154
    .line 155
    invoke-direct {v6, p0}, Lcom/android/server/display/exynos/ExynosDisplayFactory$2;-><init>(Lcom/android/server/display/exynos/ExynosDisplayFactory;)V

    .line 156
    .line 157
    .line 158
    new-instance v6, Landroid/os/Handler;

    .line 159
    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-direct {v6, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 165
    .line 166
    .line 167
    iput-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mLocalHandler:Landroid/os/Handler;

    .line 168
    .line 169
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->MODE_IDX_SYSFS_PATH:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->MODE_IDX_SYSFS_PATH:Ljava/lang/String;

    .line 176
    .line 177
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->APS_SYSFS_PATH:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->APS_SYSFS_PATH:Ljava/lang/String;

    .line 184
    .line 185
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->GAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->GAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    .line 192
    .line 193
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->GAMMA_SYSFS_PATH:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->GAMMA_SYSFS_PATH:Ljava/lang/String;

    .line 200
    .line 201
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEGAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEGAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    .line 208
    .line 209
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEGAMMA_SYSFS_PATH:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEGAMMA_SYSFS_PATH:Ljava/lang/String;

    .line 216
    .line 217
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HSC_SYSFS_PATH:Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HSC_SYSFS_PATH:Ljava/lang/String;

    .line 224
    .line 225
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_IDX_SYSFS_PATH:Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_IDX_SYSFS_PATH:Ljava/lang/String;

    .line 232
    .line 233
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_ENC_SYSFS_PATH:Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_ENC_SYSFS_PATH:Ljava/lang/String;

    .line 240
    .line 241
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_DEC_SYSFS_PATH:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_DEC_SYSFS_PATH:Ljava/lang/String;

    .line 248
    .line 249
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_CON_SYSFS_PATH:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_CON_SYSFS_PATH:Ljava/lang/String;

    .line 256
    .line 257
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->GAMMA_MATRIX_SYSFS_PATH:Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->GAMMA_MATRIX_SYSFS_PATH:Ljava/lang/String;

    .line 264
    .line 265
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

    .line 266
    .line 267
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC_DITHER_SYSFS_PATH:Ljava/lang/String;

    .line 272
    .line 273
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HSC48_IDX_SYSFS_PATH:Ljava/lang/String;

    .line 274
    .line 275
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HSC48_IDX_SYSFS_PATH:Ljava/lang/String;

    .line 280
    .line 281
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HSC48_LCG_SYSFS_PATH:Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HSC48_LCG_SYSFS_PATH:Ljava/lang/String;

    .line 288
    .line 289
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->SCL_SYSFS_PATH:Ljava/lang/String;

    .line 290
    .line 291
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->SCL_SYSFS_PATH:Ljava/lang/String;

    .line 296
    .line 297
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DE_SYSFS_PATH:Ljava/lang/String;

    .line 298
    .line 299
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DE_SYSFS_PATH:Ljava/lang/String;

    .line 304
    .line 305
    if-eqz v0, :cond_0

    .line 306
    .line 307
    new-instance p1, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    const-string/jumbo v0, "setSysfsPath: "

    .line 310
    .line 311
    .line 312
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    const-string v0, "ExynosDisplayFactory"

    .line 327
    .line 328
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    :cond_0
    new-array p1, v5, [I

    .line 332
    .line 333
    const/16 v0, 0x14

    .line 334
    .line 335
    aput v0, p1, v4

    .line 336
    .line 337
    aput v5, p1, v2

    .line 338
    .line 339
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 340
    .line 341
    invoke-static {v3, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    check-cast p1, [[I

    .line 346
    .line 347
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 348
    .line 349
    move p1, v2

    .line 350
    :goto_0
    if-ge p1, v5, :cond_2

    .line 351
    .line 352
    move v3, v2

    .line 353
    :goto_1
    if-ge v3, v0, :cond_1

    .line 354
    .line 355
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 356
    .line 357
    aget-object v4, v4, p1

    .line 358
    .line 359
    aput v2, v4, v3

    .line 360
    .line 361
    add-int/lit8 v3, v3, 0x1

    .line 362
    .line 363
    goto :goto_1

    .line 364
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 365
    .line 366
    goto :goto_0

    .line 367
    :cond_2
    new-instance p1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;

    .line 368
    .line 369
    iget v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mTimeoutMs:I

    .line 370
    .line 371
    int-to-long v8, v0

    .line 372
    iget v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mIntervalMs:I

    .line 373
    .line 374
    int-to-long v10, v0

    .line 375
    move-object v6, p1

    .line 376
    move-object v7, p0

    .line 377
    invoke-direct/range {v6 .. v11}, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;-><init>(Lcom/android/server/display/exynos/ExynosDisplayFactory;JJ)V

    .line 378
    .line 379
    .line 380
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayFactory$3;

    .line 381
    .line 382
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 383
    .line 384
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mLocalHandler:Landroid/os/Handler;

    .line 385
    .line 386
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayFactory$1;

    .line 387
    .line 388
    invoke-direct {v0, p0}, Lcom/android/server/display/exynos/ExynosDisplayFactory$1;-><init>(Lcom/android/server/display/exynos/ExynosDisplayFactory;)V

    .line 389
    .line 390
    .line 391
    const-wide/16 v1, 0x0

    .line 392
    .line 393
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 394
    .line 395
    .line 396
    return-void
.end method

.method public static getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {v0, v0, p0, p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    array-length p1, p0

    .line 10
    const/4 p2, 0x1

    .line 11
    if-ge p1, p2, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    aget-object p0, p0, v0

    .line 15
    .line 16
    const-string p1, "\\s*,\\s*"

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    aget-object p0, p0, v0

    .line 23
    .line 24
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :goto_0
    return v0
.end method


# virtual methods
.method public final startCountDownTimer(Ljava/lang/String;)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DQE_COEF_XML_FILE_PATH:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getPathWithPanel(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->existFile(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    .line 19
    .line 20
    const-string v1, "ExynosDisplayFactory"

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    const-string/jumbo v2, "startCountDownTimer: xml_path="

    .line 25
    .line 26
    .line 27
    invoke-static {v2, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    const/4 v2, 0x0

    .line 31
    move v3, v2

    .line 32
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 33
    .line 34
    const/4 v5, 0x2

    .line 35
    if-ge v3, v5, :cond_4

    .line 36
    .line 37
    move v5, v2

    .line 38
    :goto_1
    const/16 v6, 0x14

    .line 39
    .line 40
    if-ge v5, v6, :cond_3

    .line 41
    .line 42
    aget-object v6, v4, v3

    .line 43
    .line 44
    aput v2, v6, v5

    .line 45
    .line 46
    add-int/lit8 v5, v5, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    :try_start_0
    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXMLNodeText(Ljava/lang/String;)[Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-eqz v3, :cond_12

    .line 57
    .line 58
    array-length v6, v3

    .line 59
    const/4 v7, 0x1

    .line 60
    if-ge v6, v7, :cond_5

    .line 61
    .line 62
    goto/16 :goto_6

    .line 63
    .line 64
    :cond_5
    if-eqz v0, :cond_6

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string/jumbo v6, "xml version: "

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    aget-object v3, v3, v2

    .line 78
    .line 79
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :catch_0
    move-exception p1

    .line 91
    goto/16 :goto_7

    .line 92
    .line 93
    :cond_6
    :goto_2
    move v0, v2

    .line 94
    :goto_3
    if-ge v0, v5, :cond_13

    .line 95
    .line 96
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    .line 97
    .line 98
    aget-object v3, v3, v0

    .line 99
    .line 100
    const-string/jumbo v6, "aps"

    .line 101
    .line 102
    .line 103
    invoke-static {p1, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-lez v6, :cond_7

    .line 108
    .line 109
    aget-object v6, v4, v0

    .line 110
    .line 111
    aput v7, v6, v2

    .line 112
    .line 113
    :cond_7
    const-string/jumbo v6, "degamma"

    .line 114
    .line 115
    .line 116
    invoke-static {p1, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-lez v6, :cond_8

    .line 121
    .line 122
    aget-object v6, v4, v0

    .line 123
    .line 124
    aput v7, v6, v7

    .line 125
    .line 126
    :cond_8
    const-string/jumbo v6, "gamma"

    .line 127
    .line 128
    .line 129
    invoke-static {p1, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-lez v6, :cond_9

    .line 134
    .line 135
    aget-object v6, v4, v0

    .line 136
    .line 137
    aput v7, v6, v5

    .line 138
    .line 139
    :cond_9
    const-string/jumbo v6, "gamma_matrix"

    .line 140
    .line 141
    .line 142
    invoke-static {p1, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-lez v6, :cond_a

    .line 147
    .line 148
    aget-object v6, v4, v0

    .line 149
    .line 150
    const/4 v8, 0x3

    .line 151
    aput v7, v6, v8

    .line 152
    .line 153
    :cond_a
    const-string/jumbo v6, "hsc"

    .line 154
    .line 155
    .line 156
    invoke-static {p1, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    const/4 v8, 0x4

    .line 161
    :goto_4
    const/4 v9, 0x5

    .line 162
    if-gt v8, v9, :cond_c

    .line 163
    .line 164
    if-lez v6, :cond_b

    .line 165
    .line 166
    aget-object v9, v4, v0

    .line 167
    .line 168
    aput v7, v9, v8

    .line 169
    .line 170
    :cond_b
    add-int/lit8 v8, v8, 0x1

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_c
    const-string/jumbo v6, "scl"

    .line 174
    .line 175
    .line 176
    invoke-static {p1, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    if-lez v6, :cond_d

    .line 181
    .line 182
    aget-object v6, v4, v0

    .line 183
    .line 184
    const/4 v8, 0x6

    .line 185
    aput v7, v6, v8

    .line 186
    .line 187
    :cond_d
    const-string/jumbo v6, "cgc17_con"

    .line 188
    .line 189
    .line 190
    invoke-static {p1, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    const/4 v8, 0x7

    .line 195
    :goto_5
    const/16 v9, 0xb

    .line 196
    .line 197
    if-gt v8, v9, :cond_f

    .line 198
    .line 199
    if-lez v6, :cond_e

    .line 200
    .line 201
    aget-object v9, v4, v0

    .line 202
    .line 203
    aput v7, v9, v8

    .line 204
    .line 205
    :cond_e
    add-int/lit8 v8, v8, 0x1

    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_f
    const-string/jumbo v6, "cgc_dither"

    .line 209
    .line 210
    .line 211
    invoke-static {p1, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    if-lez v6, :cond_10

    .line 216
    .line 217
    aget-object v6, v4, v0

    .line 218
    .line 219
    const/16 v8, 0xc

    .line 220
    .line 221
    aput v7, v6, v8

    .line 222
    .line 223
    :cond_10
    const-string/jumbo v6, "de"

    .line 224
    .line 225
    .line 226
    invoke-static {p1, v3, v6}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->getItemEnable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    if-lez v6, :cond_11

    .line 231
    .line 232
    aget-object v6, v4, v0

    .line 233
    .line 234
    const/16 v8, 0xd

    .line 235
    .line 236
    aput v7, v6, v8

    .line 237
    .line 238
    :cond_11
    new-instance v6, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v3, " enable "

    .line 247
    .line 248
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    aget-object v3, v4, v0

    .line 252
    .line 253
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    add-int/lit8 v0, v0, 0x1

    .line 268
    .line 269
    goto/16 :goto_3

    .line 270
    .line 271
    :cond_12
    :goto_6
    const-string/jumbo p1, "xml version not found"

    .line 272
    .line 273
    .line 274
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .line 276
    .line 277
    return-void

    .line 278
    :goto_7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 279
    .line 280
    .line 281
    :cond_13
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayFactory$3;

    .line 282
    .line 283
    if-eqz p1, :cond_14

    .line 284
    .line 285
    iput v2, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 286
    .line 287
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 288
    .line 289
    .line 290
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayFactory$3;

    .line 291
    .line 292
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 293
    .line 294
    .line 295
    :cond_14
    return-void
.end method

.method public final sysfsPathReplace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->HDR_SYSFS_PATH:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    :goto_0
    return-object p1

    .line 13
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DQE_SYSFS_PATH:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public final sysfsWriteCGC17_IDX(I)V
    .locals 2

    .line 1
    div-int/lit8 v0, p1, 0x11

    .line 2
    .line 3
    rem-int/lit8 p1, p1, 0x11

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, " "

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->CGC17_IDX_SYSFS_PATH:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final sysfsWriteDEGAMMA(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEGAMMA_SYSFS_PATH:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "0"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEGAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0, p2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEGAMMA_SYSFS_PATH:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final sysfsWriteGAMMA(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->GAMMA_SYSFS_PATH:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "0"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->GAMMA_EXT_SYSFS_PATH:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0, p2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->GAMMA_SYSFS_PATH:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->sysfsWriteSting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
