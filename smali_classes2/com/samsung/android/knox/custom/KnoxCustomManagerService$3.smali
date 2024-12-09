.class public final Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .line 1
    const-string/jumbo p1, "telephonyui_simcard_manager_general_settings_sim2"

    .line 2
    .line 3
    .line 4
    const-string v0, "com.samsung.android.app.telephonyui"

    .line 5
    .line 6
    const-string v1, "KnoxCustomManagerService"

    .line 7
    .line 8
    const-string v2, "KNOX_CUSTOM"

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const-string v3, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 15
    .line 16
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_7

    .line 21
    .line 22
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 23
    .line 24
    sget-object v3, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getMultiWindowState()Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    const/4 v3, 0x0

    .line 31
    if-nez p2, :cond_0

    .line 32
    .line 33
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 34
    .line 35
    invoke-virtual {p2, v3}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->setMultiWindowState(Z)I

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getDeviceSpeakerEnabledStateInternal()Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    const/4 v4, 0x1

    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 48
    .line 49
    invoke-virtual {p2, v4}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->setDeviceSpeakerEnabledState(Z)I

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getProKioskState()Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-eqz p2, :cond_2

    .line 59
    .line 60
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getUsbMassStorageState()Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-eqz p2, :cond_2

    .line 67
    .line 68
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 69
    .line 70
    invoke-virtual {p2, v4}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->setUsbMassStorageState(Z)I

    .line 71
    .line 72
    .line 73
    :cond_2
    const/16 p2, 0x3e8

    .line 74
    .line 75
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 76
    .line 77
    iget-object v5, v5, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 78
    .line 79
    const-string/jumbo v6, "sealedStatusBarMode"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, p2, v3, v2, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    const/4 v6, 0x3

    .line 87
    if-ne v5, v6, :cond_3

    .line 88
    .line 89
    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 90
    .line 91
    iget-object v6, v5, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 92
    .line 93
    const-string v10, "KNOX_CUSTOM"

    .line 94
    .line 95
    const-string/jumbo v11, "statusBarMode"

    .line 96
    .line 97
    .line 98
    const/4 v8, 0x0

    .line 99
    const/16 v7, 0x3e8

    .line 100
    .line 101
    const/4 v9, 0x4

    .line 102
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 106
    .line 107
    iget-object v6, v5, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 108
    .line 109
    const-string v10, "KNOX_CUSTOM"

    .line 110
    .line 111
    const-string/jumbo v11, "sealedStatusBarMode"

    .line 112
    .line 113
    .line 114
    const/4 v8, 0x0

    .line 115
    const/16 v7, 0x3e8

    .line 116
    .line 117
    const/4 v9, -0x1

    .line 118
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    :catch_0
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 122
    .line 123
    iget-object v5, v5, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 124
    .line 125
    const-string/jumbo v6, "sealedStatusBarClockState"

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5, p2, v3, v2, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-nez v5, :cond_4

    .line 133
    .line 134
    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 135
    .line 136
    iget-object v6, v5, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 137
    .line 138
    const-string v10, "KNOX_CUSTOM"

    .line 139
    .line 140
    const-string/jumbo v11, "statusBarClockState"

    .line 141
    .line 142
    .line 143
    const/4 v8, 0x0

    .line 144
    const/16 v7, 0x3e8

    .line 145
    .line 146
    const/4 v9, 0x4

    .line 147
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 151
    .line 152
    iget-object v6, v5, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 153
    .line 154
    const-string v10, "KNOX_CUSTOM"

    .line 155
    .line 156
    const-string/jumbo v11, "sealedStatusBarClockState"

    .line 157
    .line 158
    .line 159
    const/4 v8, 0x0

    .line 160
    const/16 v7, 0x3e8

    .line 161
    .line 162
    const/4 v9, -0x1

    .line 163
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    .line 165
    .line 166
    :catch_1
    :cond_4
    :try_start_2
    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 167
    .line 168
    iget-object v5, v5, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 169
    .line 170
    const-string/jumbo v6, "sealedStatusBarIconsState"

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5, p2, v3, v2, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-nez v5, :cond_5

    .line 178
    .line 179
    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 180
    .line 181
    iget-object v6, v5, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 182
    .line 183
    const-string v10, "KNOX_CUSTOM"

    .line 184
    .line 185
    const-string/jumbo v11, "statusBarIconsState"

    .line 186
    .line 187
    .line 188
    const/4 v8, 0x0

    .line 189
    const/16 v7, 0x3e8

    .line 190
    .line 191
    const/4 v9, 0x4

    .line 192
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 193
    .line 194
    .line 195
    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 196
    .line 197
    iget-object v6, v5, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 198
    .line 199
    const-string v10, "KNOX_CUSTOM"

    .line 200
    .line 201
    const-string/jumbo v11, "sealedStatusBarIconsState"

    .line 202
    .line 203
    .line 204
    const/4 v8, 0x0

    .line 205
    const/16 v7, 0x3e8

    .line 206
    .line 207
    const/4 v9, -0x1

    .line 208
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 209
    .line 210
    .line 211
    :catch_2
    :cond_5
    :try_start_3
    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 212
    .line 213
    iget-object v5, v5, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 214
    .line 215
    const-string/jumbo v6, "sealedHardKeyIntentState"

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5, p2, v3, v2, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    move-result v5

    .line 222
    if-ne v5, v4, :cond_6

    .line 223
    .line 224
    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 225
    .line 226
    iget-object v6, v5, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 227
    .line 228
    const-string v10, "KNOX_CUSTOM"

    .line 229
    .line 230
    const-string v11, "hardKeyIntentMode"

    .line 231
    .line 232
    const/4 v8, 0x0

    .line 233
    const/16 v7, 0x3e8

    .line 234
    .line 235
    const/4 v9, 0x4

    .line 236
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 237
    .line 238
    .line 239
    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 240
    .line 241
    iget-object v6, v5, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 242
    .line 243
    const-string v10, "KNOX_CUSTOM"

    .line 244
    .line 245
    const-string/jumbo v11, "sealedHardKeyIntentState"

    .line 246
    .line 247
    .line 248
    const/4 v8, 0x0

    .line 249
    const/16 v7, 0x3e8

    .line 250
    .line 251
    const/4 v9, -0x1

    .line 252
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 253
    .line 254
    .line 255
    :catch_3
    :cond_6
    :try_start_4
    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 256
    .line 257
    iget-object v5, v5, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 258
    .line 259
    const-string v6, "adminUid"

    .line 260
    .line 261
    invoke-virtual {v5, p2, v3, v2, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 262
    .line 263
    .line 264
    goto :goto_0

    .line 265
    :catch_4
    const-string v2, "initializing KNOX_CUSTOM with default values"

    .line 266
    .line 267
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 271
    .line 272
    iget-object v5, v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 273
    .line 274
    const/4 v7, 0x0

    .line 275
    const/16 v6, 0x3e8

    .line 276
    .line 277
    const-string v9, "KNOX_CUSTOM"

    .line 278
    .line 279
    const-string v10, "adminUid"

    .line 280
    .line 281
    const/16 v8, 0x3e8

    .line 282
    .line 283
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 284
    .line 285
    .line 286
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 287
    .line 288
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->loadHardKeyReportList(I)V

    .line 289
    .line 290
    .line 291
    :try_start_5
    const-class p0, Lcom/samsung/android/knox/localservice/ApplicationRestrictionsInternal;

    .line 292
    .line 293
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    check-cast p0, Lcom/samsung/android/knox/localservice/ApplicationRestrictionsInternal;

    .line 298
    .line 299
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/knox/localservice/ApplicationRestrictionsInternal;->getApplicationRestrictionsInternal(Ljava/lang/String;I)Landroid/os/Bundle;

    .line 300
    .line 301
    .line 302
    move-result-object p2

    .line 303
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    if-eqz v2, :cond_7

    .line 308
    .line 309
    const-string/jumbo v2, "remove the deprecated key telephonyui_simcard_manager_general_settings_sim2"

    .line 310
    .line 311
    .line 312
    invoke-static {v1, v2}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p0, v0, p2, v3, v4}, Lcom/samsung/android/knox/localservice/ApplicationRestrictionsInternal;->setApplicationRestrictionsInternal(Ljava/lang/String;Landroid/os/Bundle;IZ)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 319
    .line 320
    .line 321
    :catch_5
    :cond_7
    return-void
.end method
