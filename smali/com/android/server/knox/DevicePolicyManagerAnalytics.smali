.class public final Lcom/android/server/knox/DevicePolicyManagerAnalytics;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final DEBUG:Z

.field public static final DPMS_COUNTABLE_EVENTS:Ljava/util/HashMap;

.field public static final DPMS_EVENTS_MAP:Ljava/util/HashMap;

.field public static final DPMS_EX_EVENTS:Ljava/util/HashMap;

.field public static final DPMS_KA_COUNTER_EVENTS_MAP:Ljava/util/HashMap;


# instance fields
.field public final context:Landroid/content/Context;

.field public final ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    const-string/jumbo v0, "ro.build.type"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string/jumbo v1, "eng"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput-boolean v0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DEBUG:Z

    .line 16
    .line 17
    new-instance v0, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_EVENTS_MAP:Ljava/util/HashMap;

    .line 23
    .line 24
    new-instance v1, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_EX_EVENTS:Ljava/util/HashMap;

    .line 30
    .line 31
    new-instance v2, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v2, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_COUNTABLE_EVENTS:Ljava/util/HashMap;

    .line 37
    .line 38
    new-instance v3, Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 41
    .line 42
    .line 43
    sput-object v3, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->DPMS_KA_COUNTER_EVENTS_MAP:Ljava/util/HashMap;

    .line 44
    .line 45
    const/16 v4, 0xd9

    .line 46
    .line 47
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const-string v5, "SET_APPLICATION_EXEMPTIONS"

    .line 52
    .line 53
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const/16 v2, 0xcc

    .line 57
    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const-string v6, "GET_ACCOUNT_AUTH_TOKEN"

    .line 63
    .line 64
    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    const/16 v7, 0x7d

    .line 68
    .line 69
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    const-string v8, "CROSS_PROFILE_APPS_GET_TARGET_USER_PROFILES"

    .line 74
    .line 75
    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    const/4 v1, 0x1

    .line 79
    const-string v9, "SET_PASSWORD_QUALITY"

    .line 80
    .line 81
    const/4 v10, 0x2

    .line 82
    const-string v11, "SET_PASSWORD_MINIMUM_LENGTH"

    .line 83
    .line 84
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const/4 v1, 0x3

    .line 88
    const-string v9, "SET_PASSWORD_MINIMUM_NUMERIC"

    .line 89
    .line 90
    const/4 v10, 0x4

    .line 91
    const-string v11, "SET_PASSWORD_MINIMUM_NON_LETTER"

    .line 92
    .line 93
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const/4 v1, 0x5

    .line 97
    const-string v9, "SET_PASSWORD_MINIMUM_LETTERS"

    .line 98
    .line 99
    const/4 v10, 0x6

    .line 100
    const-string v11, "SET_PASSWORD_MINIMUM_LOWER_CASE"

    .line 101
    .line 102
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const/4 v1, 0x7

    .line 106
    const-string v9, "SET_PASSWORD_MINIMUM_UPPER_CASE"

    .line 107
    .line 108
    const/16 v10, 0x8

    .line 109
    .line 110
    const-string v11, "SET_PASSWORD_MINIMUM_SYMBOLS"

    .line 111
    .line 112
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const/16 v1, 0x9

    .line 116
    .line 117
    const-string v9, "SET_KEYGUARD_DISABLED_FEATURES"

    .line 118
    .line 119
    const/16 v10, 0xa

    .line 120
    .line 121
    const-string v11, "LOCK_NOW"

    .line 122
    .line 123
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const/16 v1, 0xb

    .line 127
    .line 128
    const-string v9, "WIPE_DATA_WITH_REASON"

    .line 129
    .line 130
    const/16 v10, 0xc

    .line 131
    .line 132
    const-string v11, "ADD_USER_RESTRICTION"

    .line 133
    .line 134
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const/16 v1, 0xd

    .line 138
    .line 139
    const-string v9, "REMOVE_USER_RESTRICTION"

    .line 140
    .line 141
    const/16 v10, 0xe

    .line 142
    .line 143
    const-string v11, "SET_SECURE_SETTING"

    .line 144
    .line 145
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const/16 v1, 0xf

    .line 149
    .line 150
    const-string v9, "SET_SECURITY_LOGGING_ENABLED"

    .line 151
    .line 152
    const/16 v10, 0x10

    .line 153
    .line 154
    const-string v11, "RETRIEVE_SECURITY_LOGS"

    .line 155
    .line 156
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 157
    .line 158
    .line 159
    const/16 v1, 0x11

    .line 160
    .line 161
    const-string v9, "RETRIEVE_PRE_REBOOT_SECURITY_LOGS"

    .line 162
    .line 163
    const/16 v10, 0x12

    .line 164
    .line 165
    const-string v11, "SET_PERMISSION_POLICY"

    .line 166
    .line 167
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 168
    .line 169
    .line 170
    const/16 v1, 0x13

    .line 171
    .line 172
    const-string v9, "SET_PERMISSION_GRANT_STATE"

    .line 173
    .line 174
    const/16 v10, 0x14

    .line 175
    .line 176
    const-string v11, "INSTALL_KEY_PAIR"

    .line 177
    .line 178
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 179
    .line 180
    .line 181
    const/16 v1, 0x15

    .line 182
    .line 183
    const-string v9, "INSTALL_CA_CERT"

    .line 184
    .line 185
    const/16 v10, 0x16

    .line 186
    .line 187
    const-string v11, "CHOOSE_PRIVATE_KEY_ALIAS"

    .line 188
    .line 189
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const/16 v1, 0x17

    .line 193
    .line 194
    const-string v9, "REMOVE_KEY_PAIR"

    .line 195
    .line 196
    const/16 v10, 0x18

    .line 197
    .line 198
    const-string v11, "UNINSTALL_CA_CERTS"

    .line 199
    .line 200
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 201
    .line 202
    .line 203
    const/16 v1, 0x19

    .line 204
    .line 205
    const-string v9, "SET_CERT_INSTALLER_PACKAGE"

    .line 206
    .line 207
    const/16 v10, 0x1a

    .line 208
    .line 209
    const-string v11, "SET_ALWAYS_ON_VPN_PACKAGE"

    .line 210
    .line 211
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 212
    .line 213
    .line 214
    const/16 v1, 0x1b

    .line 215
    .line 216
    const-string v9, "SET_PERMITTED_INPUT_METHODS"

    .line 217
    .line 218
    const/16 v10, 0x1c

    .line 219
    .line 220
    const-string v11, "SET_PERMITTED_ACCESSIBILITY_SERVICES"

    .line 221
    .line 222
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 223
    .line 224
    .line 225
    const/16 v1, 0x1d

    .line 226
    .line 227
    const-string v9, "SET_SCREEN_CAPTURE_DISABLED"

    .line 228
    .line 229
    const/16 v10, 0x1e

    .line 230
    .line 231
    const-string v11, "SET_CAMERA_DISABLED"

    .line 232
    .line 233
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 234
    .line 235
    .line 236
    const/16 v1, 0x1f

    .line 237
    .line 238
    const-string v9, "QUERY_SUMMARY_FOR_USER"

    .line 239
    .line 240
    const/16 v10, 0x20

    .line 241
    .line 242
    const-string v11, "QUERY_SUMMARY"

    .line 243
    .line 244
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 245
    .line 246
    .line 247
    const/16 v1, 0x21

    .line 248
    .line 249
    const-string v9, "QUERY_DETAILS"

    .line 250
    .line 251
    const/16 v10, 0x22

    .line 252
    .line 253
    const-string v11, "REBOOT"

    .line 254
    .line 255
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 256
    .line 257
    .line 258
    const/16 v1, 0x23

    .line 259
    .line 260
    const-string v9, "SET_MASTER_VOLUME_MUTED"

    .line 261
    .line 262
    const/16 v10, 0x24

    .line 263
    .line 264
    const-string v11, "SET_AUTO_TIME_REQUIRED"

    .line 265
    .line 266
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 267
    .line 268
    .line 269
    const/16 v1, 0x25

    .line 270
    .line 271
    const-string v9, "SET_KEYGUARD_DISABLED"

    .line 272
    .line 273
    const/16 v10, 0x26

    .line 274
    .line 275
    const-string v11, "SET_STATUS_BAR_DISABLED"

    .line 276
    .line 277
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 278
    .line 279
    .line 280
    const/16 v1, 0x27

    .line 281
    .line 282
    const-string v9, "SET_ORGANIZATION_COLOR"

    .line 283
    .line 284
    const/16 v10, 0x28

    .line 285
    .line 286
    const-string v11, "SET_PROFILE_NAME"

    .line 287
    .line 288
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 289
    .line 290
    .line 291
    const/16 v1, 0x29

    .line 292
    .line 293
    const-string v9, "SET_USER_ICON"

    .line 294
    .line 295
    const/16 v10, 0x2a

    .line 296
    .line 297
    const-string v11, "SET_DEVICE_OWNER_LOCK_SCREEN_INFO"

    .line 298
    .line 299
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 300
    .line 301
    .line 302
    const/16 v1, 0x2b

    .line 303
    .line 304
    const-string v9, "SET_SHORT_SUPPORT_MESSAGE"

    .line 305
    .line 306
    const/16 v10, 0x2c

    .line 307
    .line 308
    const-string v11, "SET_LONG_SUPPORT_MESSAGE"

    .line 309
    .line 310
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 311
    .line 312
    .line 313
    const/16 v1, 0x2d

    .line 314
    .line 315
    const-string v9, "SET_CROSS_PROFILE_CONTACTS_SEARCH_DISABLED"

    .line 316
    .line 317
    const/16 v10, 0x2e

    .line 318
    .line 319
    const-string v11, "SET_CROSS_PROFILE_CALLER_ID_DISABLED"

    .line 320
    .line 321
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 322
    .line 323
    .line 324
    const/16 v1, 0x2f

    .line 325
    .line 326
    const-string v9, "SET_BLUETOOTH_CONTACT_SHARING_DISABLED"

    .line 327
    .line 328
    const/16 v10, 0x30

    .line 329
    .line 330
    const-string v11, "ADD_CROSS_PROFILE_INTENT_FILTER"

    .line 331
    .line 332
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 333
    .line 334
    .line 335
    const/16 v1, 0x31

    .line 336
    .line 337
    const-string v9, "ADD_CROSS_PROFILE_WIDGET_PROVIDER"

    .line 338
    .line 339
    const/16 v10, 0x32

    .line 340
    .line 341
    const-string v11, "SET_SYSTEM_UPDATE_POLICY"

    .line 342
    .line 343
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 344
    .line 345
    .line 346
    const/16 v1, 0x33

    .line 347
    .line 348
    const-string v9, "SET_LOCKTASK_MODE_ENABLED"

    .line 349
    .line 350
    const/16 v10, 0x34

    .line 351
    .line 352
    const-string v11, "ADD_PERSISTENT_PREFERRED_ACTIVITY"

    .line 353
    .line 354
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 355
    .line 356
    .line 357
    const/16 v1, 0x35

    .line 358
    .line 359
    const-string v9, "REQUEST_BUGREPORT"

    .line 360
    .line 361
    const/16 v10, 0x36

    .line 362
    .line 363
    const-string v11, "GET_WIFI_MAC_ADDRESS"

    .line 364
    .line 365
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 366
    .line 367
    .line 368
    const/16 v1, 0x37

    .line 369
    .line 370
    const-string v9, "REQUEST_QUIET_MODE_ENABLED"

    .line 371
    .line 372
    const/16 v10, 0x38

    .line 373
    .line 374
    const-string v11, "WORK_PROFILE_LOCATION_CHANGED"

    .line 375
    .line 376
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 377
    .line 378
    .line 379
    const/16 v1, 0x39

    .line 380
    .line 381
    const-string v9, "DO_USER_INFO_CLICKED"

    .line 382
    .line 383
    const/16 v10, 0x3a

    .line 384
    .line 385
    const-string v11, "TRANSFER_OWNERSHIP"

    .line 386
    .line 387
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 388
    .line 389
    .line 390
    const/16 v1, 0x3b

    .line 391
    .line 392
    const-string v9, "GENERATE_KEY_PAIR"

    .line 393
    .line 394
    const/16 v10, 0x3c

    .line 395
    .line 396
    const-string v11, "SET_KEY_PAIR_CERTIFICATE"

    .line 397
    .line 398
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 399
    .line 400
    .line 401
    const/16 v1, 0x3d

    .line 402
    .line 403
    const-string v9, "SET_KEEP_UNINSTALLED_PACKAGES"

    .line 404
    .line 405
    const/16 v10, 0x3e

    .line 406
    .line 407
    const-string v11, "SET_APPLICATION_RESTRICTIONS"

    .line 408
    .line 409
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 410
    .line 411
    .line 412
    const/16 v1, 0x3f

    .line 413
    .line 414
    const-string v9, "SET_APPLICATION_HIDDEN"

    .line 415
    .line 416
    const/16 v10, 0x40

    .line 417
    .line 418
    const-string v11, "ENABLE_SYSTEM_APP"

    .line 419
    .line 420
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 421
    .line 422
    .line 423
    const/16 v1, 0x41

    .line 424
    .line 425
    const-string v9, "ENABLE_SYSTEM_APP_WITH_INTENT"

    .line 426
    .line 427
    const/16 v10, 0x42

    .line 428
    .line 429
    const-string v11, "INSTALL_EXISTING_PACKAGE"

    .line 430
    .line 431
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 432
    .line 433
    .line 434
    const/16 v1, 0x43

    .line 435
    .line 436
    const-string v9, "SET_UNINSTALL_BLOCKED"

    .line 437
    .line 438
    const/16 v10, 0x44

    .line 439
    .line 440
    const-string v11, "SET_PACKAGES_SUSPENDED"

    .line 441
    .line 442
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 443
    .line 444
    .line 445
    const/16 v1, 0x45

    .line 446
    .line 447
    const-string v9, "ON_LOCK_TASK_MODE_ENTERING"

    .line 448
    .line 449
    const/16 v10, 0x46

    .line 450
    .line 451
    const-string v11, "SET_CROSS_PROFILE_CALENDAR_PACKAGES"

    .line 452
    .line 453
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 454
    .line 455
    .line 456
    const/16 v1, 0x48

    .line 457
    .line 458
    const-string v9, "GET_USER_PASSWORD_COMPLEXITY_LEVEL"

    .line 459
    .line 460
    const/16 v10, 0x49

    .line 461
    .line 462
    const-string v11, "INSTALL_SYSTEM_UPDATE"

    .line 463
    .line 464
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 465
    .line 466
    .line 467
    const/16 v1, 0x4a

    .line 468
    .line 469
    const-string v9, "INSTALL_SYSTEM_UPDATE_ERROR"

    .line 470
    .line 471
    const/16 v10, 0x4b

    .line 472
    .line 473
    const-string v11, "IS_MANAGED_KIOSK"

    .line 474
    .line 475
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 476
    .line 477
    .line 478
    const/16 v1, 0x4c

    .line 479
    .line 480
    const-string v9, "IS_UNATTENDED_MANAGED_KIOSK"

    .line 481
    .line 482
    const/16 v10, 0x4d

    .line 483
    .line 484
    const-string v11, "PROVISIONING_MANAGED_PROFILE_ON_FULLY_MANAGED_DEVICE"

    .line 485
    .line 486
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 487
    .line 488
    .line 489
    const/16 v1, 0x4e

    .line 490
    .line 491
    const-string v9, "PROVISIONING_PERSISTENT_DEVICE_OWNER"

    .line 492
    .line 493
    const/16 v10, 0x4f

    .line 494
    .line 495
    const-string v11, "PROVISIONING_ENTRY_POINT_NFC"

    .line 496
    .line 497
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 498
    .line 499
    .line 500
    const/16 v1, 0x50

    .line 501
    .line 502
    const-string v9, "PROVISIONING_ENTRY_POINT_QR_CODE"

    .line 503
    .line 504
    const/16 v10, 0x51

    .line 505
    .line 506
    const-string v11, "PROVISIONING_ENTRY_POINT_CLOUD_ENROLLMENT"

    .line 507
    .line 508
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 509
    .line 510
    .line 511
    const/16 v1, 0x52

    .line 512
    .line 513
    const-string v9, "PROVISIONING_ENTRY_POINT_ADB"

    .line 514
    .line 515
    const/16 v10, 0x53

    .line 516
    .line 517
    const-string v11, "PROVISIONING_ENTRY_POINT_TRUSTED_SOURCE"

    .line 518
    .line 519
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 520
    .line 521
    .line 522
    const/16 v1, 0x54

    .line 523
    .line 524
    const-string v9, "PROVISIONING_DPC_PACKAGE_NAME"

    .line 525
    .line 526
    const/16 v10, 0x55

    .line 527
    .line 528
    const-string v11, "PROVISIONING_DPC_INSTALLED_BY_PACKAGE"

    .line 529
    .line 530
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 531
    .line 532
    .line 533
    const/16 v1, 0x56

    .line 534
    .line 535
    const-string v9, "PROVISIONING_PROVISIONING_ACTIVITY_TIME_MS"

    .line 536
    .line 537
    const/16 v10, 0x57

    .line 538
    .line 539
    const-string v11, "PROVISIONING_PREPROVISIONING_ACTIVITY_TIME_MS"

    .line 540
    .line 541
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 542
    .line 543
    .line 544
    const/16 v1, 0x58

    .line 545
    .line 546
    const-string v9, "PROVISIONING_ENCRYPT_DEVICE_ACTIVITY_TIME_MS"

    .line 547
    .line 548
    const/16 v10, 0x59

    .line 549
    .line 550
    const-string v11, "PROVISIONING_WEB_ACTIVITY_TIME_MS"

    .line 551
    .line 552
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 553
    .line 554
    .line 555
    const/16 v1, 0x5d

    .line 556
    .line 557
    const-string v9, "PROVISIONING_NETWORK_TYPE"

    .line 558
    .line 559
    const/16 v10, 0x5e

    .line 560
    .line 561
    const-string v11, "PROVISIONING_ACTION"

    .line 562
    .line 563
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 564
    .line 565
    .line 566
    const/16 v1, 0x5f

    .line 567
    .line 568
    const-string v9, "PROVISIONING_EXTRAS"

    .line 569
    .line 570
    const/16 v10, 0x60

    .line 571
    .line 572
    const-string v11, "PROVISIONING_COPY_ACCOUNT_TASK_MS"

    .line 573
    .line 574
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 575
    .line 576
    .line 577
    const/16 v1, 0x61

    .line 578
    .line 579
    const-string v9, "PROVISIONING_CREATE_PROFILE_TASK_MS"

    .line 580
    .line 581
    const/16 v10, 0x62

    .line 582
    .line 583
    const-string v11, "PROVISIONING_START_PROFILE_TASK_MS"

    .line 584
    .line 585
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 586
    .line 587
    .line 588
    const/16 v1, 0x63

    .line 589
    .line 590
    const-string v9, "PROVISIONING_DOWNLOAD_PACKAGE_TASK_MS"

    .line 591
    .line 592
    const/16 v10, 0x64

    .line 593
    .line 594
    const-string v11, "PROVISIONING_INSTALL_PACKAGE_TASK_MS"

    .line 595
    .line 596
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 597
    .line 598
    .line 599
    const/16 v1, 0x65

    .line 600
    .line 601
    const-string v9, "PROVISIONING_CANCELLED"

    .line 602
    .line 603
    const/16 v10, 0x66

    .line 604
    .line 605
    const-string v11, "PROVISIONING_ERROR"

    .line 606
    .line 607
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 608
    .line 609
    .line 610
    const/16 v1, 0x67

    .line 611
    .line 612
    const-string v9, "PROVISIONING_COPY_ACCOUNT_STATUS"

    .line 613
    .line 614
    const/16 v10, 0x68

    .line 615
    .line 616
    const-string v11, "PROVISIONING_TOTAL_TASK_TIME_MS"

    .line 617
    .line 618
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 619
    .line 620
    .line 621
    const/16 v1, 0x69

    .line 622
    .line 623
    const-string v9, "PROVISIONING_SESSION_STARTED"

    .line 624
    .line 625
    const/16 v10, 0x6a

    .line 626
    .line 627
    const-string v11, "PROVISIONING_SESSION_COMPLETED"

    .line 628
    .line 629
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 630
    .line 631
    .line 632
    const/16 v1, 0x6b

    .line 633
    .line 634
    const-string v9, "PROVISIONING_TERMS_ACTIVITY_TIME_MS"

    .line 635
    .line 636
    const/16 v10, 0x6c

    .line 637
    .line 638
    const-string v11, "PROVISIONING_TERMS_COUNT"

    .line 639
    .line 640
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 641
    .line 642
    .line 643
    const/16 v1, 0x6d

    .line 644
    .line 645
    const-string v9, "PROVISIONING_TERMS_READ"

    .line 646
    .line 647
    const/16 v10, 0x6e

    .line 648
    .line 649
    const-string v11, "SEPARATE_PROFILE_CHALLENGE_CHANGED"

    .line 650
    .line 651
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 652
    .line 653
    .line 654
    const/16 v1, 0x6f

    .line 655
    .line 656
    const-string v9, "SET_GLOBAL_SETTING"

    .line 657
    .line 658
    const/16 v10, 0x70

    .line 659
    .line 660
    const-string v11, "INSTALL_PACKAGE"

    .line 661
    .line 662
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 663
    .line 664
    .line 665
    const/16 v1, 0x71

    .line 666
    .line 667
    const-string v9, "UNINSTALL_PACKAGE"

    .line 668
    .line 669
    const/16 v10, 0x72

    .line 670
    .line 671
    const-string v11, "WIFI_SERVICE_ADD_NETWORK_SUGGESTIONS"

    .line 672
    .line 673
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 674
    .line 675
    .line 676
    const/16 v1, 0x73

    .line 677
    .line 678
    const-string v9, "WIFI_SERVICE_ADD_OR_UPDATE_NETWORK"

    .line 679
    .line 680
    const/16 v10, 0x74

    .line 681
    .line 682
    const-string v11, "QUERY_SUMMARY_FOR_DEVICE"

    .line 683
    .line 684
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 685
    .line 686
    .line 687
    const/16 v1, 0x75

    .line 688
    .line 689
    const-string v9, "REMOVE_CROSS_PROFILE_WIDGET_PROVIDER"

    .line 690
    .line 691
    const/16 v10, 0x76

    .line 692
    .line 693
    const-string v11, "ESTABLISH_VPN"

    .line 694
    .line 695
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 696
    .line 697
    .line 698
    const/16 v1, 0x77

    .line 699
    .line 700
    const-string v9, "SET_NETWORK_LOGGING_ENABLED"

    .line 701
    .line 702
    const/16 v10, 0x78

    .line 703
    .line 704
    const-string v11, "RETRIEVE_NETWORK_LOGS"

    .line 705
    .line 706
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 707
    .line 708
    .line 709
    const/16 v1, 0x79

    .line 710
    .line 711
    const-string v9, "PROVISIONING_PREPARE_TOTAL_TIME_MS"

    .line 712
    .line 713
    const/16 v10, 0x7a

    .line 714
    .line 715
    const-string v11, "PROVISIONING_PREPARE_STARTED"

    .line 716
    .line 717
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 718
    .line 719
    .line 720
    const/16 v1, 0x7b

    .line 721
    .line 722
    const-string v9, "PROVISIONING_PREPARE_COMPLETED"

    .line 723
    .line 724
    const/16 v10, 0x7c

    .line 725
    .line 726
    const-string v11, "PROVISIONING_FLOW_TYPE"

    .line 727
    .line 728
    invoke-static {v1, v0, v9, v10, v11}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 729
    .line 730
    .line 731
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    const/16 v1, 0x7e

    .line 735
    .line 736
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 737
    .line 738
    .line 739
    move-result-object v1

    .line 740
    const-string v7, "CROSS_PROFILE_APPS_START_ACTIVITY_AS_USER"

    .line 741
    .line 742
    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    .line 744
    .line 745
    const/16 v1, 0x7f

    .line 746
    .line 747
    const-string v7, "SET_AUTO_TIME"

    .line 748
    .line 749
    const/16 v8, 0x80

    .line 750
    .line 751
    const-string v9, "SET_AUTO_TIME_ZONE"

    .line 752
    .line 753
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 754
    .line 755
    .line 756
    const/16 v1, 0x81

    .line 757
    .line 758
    const-string v7, "SET_USER_CONTROL_DISABLED_PACKAGES"

    .line 759
    .line 760
    const/16 v8, 0x82

    .line 761
    .line 762
    const-string v9, "SET_FACTORY_RESET_PROTECTION"

    .line 763
    .line 764
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 765
    .line 766
    .line 767
    const/16 v1, 0x83

    .line 768
    .line 769
    const-string v7, "SET_COMMON_CRITERIA_MODE"

    .line 770
    .line 771
    const/16 v8, 0x84

    .line 772
    .line 773
    const-string v9, "ALLOW_MODIFICATION_OF_ADMIN_CONFIGURED_NETWORKS"

    .line 774
    .line 775
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 776
    .line 777
    .line 778
    const/16 v1, 0x85

    .line 779
    .line 780
    const-string v7, "SET_TIME"

    .line 781
    .line 782
    const/16 v8, 0x86

    .line 783
    .line 784
    const-string v9, "SET_TIME_ZONE"

    .line 785
    .line 786
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 787
    .line 788
    .line 789
    const/16 v1, 0x87

    .line 790
    .line 791
    const-string v7, "SET_PERSONAL_APPS_SUSPENDED"

    .line 792
    .line 793
    const/16 v8, 0x88

    .line 794
    .line 795
    const-string v9, "SET_MANAGED_PROFILE_MAXIMUM_TIME_OFF"

    .line 796
    .line 797
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 798
    .line 799
    .line 800
    const/16 v1, 0x89

    .line 801
    .line 802
    const-string v7, "COMP_TO_ORG_OWNED_PO_MIGRATED"

    .line 803
    .line 804
    const/16 v8, 0x8a

    .line 805
    .line 806
    const-string v9, "SET_CROSS_PROFILE_PACKAGES"

    .line 807
    .line 808
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 809
    .line 810
    .line 811
    const/16 v1, 0x8b

    .line 812
    .line 813
    const-string v7, "SET_INTERACT_ACROSS_PROFILES_APP_OP"

    .line 814
    .line 815
    const/16 v8, 0x8c

    .line 816
    .line 817
    const-string v9, "GET_CROSS_PROFILE_PACKAGES"

    .line 818
    .line 819
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 820
    .line 821
    .line 822
    const/16 v1, 0x8d

    .line 823
    .line 824
    const-string v7, "CAN_REQUEST_INTERACT_ACROSS_PROFILES_TRUE"

    .line 825
    .line 826
    const/16 v8, 0x8e

    .line 827
    .line 828
    const-string v9, "CAN_REQUEST_INTERACT_ACROSS_PROFILES_FALSE_NO_PROFILES"

    .line 829
    .line 830
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 831
    .line 832
    .line 833
    const/16 v1, 0x8f

    .line 834
    .line 835
    const-string v7, "CAN_REQUEST_INTERACT_ACROSS_PROFILES_FALSE_WHITELIST"

    .line 836
    .line 837
    const/16 v8, 0x90

    .line 838
    .line 839
    const-string v9, "CAN_REQUEST_INTERACT_ACROSS_PROFILES_FALSE_PERMISSION"

    .line 840
    .line 841
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 842
    .line 843
    .line 844
    const/16 v1, 0x91

    .line 845
    .line 846
    const-string v7, "CAN_INTERACT_ACROSS_PROFILES_TRUE"

    .line 847
    .line 848
    const/16 v8, 0x92

    .line 849
    .line 850
    const-string v9, "CAN_INTERACT_ACROSS_PROFILES_FALSE_PERMISSION"

    .line 851
    .line 852
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 853
    .line 854
    .line 855
    const/16 v1, 0x93

    .line 856
    .line 857
    const-string v7, "CAN_INTERACT_ACROSS_PROFILES_FALSE_NO_PROFILES"

    .line 858
    .line 859
    const/16 v8, 0x94

    .line 860
    .line 861
    const-string v9, "CREATE_CROSS_PROFILE_INTENT"

    .line 862
    .line 863
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 864
    .line 865
    .line 866
    const/16 v1, 0x95

    .line 867
    .line 868
    const-string v7, "IS_MANAGED_PROFILE"

    .line 869
    .line 870
    const/16 v8, 0x96

    .line 871
    .line 872
    const-string v9, "START_ACTIVITY_BY_INTENT"

    .line 873
    .line 874
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 875
    .line 876
    .line 877
    const/16 v1, 0x97

    .line 878
    .line 879
    const-string v7, "BIND_CROSS_PROFILE_SERVICE"

    .line 880
    .line 881
    const/16 v8, 0x98

    .line 882
    .line 883
    const-string v9, "PROVISIONING_DPC_SETUP_STARTED"

    .line 884
    .line 885
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 886
    .line 887
    .line 888
    const/16 v1, 0x99

    .line 889
    .line 890
    const-string v7, "PROVISIONING_DPC_SETUP_COMPLETED"

    .line 891
    .line 892
    const/16 v8, 0x9a

    .line 893
    .line 894
    const-string v9, "PROVISIONING_ORGANIZATION_OWNED_MANAGED_PROFILE"

    .line 895
    .line 896
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 897
    .line 898
    .line 899
    const/16 v1, 0x9b

    .line 900
    .line 901
    const-string v7, "RESOLVER_CROSS_PROFILE_TARGET_OPENED"

    .line 902
    .line 903
    const/16 v8, 0x9c

    .line 904
    .line 905
    const-string v9, "RESOLVER_SWITCH_TABS"

    .line 906
    .line 907
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 908
    .line 909
    .line 910
    const/16 v1, 0x9d

    .line 911
    .line 912
    const-string v7, "RESOLVER_EMPTY_STATE_WORK_APPS_DISABLED"

    .line 913
    .line 914
    const/16 v8, 0x9e

    .line 915
    .line 916
    const-string v9, "RESOLVER_EMPTY_STATE_NO_SHARING_TO_PERSONAL"

    .line 917
    .line 918
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 919
    .line 920
    .line 921
    const/16 v1, 0x9f

    .line 922
    .line 923
    const-string v7, "RESOLVER_EMPTY_STATE_NO_SHARING_TO_WORK"

    .line 924
    .line 925
    const/16 v8, 0xa0

    .line 926
    .line 927
    const-string v9, "RESOLVER_EMPTY_STATE_NO_APPS_RESOLVED"

    .line 928
    .line 929
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 930
    .line 931
    .line 932
    const/16 v1, 0xa1

    .line 933
    .line 934
    const-string v7, "RESOLVER_AUTOLAUNCH_CROSS_PROFILE_TARGET"

    .line 935
    .line 936
    const/16 v8, 0xa2

    .line 937
    .line 938
    const-string v9, "CROSS_PROFILE_SETTINGS_PAGE_LAUNCHED_FROM_APP"

    .line 939
    .line 940
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 941
    .line 942
    .line 943
    const/16 v1, 0xa3

    .line 944
    .line 945
    const-string v7, "CROSS_PROFILE_SETTINGS_PAGE_LAUNCHED_FROM_SETTINGS"

    .line 946
    .line 947
    const/16 v8, 0xa4

    .line 948
    .line 949
    const-string v9, "CROSS_PROFILE_SETTINGS_PAGE_ADMIN_RESTRICTED"

    .line 950
    .line 951
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 952
    .line 953
    .line 954
    const/16 v1, 0xa5

    .line 955
    .line 956
    const-string v7, "CROSS_PROFILE_SETTINGS_PAGE_MISSING_WORK_APP"

    .line 957
    .line 958
    const/16 v8, 0xa6

    .line 959
    .line 960
    const-string v9, "CROSS_PROFILE_SETTINGS_PAGE_MISSING_PERSONAL_APP"

    .line 961
    .line 962
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 963
    .line 964
    .line 965
    const/16 v1, 0xa7

    .line 966
    .line 967
    const-string v7, "CROSS_PROFILE_SETTINGS_PAGE_MISSING_INSTALL_BANNER_INTENT"

    .line 968
    .line 969
    const/16 v8, 0xa8

    .line 970
    .line 971
    const-string v9, "CROSS_PROFILE_SETTINGS_PAGE_INSTALL_BANNER_CLICKED"

    .line 972
    .line 973
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 974
    .line 975
    .line 976
    const/16 v1, 0xa9

    .line 977
    .line 978
    const-string v7, "CROSS_PROFILE_SETTINGS_PAGE_INSTALL_BANNER_NO_INTENT_CLICKED"

    .line 979
    .line 980
    const/16 v8, 0xaa

    .line 981
    .line 982
    const-string v9, "CROSS_PROFILE_SETTINGS_PAGE_USER_CONSENTED"

    .line 983
    .line 984
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 985
    .line 986
    .line 987
    const/16 v1, 0xab

    .line 988
    .line 989
    const-string v7, "CROSS_PROFILE_SETTINGS_PAGE_USER_DECLINED_CONSENT"

    .line 990
    .line 991
    const/16 v8, 0xac

    .line 992
    .line 993
    const-string v9, "CROSS_PROFILE_SETTINGS_PAGE_PERMISSION_REVOKED"

    .line 994
    .line 995
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 996
    .line 997
    .line 998
    const/16 v1, 0xad

    .line 999
    .line 1000
    const-string v7, "DOCSUI_EMPTY_STATE_NO_PERMISSION"

    .line 1001
    .line 1002
    const/16 v8, 0xae

    .line 1003
    .line 1004
    const-string v9, "DOCSUI_EMPTY_STATE_QUIET_MODE"

    .line 1005
    .line 1006
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1007
    .line 1008
    .line 1009
    const/16 v1, 0xaf

    .line 1010
    .line 1011
    const-string v7, "DOCSUI_LAUNCH_OTHER_APP"

    .line 1012
    .line 1013
    const/16 v8, 0xb0

    .line 1014
    .line 1015
    const-string v9, "DOCSUI_PICK_RESULT"

    .line 1016
    .line 1017
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1018
    .line 1019
    .line 1020
    const/16 v1, 0xb1

    .line 1021
    .line 1022
    const-string v7, "SET_PASSWORD_COMPLEXITY"

    .line 1023
    .line 1024
    const/16 v8, 0xb2

    .line 1025
    .line 1026
    const-string v9, "CREDENTIAL_MANAGEMENT_APP_REQUEST_NAME"

    .line 1027
    .line 1028
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1029
    .line 1030
    .line 1031
    const/16 v1, 0xb3

    .line 1032
    .line 1033
    const-string v7, "CREDENTIAL_MANAGEMENT_APP_REQUEST_POLICY"

    .line 1034
    .line 1035
    const/16 v8, 0xb4

    .line 1036
    .line 1037
    const-string v9, "CREDENTIAL_MANAGEMENT_APP_REQUEST_ACCEPTED"

    .line 1038
    .line 1039
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1040
    .line 1041
    .line 1042
    const/16 v1, 0xb5

    .line 1043
    .line 1044
    const-string v7, "CREDENTIAL_MANAGEMENT_APP_REQUEST_DENIED"

    .line 1045
    .line 1046
    const/16 v8, 0xb6

    .line 1047
    .line 1048
    const-string v9, "CREDENTIAL_MANAGEMENT_APP_REQUEST_FAILED"

    .line 1049
    .line 1050
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1051
    .line 1052
    .line 1053
    const/16 v1, 0xb7

    .line 1054
    .line 1055
    const-string v7, "CREDENTIAL_MANAGEMENT_APP_CREDENTIAL_FOUND_IN_POLICY"

    .line 1056
    .line 1057
    const/16 v8, 0xb8

    .line 1058
    .line 1059
    const-string v9, "CREDENTIAL_MANAGEMENT_APP_INSTALL_KEY_PAIR_FAILED"

    .line 1060
    .line 1061
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1062
    .line 1063
    .line 1064
    const/16 v1, 0xb9

    .line 1065
    .line 1066
    const-string v7, "CREDENTIAL_MANAGEMENT_APP_GENERATE_KEY_PAIR_FAILED"

    .line 1067
    .line 1068
    const/16 v8, 0xba

    .line 1069
    .line 1070
    const-string v9, "CREDENTIAL_MANAGEMENT_APP_POLICY_LOOKUP_FAILED"

    .line 1071
    .line 1072
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1073
    .line 1074
    .line 1075
    const/16 v1, 0xbb

    .line 1076
    .line 1077
    const-string v7, "CREDENTIAL_MANAGEMENT_APP_REMOVED"

    .line 1078
    .line 1079
    const/16 v8, 0xbc

    .line 1080
    .line 1081
    const-string v9, "SET_ORGANIZATION_ID"

    .line 1082
    .line 1083
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1084
    .line 1085
    .line 1086
    const/16 v1, 0xbd

    .line 1087
    .line 1088
    const-string v7, "IS_ACTIVE_PASSWORD_SUFFICIENT_FOR_DEVICE"

    .line 1089
    .line 1090
    const/16 v8, 0xbe

    .line 1091
    .line 1092
    const-string v9, "PLATFORM_PROVISIONING_COPY_ACCOUNT_MS"

    .line 1093
    .line 1094
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1095
    .line 1096
    .line 1097
    const/16 v1, 0xbf

    .line 1098
    .line 1099
    const-string v7, "PLATFORM_PROVISIONING_CREATE_PROFILE_MS"

    .line 1100
    .line 1101
    const/16 v8, 0xc0

    .line 1102
    .line 1103
    const-string v9, "PLATFORM_PROVISIONING_START_PROFILE_MS"

    .line 1104
    .line 1105
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1106
    .line 1107
    .line 1108
    const/16 v1, 0xc1

    .line 1109
    .line 1110
    const-string v7, "PLATFORM_PROVISIONING_COPY_ACCOUNT_STATUS"

    .line 1111
    .line 1112
    const/16 v8, 0xc2

    .line 1113
    .line 1114
    const-string v9, "PLATFORM_PROVISIONING_ERROR"

    .line 1115
    .line 1116
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1117
    .line 1118
    .line 1119
    const/16 v1, 0xc3

    .line 1120
    .line 1121
    const-string v7, "PROVISIONING_PROVISION_MANAGED_PROFILE_TASK_MS"

    .line 1122
    .line 1123
    const/16 v8, 0xc4

    .line 1124
    .line 1125
    const-string v9, "PROVISIONING_PROVISION_FULLY_MANAGED_DEVICE_TASK_MS"

    .line 1126
    .line 1127
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1128
    .line 1129
    .line 1130
    const/16 v1, 0xc5

    .line 1131
    .line 1132
    const-string v7, "PLATFORM_PROVISIONING_PARAM"

    .line 1133
    .line 1134
    const/16 v8, 0xc6

    .line 1135
    .line 1136
    const-string v9, "SET_USB_DATA_SIGNALING"

    .line 1137
    .line 1138
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1139
    .line 1140
    .line 1141
    const/16 v1, 0xc7

    .line 1142
    .line 1143
    const-string v7, "SET_PREFERENTIAL_NETWORK_SERVICE_ENABLED"

    .line 1144
    .line 1145
    const/16 v8, 0xc8

    .line 1146
    .line 1147
    const-string v9, "PROVISIONING_IS_LANDSCAPE"

    .line 1148
    .line 1149
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1150
    .line 1151
    .line 1152
    const/16 v1, 0xc9

    .line 1153
    .line 1154
    const-string v7, "PROVISIONING_IS_NIGHT_MODE"

    .line 1155
    .line 1156
    const/16 v8, 0xca

    .line 1157
    .line 1158
    const-string v9, "ADD_ACCOUNT"

    .line 1159
    .line 1160
    invoke-static {v1, v0, v7, v8, v9}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1161
    .line 1162
    .line 1163
    const/16 v1, 0xcb

    .line 1164
    .line 1165
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v1

    .line 1169
    const-string v7, "ADD_ACCOUNT_EXPLICITLY"

    .line 1170
    .line 1171
    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    .line 1173
    .line 1174
    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    .line 1176
    .line 1177
    const/16 v1, 0xcd

    .line 1178
    .line 1179
    const-string v2, "RESET_PASSWORD"

    .line 1180
    .line 1181
    const/16 v6, 0xce

    .line 1182
    .line 1183
    const-string v7, "RESET_PASSWORD_WITH_TOKEN"

    .line 1184
    .line 1185
    invoke-static {v1, v0, v2, v6, v7}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1186
    .line 1187
    .line 1188
    const/16 v1, 0xcf

    .line 1189
    .line 1190
    const-string v2, "ROLE_HOLDER_PROVISIONING_START"

    .line 1191
    .line 1192
    const/16 v6, 0xd0

    .line 1193
    .line 1194
    const-string v7, "ROLE_HOLDER_PROVISIONING_FINISH"

    .line 1195
    .line 1196
    invoke-static {v1, v0, v2, v6, v7}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1197
    .line 1198
    .line 1199
    const/16 v1, 0xd1

    .line 1200
    .line 1201
    const-string v2, "ROLE_HOLDER_UPDATER_UPDATE_START"

    .line 1202
    .line 1203
    const/16 v6, 0xd2

    .line 1204
    .line 1205
    const-string v7, "ROLE_HOLDER_UPDATER_UPDATE_FINISH"

    .line 1206
    .line 1207
    invoke-static {v1, v0, v2, v6, v7}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1208
    .line 1209
    .line 1210
    const/16 v1, 0xd3

    .line 1211
    .line 1212
    const-string v2, "ROLE_HOLDER_UPDATER_UPDATE_RETRY"

    .line 1213
    .line 1214
    const/16 v6, 0xd4

    .line 1215
    .line 1216
    const-string v7, "ROLE_HOLDER_UPDATER_UPDATE_FAILED"

    .line 1217
    .line 1218
    invoke-static {v1, v0, v2, v6, v7}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1219
    .line 1220
    .line 1221
    const/16 v1, 0xd5

    .line 1222
    .line 1223
    const-string v2, "PLATFORM_ROLE_HOLDER_UPDATE_START"

    .line 1224
    .line 1225
    const/16 v6, 0xd6

    .line 1226
    .line 1227
    const-string v7, "PLATFORM_ROLE_HOLDER_UPDATE_FINISHED"

    .line 1228
    .line 1229
    invoke-static {v1, v0, v2, v6, v7}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1230
    .line 1231
    .line 1232
    const/16 v1, 0xd7

    .line 1233
    .line 1234
    const-string v2, "PLATFORM_ROLE_HOLDER_UPDATE_FAILED"

    .line 1235
    .line 1236
    const/16 v6, 0xd8

    .line 1237
    .line 1238
    const-string v7, "SET_MTE_POLICY"

    .line 1239
    .line 1240
    invoke-static {v1, v0, v2, v6, v7}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 1241
    .line 1242
    .line 1243
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    .line 1245
    .line 1246
    const-string v0, "SET_APPLICATION_EXEMPTIONS_COUNT"

    .line 1247
    .line 1248
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    .line 1250
    .line 1251
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->context:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method
