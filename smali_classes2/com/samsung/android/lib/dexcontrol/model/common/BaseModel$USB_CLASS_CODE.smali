.class public final enum Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;
.super Ljava/lang/Enum;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum APPLICATION_SPECIFIC:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum AUDIO:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum AUDIO_VIDEO_DEVICES:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum BILLBOARD_DEVICE_CLASS:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum CDC_DATA:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum COMMUNICATIONS_AND_CDC_CONTROL:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum CONTENT_SECURITY:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum DIAGONOSTIC_DEVICES:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum HID:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum HUB:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum IMAGE:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum MASS_STORAGE:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum MISCELLANEOUS:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum PERSOLNAL_HEALTHCARE:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum PHYSICAL:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum PRINTER:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum SMART_CARD:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum USB_TYPE_C_BRIDGE_CLASS:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum VENDOR_SPECIFIC:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum VIDEO:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

.field public static final enum WIRELESS_CONTROLLER:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 1
    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 2
    .line 3
    const-string v1, "AUDIO"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(IILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->AUDIO:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 11
    .line 12
    new-instance v1, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 13
    .line 14
    const-string v2, "COMMUNICATIONS_AND_CDC_CONTROL"

    .line 15
    .line 16
    const/4 v4, 0x2

    .line 17
    invoke-direct {v1, v3, v4, v2}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(IILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->COMMUNICATIONS_AND_CDC_CONTROL:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 21
    .line 22
    new-instance v2, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 23
    .line 24
    const-string v3, "HID"

    .line 25
    .line 26
    const/4 v5, 0x3

    .line 27
    invoke-direct {v2, v4, v5, v3}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(IILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sput-object v2, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->HID:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 31
    .line 32
    new-instance v3, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 33
    .line 34
    const-string v4, "PHYSICAL"

    .line 35
    .line 36
    const/4 v6, 0x5

    .line 37
    invoke-direct {v3, v5, v6, v4}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(IILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sput-object v3, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->PHYSICAL:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 41
    .line 42
    new-instance v4, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 43
    .line 44
    const-string v5, "IMAGE"

    .line 45
    .line 46
    const/4 v7, 0x4

    .line 47
    const/4 v8, 0x6

    .line 48
    invoke-direct {v4, v7, v8, v5}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(IILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sput-object v4, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->IMAGE:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 52
    .line 53
    new-instance v5, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 54
    .line 55
    const-string v7, "PRINTER"

    .line 56
    .line 57
    const/4 v9, 0x7

    .line 58
    invoke-direct {v5, v6, v9, v7}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(IILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sput-object v5, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->PRINTER:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 62
    .line 63
    new-instance v6, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 64
    .line 65
    const-string v7, "MASS_STORAGE"

    .line 66
    .line 67
    const/16 v10, 0x8

    .line 68
    .line 69
    invoke-direct {v6, v8, v10, v7}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(IILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sput-object v6, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->MASS_STORAGE:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 73
    .line 74
    new-instance v7, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 75
    .line 76
    const-string v8, "HUB"

    .line 77
    .line 78
    const/16 v11, 0x9

    .line 79
    .line 80
    invoke-direct {v7, v9, v11, v8}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(IILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v7, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->HUB:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 84
    .line 85
    new-instance v8, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 86
    .line 87
    const-string v9, "CDC_DATA"

    .line 88
    .line 89
    const/16 v12, 0xa

    .line 90
    .line 91
    invoke-direct {v8, v10, v12, v9}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(IILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sput-object v8, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->CDC_DATA:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 95
    .line 96
    new-instance v9, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 97
    .line 98
    const-string v10, "SMART_CARD"

    .line 99
    .line 100
    const/16 v13, 0xb

    .line 101
    .line 102
    invoke-direct {v9, v11, v13, v10}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(IILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    sput-object v9, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->SMART_CARD:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 106
    .line 107
    new-instance v10, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 108
    .line 109
    const-string v11, "CONTENT_SECURITY"

    .line 110
    .line 111
    const/16 v14, 0xd

    .line 112
    .line 113
    invoke-direct {v10, v12, v14, v11}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(IILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    sput-object v10, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->CONTENT_SECURITY:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 117
    .line 118
    new-instance v11, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 119
    .line 120
    const-string v12, "VIDEO"

    .line 121
    .line 122
    const/16 v15, 0xe

    .line 123
    .line 124
    invoke-direct {v11, v13, v15, v12}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(IILjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    sput-object v11, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->VIDEO:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 128
    .line 129
    new-instance v12, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 130
    .line 131
    const-string v13, "PERSOLNAL_HEALTHCARE"

    .line 132
    .line 133
    const/16 v15, 0xc

    .line 134
    .line 135
    const/16 v14, 0xf

    .line 136
    .line 137
    invoke-direct {v12, v15, v14, v13}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(IILjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    sput-object v12, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->PERSOLNAL_HEALTHCARE:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 141
    .line 142
    new-instance v13, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 143
    .line 144
    const-string v15, "AUDIO_VIDEO_DEVICES"

    .line 145
    .line 146
    const/16 v14, 0x10

    .line 147
    .line 148
    move-object/from16 v19, v12

    .line 149
    .line 150
    const/16 v12, 0xd

    .line 151
    .line 152
    invoke-direct {v13, v12, v14, v15}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(IILjava/lang/String;)V

    .line 153
    .line 154
    .line 155
    sput-object v13, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->AUDIO_VIDEO_DEVICES:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 156
    .line 157
    new-instance v15, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 158
    .line 159
    const-string v12, "BILLBOARD_DEVICE_CLASS"

    .line 160
    .line 161
    const/16 v14, 0x11

    .line 162
    .line 163
    move-object/from16 v20, v13

    .line 164
    .line 165
    const/16 v13, 0xe

    .line 166
    .line 167
    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(IILjava/lang/String;)V

    .line 168
    .line 169
    .line 170
    sput-object v15, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->BILLBOARD_DEVICE_CLASS:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 171
    .line 172
    new-instance v13, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 173
    .line 174
    const-string v12, "USB_TYPE_C_BRIDGE_CLASS"

    .line 175
    .line 176
    const/16 v14, 0x12

    .line 177
    .line 178
    move-object/from16 v21, v15

    .line 179
    .line 180
    const/16 v15, 0xf

    .line 181
    .line 182
    invoke-direct {v13, v15, v14, v12}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(IILjava/lang/String;)V

    .line 183
    .line 184
    .line 185
    sput-object v13, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->USB_TYPE_C_BRIDGE_CLASS:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 186
    .line 187
    new-instance v15, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 188
    .line 189
    const-string v12, "DIAGONOSTIC_DEVICES"

    .line 190
    .line 191
    const/16 v14, 0xdc

    .line 192
    .line 193
    move-object/from16 v22, v13

    .line 194
    .line 195
    const/16 v13, 0x10

    .line 196
    .line 197
    invoke-direct {v15, v13, v14, v12}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(IILjava/lang/String;)V

    .line 198
    .line 199
    .line 200
    sput-object v15, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->DIAGONOSTIC_DEVICES:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 201
    .line 202
    new-instance v14, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 203
    .line 204
    const-string v12, "WIRELESS_CONTROLLER"

    .line 205
    .line 206
    const/16 v13, 0xe0

    .line 207
    .line 208
    move-object/from16 v17, v15

    .line 209
    .line 210
    const/16 v15, 0x11

    .line 211
    .line 212
    invoke-direct {v14, v15, v13, v12}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(IILjava/lang/String;)V

    .line 213
    .line 214
    .line 215
    sput-object v14, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->WIRELESS_CONTROLLER:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 216
    .line 217
    new-instance v15, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 218
    .line 219
    const-string v12, "MISCELLANEOUS"

    .line 220
    .line 221
    const/16 v13, 0xef

    .line 222
    .line 223
    move-object/from16 v16, v14

    .line 224
    .line 225
    const/16 v14, 0x12

    .line 226
    .line 227
    invoke-direct {v15, v14, v13, v12}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(IILjava/lang/String;)V

    .line 228
    .line 229
    .line 230
    sput-object v15, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->MISCELLANEOUS:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 231
    .line 232
    new-instance v14, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 233
    .line 234
    const/16 v12, 0x13

    .line 235
    .line 236
    const/16 v13, 0xfe

    .line 237
    .line 238
    move-object/from16 v18, v15

    .line 239
    .line 240
    const-string v15, "APPLICATION_SPECIFIC"

    .line 241
    .line 242
    invoke-direct {v14, v12, v13, v15}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(IILjava/lang/String;)V

    .line 243
    .line 244
    .line 245
    sput-object v14, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->APPLICATION_SPECIFIC:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 246
    .line 247
    new-instance v15, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 248
    .line 249
    const/16 v12, 0x14

    .line 250
    .line 251
    const/16 v13, 0xff

    .line 252
    .line 253
    move-object/from16 v23, v14

    .line 254
    .line 255
    const-string v14, "VENDOR_SPECIFIC"

    .line 256
    .line 257
    invoke-direct {v15, v12, v13, v14}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;-><init>(IILjava/lang/String;)V

    .line 258
    .line 259
    .line 260
    sput-object v15, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->VENDOR_SPECIFIC:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 261
    .line 262
    move-object/from16 v12, v19

    .line 263
    .line 264
    move-object/from16 v19, v22

    .line 265
    .line 266
    move-object/from16 v13, v20

    .line 267
    .line 268
    move-object/from16 v20, v16

    .line 269
    .line 270
    move-object/from16 v22, v23

    .line 271
    .line 272
    move-object/from16 v14, v21

    .line 273
    .line 274
    move-object/from16 v21, v15

    .line 275
    .line 276
    move-object/from16 v16, v17

    .line 277
    .line 278
    move-object/from16 v15, v19

    .line 279
    .line 280
    move-object/from16 v17, v20

    .line 281
    .line 282
    move-object/from16 v19, v22

    .line 283
    .line 284
    move-object/from16 v20, v21

    .line 285
    .line 286
    filled-new-array/range {v0 .. v20}, [Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->$VALUES:[Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 291
    .line 292
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->mValue:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->$VALUES:[Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;->mValue:I

    .line 2
    .line 3
    return p0
.end method
