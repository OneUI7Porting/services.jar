.class public final Lcom/android/server/enterprise/apn/ApnSettingsPolicy;
.super Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mMDMConfigVersion:I

.field public mPendingGetApnList:Ljava/util/HashMap;


# direct methods
.method public static getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v0, p0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object v0
.end method

.method public static getTelephonyProperty(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string/jumbo v0, "ril.ICC_TYPE0"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string/jumbo v2, "ril.ICC_TYPE1"

    .line 9
    .line 10
    .line 11
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const-string v4, "0"

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-lez v0, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    move-object v1, v4

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-lez v0, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move-object v3, v4

    .line 50
    :goto_0
    move-object v1, v3

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    const/4 v1, 0x0

    .line 53
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    invoke-static {p0, p1, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    :cond_4
    const-string/jumbo p0, "getTelephonyProperty : "

    .line 64
    .line 65
    .line 66
    const-string p1, "ApnSettingsPolicyService"

    .line 67
    .line 68
    invoke-static {p0, v1, p1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-object v1
.end method

.method public static setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    const-string p0, ""

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :goto_0
    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    if-eqz p3, :cond_2

    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string/jumbo p1, "setColumnValue: key="

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, " value="

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string p1, "ApnSettingsPolicyService"

    .line 49
    .line 50
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public static validateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final declared-synchronized addUpdateApn(Lcom/samsung/android/knox/ContextInfo;ZLcom/samsung/android/knox/net/apn/ApnSettings;)J
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const-string v8, "addUpdateAp() : invalid ap Id "

    .line 8
    .line 9
    const-string/jumbo v9, "isNewAp - "

    .line 10
    .line 11
    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    const-string v10, "ApnSettingsPolicyService"

    .line 14
    .line 15
    new-instance v11, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v9

    .line 27
    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    const-wide/16 v9, -0x1

    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    monitor-exit p0

    .line 38
    return-wide v9

    .line 39
    :cond_0
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getId()J

    .line 40
    .line 41
    .line 42
    move-result-wide v11

    .line 43
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getUser()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v13

    .line 47
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getServer()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v14

    .line 51
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getPassword()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v15

    .line 55
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getProxy()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v16

    .line 59
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getPort()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMmsProxy()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v18

    .line 67
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMmsc()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v19

    .line 71
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getType()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v20

    .line 75
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getAuthType()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v21

    .line 83
    invoke-static/range {v21 .. v21}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getApn()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v21

    .line 91
    invoke-static/range {v21 .. v21}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    if-eqz v6, :cond_2b

    .line 96
    .line 97
    if-nez v3, :cond_1

    .line 98
    .line 99
    goto/16 :goto_1e

    .line 100
    .line 101
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    const/16 v9, 0x41

    .line 106
    .line 107
    if-le v7, v9, :cond_2

    .line 108
    .line 109
    const-string v0, "ApnSettingsPolicyService"

    .line 110
    .line 111
    const-string v2, "APN name maximum length (65)"

    .line 112
    .line 113
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    .line 115
    .line 116
    monitor-exit p0

    .line 117
    :goto_0
    const-wide/16 v1, -0x1

    .line 118
    .line 119
    return-wide v1

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    goto/16 :goto_1f

    .line 122
    .line 123
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    const/16 v9, 0x78

    .line 128
    .line 129
    if-le v7, v9, :cond_3

    .line 130
    .line 131
    const-string v0, "ApnSettingsPolicyService"

    .line 132
    .line 133
    const-string v2, "APN excedes maximum length (120)"

    .line 134
    .line 135
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    .line 137
    .line 138
    monitor-exit p0

    .line 139
    goto :goto_0

    .line 140
    :cond_3
    :try_start_3
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMcc()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    invoke-static {v7}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMnc()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    invoke-static {v9}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMmsPort()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v10

    .line 160
    invoke-static {v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    move-object/from16 v22, v8

    .line 165
    .line 166
    iget-object v8, v2, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    .line 167
    .line 168
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result v23

    .line 172
    if-eqz v23, :cond_4

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_4
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    .line 177
    .line 178
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 179
    .line 180
    .line 181
    move-result v23

    .line 182
    move-object/from16 p1, v15

    .line 183
    .line 184
    sparse-switch v23, :sswitch_data_0

    .line 185
    .line 186
    .line 187
    :goto_1
    const/4 v15, -0x1

    .line 188
    goto :goto_3

    .line 189
    :sswitch_0
    const-string v15, "IPV6"

    .line 190
    .line 191
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v15

    .line 195
    if-nez v15, :cond_5

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_5
    const/4 v15, 0x2

    .line 199
    goto :goto_3

    .line 200
    :sswitch_1
    const-string v15, "IP"

    .line 201
    .line 202
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v15

    .line 206
    if-nez v15, :cond_6

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_6
    const/4 v15, 0x1

    .line 210
    goto :goto_3

    .line 211
    :sswitch_2
    const-string v15, "IPV4V6"

    .line 212
    .line 213
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v15

    .line 217
    if-nez v15, :cond_7

    .line 218
    .line 219
    :goto_2
    goto :goto_1

    .line 220
    :cond_7
    const/4 v15, 0x0

    .line 221
    :goto_3
    packed-switch v15, :pswitch_data_0

    .line 222
    .line 223
    .line 224
    :goto_4
    :try_start_4
    const-string v0, "ApnSettingsPolicyService"

    .line 225
    .line 226
    const-string v2, "Invalid protocol!"

    .line 227
    .line 228
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 229
    .line 230
    .line 231
    monitor-exit p0

    .line 232
    goto :goto_0

    .line 233
    :pswitch_0
    :try_start_5
    iget-object v15, v2, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    .line 234
    .line 235
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 236
    .line 237
    .line 238
    move-result v23

    .line 239
    if-eqz v23, :cond_8

    .line 240
    .line 241
    goto :goto_8

    .line 242
    :cond_8
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 243
    .line 244
    .line 245
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    .line 246
    .line 247
    .line 248
    move-result v23

    .line 249
    sparse-switch v23, :sswitch_data_1

    .line 250
    .line 251
    .line 252
    move-object/from16 v23, v8

    .line 253
    .line 254
    :goto_5
    const/4 v8, -0x1

    .line 255
    goto :goto_7

    .line 256
    :sswitch_3
    move-object/from16 v23, v8

    .line 257
    .line 258
    const-string v8, "IPV6"

    .line 259
    .line 260
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v8

    .line 264
    if-nez v8, :cond_9

    .line 265
    .line 266
    goto :goto_6

    .line 267
    :cond_9
    const/4 v8, 0x2

    .line 268
    goto :goto_7

    .line 269
    :sswitch_4
    move-object/from16 v23, v8

    .line 270
    .line 271
    const-string v8, "IP"

    .line 272
    .line 273
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v8

    .line 277
    if-nez v8, :cond_a

    .line 278
    .line 279
    goto :goto_6

    .line 280
    :cond_a
    const/4 v8, 0x1

    .line 281
    goto :goto_7

    .line 282
    :sswitch_5
    move-object/from16 v23, v8

    .line 283
    .line 284
    const-string v8, "IPV4V6"

    .line 285
    .line 286
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v8

    .line 290
    if-nez v8, :cond_b

    .line 291
    .line 292
    :goto_6
    goto :goto_5

    .line 293
    :cond_b
    const/4 v8, 0x0

    .line 294
    :goto_7
    packed-switch v8, :pswitch_data_1

    .line 295
    .line 296
    .line 297
    :goto_8
    :try_start_6
    const-string v0, "ApnSettingsPolicyService"

    .line 298
    .line 299
    const-string v2, "Invalid Roaming Protocol!"

    .line 300
    .line 301
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 302
    .line 303
    .line 304
    monitor-exit p0

    .line 305
    goto/16 :goto_0

    .line 306
    .line 307
    :pswitch_1
    :try_start_7
    iget-object v8, v2, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 308
    .line 309
    if-eqz v8, :cond_2a

    .line 310
    .line 311
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 312
    .line 313
    .line 314
    move-result v24

    .line 315
    sparse-switch v24, :sswitch_data_2

    .line 316
    .line 317
    .line 318
    move-object/from16 v24, v15

    .line 319
    .line 320
    :goto_9
    const/16 v17, -0x1

    .line 321
    .line 322
    goto :goto_b

    .line 323
    :sswitch_6
    move-object/from16 v24, v15

    .line 324
    .line 325
    const-string/jumbo v15, "imsi"

    .line 326
    .line 327
    .line 328
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v15

    .line 332
    if-nez v15, :cond_c

    .line 333
    .line 334
    goto :goto_a

    .line 335
    :cond_c
    const/16 v17, 0x3

    .line 336
    .line 337
    goto :goto_b

    .line 338
    :sswitch_7
    move-object/from16 v24, v15

    .line 339
    .line 340
    const-string/jumbo v15, "spn"

    .line 341
    .line 342
    .line 343
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v15

    .line 347
    if-nez v15, :cond_d

    .line 348
    .line 349
    goto :goto_a

    .line 350
    :cond_d
    const/16 v17, 0x2

    .line 351
    .line 352
    goto :goto_b

    .line 353
    :sswitch_8
    move-object/from16 v24, v15

    .line 354
    .line 355
    const-string/jumbo v15, "gid"

    .line 356
    .line 357
    .line 358
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v15

    .line 362
    if-nez v15, :cond_e

    .line 363
    .line 364
    goto :goto_a

    .line 365
    :cond_e
    const/16 v17, 0x1

    .line 366
    .line 367
    goto :goto_b

    .line 368
    :sswitch_9
    move-object/from16 v24, v15

    .line 369
    .line 370
    const-string v15, ""

    .line 371
    .line 372
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v15

    .line 376
    if-nez v15, :cond_f

    .line 377
    .line 378
    :goto_a
    goto :goto_9

    .line 379
    :cond_f
    const/16 v17, 0x0

    .line 380
    .line 381
    :goto_b
    packed-switch v17, :pswitch_data_2

    .line 382
    .line 383
    .line 384
    goto/16 :goto_1d

    .line 385
    .line 386
    :pswitch_2
    :try_start_8
    iget-object v2, v2, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;

    .line 387
    .line 388
    invoke-static {v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 392
    :try_start_9
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 393
    .line 394
    .line 395
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 396
    .line 397
    .line 398
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 399
    .line 400
    .line 401
    move-result v15

    .line 402
    if-nez v15, :cond_10

    .line 403
    .line 404
    const-string v15, "*"

    .line 405
    .line 406
    invoke-virtual {v10, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 407
    .line 408
    .line 409
    move-result v15

    .line 410
    if-eqz v15, :cond_10

    .line 411
    .line 412
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 413
    .line 414
    .line 415
    move-result v15

    .line 416
    goto :goto_c

    .line 417
    :catch_0
    move-exception v0

    .line 418
    goto/16 :goto_1a

    .line 419
    .line 420
    :cond_10
    const/4 v15, -0x1

    .line 421
    :goto_c
    const-wide/16 v25, 0x1

    .line 422
    .line 423
    move-object/from16 p3, v2

    .line 424
    .line 425
    if-nez v0, :cond_12

    .line 426
    .line 427
    cmp-long v17, v25, v11

    .line 428
    .line 429
    if-gtz v17, :cond_11

    .line 430
    .line 431
    goto :goto_e

    .line 432
    :cond_11
    :goto_d
    move-wide v10, v11

    .line 433
    goto/16 :goto_16

    .line 434
    .line 435
    :cond_12
    :goto_e
    if-eqz v7, :cond_11

    .line 436
    .line 437
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 438
    .line 439
    .line 440
    move-result v17

    .line 441
    if-eqz v17, :cond_11

    .line 442
    .line 443
    if-eqz v9, :cond_11

    .line 444
    .line 445
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 446
    .line 447
    .line 448
    move-result v17

    .line 449
    if-eqz v17, :cond_11

    .line 450
    .line 451
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 452
    .line 453
    .line 454
    move-result v17

    .line 455
    if-eqz v17, :cond_11

    .line 456
    .line 457
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 458
    .line 459
    .line 460
    move-result v17
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 461
    if-eqz v17, :cond_11

    .line 462
    .line 463
    const/4 v2, -0x1

    .line 464
    if-gt v2, v4, :cond_11

    .line 465
    .line 466
    if-gt v2, v15, :cond_11

    .line 467
    .line 468
    const/4 v2, -0x2

    .line 469
    if-gt v2, v5, :cond_11

    .line 470
    .line 471
    const/4 v2, 0x3

    .line 472
    if-ge v2, v5, :cond_13

    .line 473
    .line 474
    goto :goto_d

    .line 475
    :cond_13
    :try_start_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 476
    .line 477
    .line 478
    move-result-wide v25
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 479
    :try_start_b
    iget-object v2, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 480
    .line 481
    const-string/jumbo v15, "phone"

    .line 482
    .line 483
    .line 484
    invoke-virtual {v2, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 489
    .line 490
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    if-eqz v2, :cond_14

    .line 495
    .line 496
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 497
    .line 498
    .line 499
    move-result v15

    .line 500
    move-wide/from16 v27, v11

    .line 501
    .line 502
    const/4 v11, 0x4

    .line 503
    if-ge v11, v15, :cond_15

    .line 504
    .line 505
    const/4 v11, 0x0

    .line 506
    const/4 v12, 0x3

    .line 507
    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v11

    .line 511
    invoke-virtual {v2, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    goto :goto_f

    .line 516
    :catchall_1
    move-exception v0

    .line 517
    goto/16 :goto_15

    .line 518
    .line 519
    :catch_1
    move-exception v0

    .line 520
    goto/16 :goto_14

    .line 521
    .line 522
    :cond_14
    move-wide/from16 v27, v11

    .line 523
    .line 524
    :cond_15
    const/4 v2, 0x0

    .line 525
    const/4 v11, 0x0

    .line 526
    :goto_f
    invoke-static {v13}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v12

    .line 530
    invoke-static {v14}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v13

    .line 534
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v14

    .line 538
    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v15

    .line 542
    move-object/from16 v16, v8

    .line 543
    .line 544
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v8

    .line 548
    move-object/from16 p1, v11

    .line 549
    .line 550
    invoke-static/range {v19 .. v19}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v11

    .line 554
    move-object/from16 v18, v2

    .line 555
    .line 556
    invoke-static/range {v20 .. v20}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v2

    .line 560
    move-object/from16 v19, v2

    .line 561
    .line 562
    new-instance v2, Landroid/content/ContentValues;

    .line 563
    .line 564
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 565
    .line 566
    .line 567
    move/from16 v20, v5

    .line 568
    .line 569
    const-string/jumbo v5, "name"

    .line 570
    .line 571
    .line 572
    invoke-static {v0, v2, v5, v6}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    const-string/jumbo v5, "numeric"

    .line 576
    .line 577
    .line 578
    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v6

    .line 582
    invoke-static {v0, v2, v5, v6}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    const-string/jumbo v5, "mcc"

    .line 586
    .line 587
    .line 588
    invoke-static {v0, v2, v5, v7}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    const-string/jumbo v5, "mnc"

    .line 592
    .line 593
    .line 594
    invoke-static {v0, v2, v5, v9}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    const-string/jumbo v5, "apn"

    .line 598
    .line 599
    .line 600
    invoke-static {v0, v2, v5, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    const-string/jumbo v3, "user"

    .line 604
    .line 605
    .line 606
    invoke-static {v0, v2, v3, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    const-string/jumbo v3, "server"

    .line 610
    .line 611
    .line 612
    invoke-static {v0, v2, v3, v13}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    const-string/jumbo v3, "password"

    .line 616
    .line 617
    .line 618
    invoke-static {v0, v2, v3, v14}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    const-string/jumbo v3, "proxy"

    .line 622
    .line 623
    .line 624
    invoke-static {v0, v2, v3, v15}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    const-string/jumbo v3, "port"

    .line 628
    .line 629
    .line 630
    if-ltz v4, :cond_16

    .line 631
    .line 632
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v4

    .line 636
    goto :goto_10

    .line 637
    :cond_16
    const-string v4, ""

    .line 638
    .line 639
    :goto_10
    invoke-static {v0, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    .line 641
    .line 642
    const-string/jumbo v3, "mmsproxy"

    .line 643
    .line 644
    .line 645
    invoke-static {v0, v2, v3, v8}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    const-string/jumbo v3, "mmsport"

    .line 649
    .line 650
    .line 651
    invoke-static {v0, v2, v3, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    const-string/jumbo v3, "mmsc"

    .line 655
    .line 656
    .line 657
    invoke-static {v0, v2, v3, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    if-eqz v0, :cond_18

    .line 661
    .line 662
    const-string/jumbo v3, "authtype"

    .line 663
    .line 664
    .line 665
    move/from16 v5, v20

    .line 666
    .line 667
    const/4 v4, -0x2

    .line 668
    if-ge v4, v5, :cond_17

    .line 669
    .line 670
    const/4 v4, 0x4

    .line 671
    if-le v4, v5, :cond_17

    .line 672
    .line 673
    goto :goto_11

    .line 674
    :cond_17
    const/4 v5, -0x1

    .line 675
    :goto_11
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 676
    .line 677
    .line 678
    move-result-object v4

    .line 679
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 680
    .line 681
    .line 682
    goto :goto_12

    .line 683
    :cond_18
    move/from16 v5, v20

    .line 684
    .line 685
    if-nez v0, :cond_19

    .line 686
    .line 687
    const/4 v3, -0x2

    .line 688
    if-ge v3, v5, :cond_19

    .line 689
    .line 690
    const/4 v3, 0x4

    .line 691
    if-le v3, v5, :cond_19

    .line 692
    .line 693
    const-string/jumbo v3, "authtype"

    .line 694
    .line 695
    .line 696
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 697
    .line 698
    .line 699
    move-result-object v4

    .line 700
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 701
    .line 702
    .line 703
    :cond_19
    :goto_12
    const-string/jumbo v3, "type"

    .line 704
    .line 705
    .line 706
    move-object/from16 v4, v19

    .line 707
    .line 708
    invoke-static {v0, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    if-eqz v18, :cond_1a

    .line 712
    .line 713
    if-eqz p1, :cond_1a

    .line 714
    .line 715
    move-object/from16 v3, v18

    .line 716
    .line 717
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 718
    .line 719
    .line 720
    move-result v3

    .line 721
    if-eqz v3, :cond_1a

    .line 722
    .line 723
    move-object/from16 v11, p1

    .line 724
    .line 725
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 726
    .line 727
    .line 728
    move-result v3

    .line 729
    if-eqz v3, :cond_1a

    .line 730
    .line 731
    const-string/jumbo v3, "current"

    .line 732
    .line 733
    .line 734
    const/4 v4, 0x1

    .line 735
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 736
    .line 737
    .line 738
    move-result-object v5

    .line 739
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 740
    .line 741
    .line 742
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 743
    .line 744
    .line 745
    move-result-object v3

    .line 746
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    .line 747
    .line 748
    .line 749
    move-result v3

    .line 750
    new-instance v4, Ljava/lang/StringBuilder;

    .line 751
    .line 752
    const-string/jumbo v5, "simSlotCnt : "

    .line 753
    .line 754
    .line 755
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 759
    .line 760
    .line 761
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v4

    .line 765
    const-string v5, "ApnSettingsPolicyService"

    .line 766
    .line 767
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    .line 769
    .line 770
    const/4 v4, 0x1

    .line 771
    if-le v3, v4, :cond_1a

    .line 772
    .line 773
    const-string v3, "ApnSettingsPolicyService"

    .line 774
    .line 775
    const-string v5, "IS DUAL SIM"

    .line 776
    .line 777
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    .line 779
    .line 780
    const-string/jumbo v3, "current1"

    .line 781
    .line 782
    .line 783
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 784
    .line 785
    .line 786
    move-result-object v5

    .line 787
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 788
    .line 789
    .line 790
    :cond_1a
    const-string/jumbo v3, "edited"

    .line 791
    .line 792
    .line 793
    const/4 v4, 0x1

    .line 794
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 795
    .line 796
    .line 797
    move-result-object v4

    .line 798
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 799
    .line 800
    .line 801
    iget v3, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    .line 802
    .line 803
    const/16 v4, 0x11

    .line 804
    .line 805
    if-lt v3, v4, :cond_1b

    .line 806
    .line 807
    const-string/jumbo v3, "protocol"

    .line 808
    .line 809
    .line 810
    move-object/from16 v4, v23

    .line 811
    .line 812
    invoke-static {v0, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    const-string/jumbo v3, "roaming_protocol"

    .line 816
    .line 817
    .line 818
    move-object/from16 v4, v24

    .line 819
    .line 820
    invoke-static {v0, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    .line 822
    .line 823
    :cond_1b
    const-string/jumbo v3, "mvno_type"

    .line 824
    .line 825
    .line 826
    move-object/from16 v4, v16

    .line 827
    .line 828
    invoke-static {v0, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    .line 830
    .line 831
    const-string/jumbo v3, "mvno_match_data"

    .line 832
    .line 833
    .line 834
    move-object/from16 v4, p3

    .line 835
    .line 836
    invoke-static {v0, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    .line 838
    .line 839
    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    .line 840
    .line 841
    .line 842
    move-result v3

    .line 843
    if-lez v3, :cond_1d

    .line 844
    .line 845
    if-eqz v0, :cond_1c

    .line 846
    .line 847
    iget-object v0, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 848
    .line 849
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    sget-object v3, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 854
    .line 855
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 856
    .line 857
    .line 858
    move-result-object v0

    .line 859
    if-eqz v0, :cond_1e

    .line 860
    .line 861
    const-string v2, "ApnSettingsPolicyService"

    .line 862
    .line 863
    const-string v3, "addUpdateAp Created rowUri : "

    .line 864
    .line 865
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    .line 867
    .line 868
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    .line 869
    .line 870
    .line 871
    move-result-wide v9

    .line 872
    goto :goto_13

    .line 873
    :cond_1c
    sget-object v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 874
    .line 875
    move-wide/from16 v10, v27

    .line 876
    .line 877
    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 878
    .line 879
    .line 880
    move-result-object v0

    .line 881
    iget-object v3, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 882
    .line 883
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 884
    .line 885
    .line 886
    move-result-object v3

    .line 887
    const/4 v4, 0x0

    .line 888
    invoke-virtual {v3, v0, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 889
    .line 890
    .line 891
    move-result v2

    .line 892
    if-lez v2, :cond_1e

    .line 893
    .line 894
    const-string v2, "ApnSettingsPolicyService"

    .line 895
    .line 896
    const-string v3, "addUpdateAp Updated rowUri : "

    .line 897
    .line 898
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    .line 900
    .line 901
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    .line 902
    .line 903
    .line 904
    move-result-wide v9

    .line 905
    goto :goto_13

    .line 906
    :cond_1d
    const-string v0, "ApnSettingsPolicyService"

    .line 907
    .line 908
    const-string v2, "addUpdateAp Error: Empty dataset."

    .line 909
    .line 910
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 911
    .line 912
    .line 913
    :cond_1e
    const-wide/16 v9, -0x1

    .line 914
    .line 915
    :goto_13
    :try_start_c
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 916
    .line 917
    .line 918
    goto/16 :goto_1c

    .line 919
    .line 920
    :goto_14
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 921
    .line 922
    .line 923
    :try_start_e
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 924
    .line 925
    .line 926
    goto/16 :goto_1b

    .line 927
    .line 928
    :goto_15
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 929
    .line 930
    .line 931
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 932
    :goto_16
    if-nez v0, :cond_1f

    .line 933
    .line 934
    cmp-long v0, v25, v10

    .line 935
    .line 936
    if-lez v0, :cond_1f

    .line 937
    .line 938
    :try_start_f
    const-string v0, "ApnSettingsPolicyService"

    .line 939
    .line 940
    new-instance v2, Ljava/lang/StringBuilder;

    .line 941
    .line 942
    move-object/from16 v8, v22

    .line 943
    .line 944
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 945
    .line 946
    .line 947
    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 948
    .line 949
    .line 950
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 951
    .line 952
    .line 953
    move-result-object v2

    .line 954
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    .line 956
    .line 957
    :cond_1f
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 958
    .line 959
    .line 960
    move-result v0

    .line 961
    if-nez v0, :cond_20

    .line 962
    .line 963
    const-string v0, "ApnSettingsPolicyService"

    .line 964
    .line 965
    const-string v2, "addUpdateAp() : invalid ap name"

    .line 966
    .line 967
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    .line 969
    .line 970
    :cond_20
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 971
    .line 972
    .line 973
    move-result v0

    .line 974
    if-nez v0, :cond_21

    .line 975
    .line 976
    const-string v0, "ApnSettingsPolicyService"

    .line 977
    .line 978
    const-string v2, "addUpdateAp() : invalid ap apn"

    .line 979
    .line 980
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    .line 982
    .line 983
    :cond_21
    if-eqz v7, :cond_22

    .line 984
    .line 985
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 986
    .line 987
    .line 988
    move-result v0

    .line 989
    if-nez v0, :cond_23

    .line 990
    .line 991
    :cond_22
    const-string v0, "ApnSettingsPolicyService"

    .line 992
    .line 993
    const-string v2, "addUpdateAp() : invalid ap mcc"

    .line 994
    .line 995
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    .line 997
    .line 998
    :cond_23
    if-eqz v9, :cond_25

    .line 999
    .line 1000
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 1001
    .line 1002
    .line 1003
    move-result v0

    .line 1004
    if-nez v0, :cond_24

    .line 1005
    .line 1006
    goto :goto_18

    .line 1007
    :cond_24
    :goto_17
    const/4 v0, -0x1

    .line 1008
    goto :goto_19

    .line 1009
    :cond_25
    :goto_18
    const-string v0, "ApnSettingsPolicyService"

    .line 1010
    .line 1011
    const-string v2, "addUpdateAp() : invalid ap mnc"

    .line 1012
    .line 1013
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    .line 1015
    .line 1016
    goto :goto_17

    .line 1017
    :goto_19
    if-le v0, v4, :cond_26

    .line 1018
    .line 1019
    const-string v0, "ApnSettingsPolicyService"

    .line 1020
    .line 1021
    const-string v2, "addUpdateAp() : invalid ap port"

    .line 1022
    .line 1023
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    .line 1025
    .line 1026
    const/4 v0, -0x1

    .line 1027
    :cond_26
    if-le v0, v15, :cond_27

    .line 1028
    .line 1029
    const-string v0, "ApnSettingsPolicyService"

    .line 1030
    .line 1031
    const-string v2, "addUpdateAp() : invalid ap iMmsPort"

    .line 1032
    .line 1033
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    .line 1035
    .line 1036
    :cond_27
    const/4 v0, -0x2

    .line 1037
    if-gt v0, v5, :cond_28

    .line 1038
    .line 1039
    const/4 v0, 0x3

    .line 1040
    if-ge v0, v5, :cond_29

    .line 1041
    .line 1042
    :cond_28
    const-string v0, "ApnSettingsPolicyService"

    .line 1043
    .line 1044
    const-string v2, "addUpdateAp() : invalid ap authType"

    .line 1045
    .line 1046
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1047
    .line 1048
    .line 1049
    goto :goto_1b

    .line 1050
    :goto_1a
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1051
    .line 1052
    .line 1053
    :cond_29
    :goto_1b
    const-wide/16 v9, -0x1

    .line 1054
    .line 1055
    :goto_1c
    monitor-exit p0

    .line 1056
    return-wide v9

    .line 1057
    :cond_2a
    :goto_1d
    :try_start_11
    const-string v0, "ApnSettingsPolicyService"

    .line 1058
    .line 1059
    const-string v2, "Invalid mvno type!"

    .line 1060
    .line 1061
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 1062
    .line 1063
    .line 1064
    monitor-exit p0

    .line 1065
    goto/16 :goto_0

    .line 1066
    .line 1067
    :cond_2b
    :goto_1e
    :try_start_12
    const-string v0, "ApnSettingsPolicyService"

    .line 1068
    .line 1069
    const-string v2, "Invalid value"

    .line 1070
    .line 1071
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 1072
    .line 1073
    .line 1074
    monitor-exit p0

    .line 1075
    goto/16 :goto_0

    .line 1076
    .line 1077
    :goto_1f
    monitor-exit p0

    .line 1078
    throw v0

    .line 1079
    :sswitch_data_0
    .sparse-switch
        -0x7edefc9b -> :sswitch_2
        0x927 -> :sswitch_1
        0x226607 -> :sswitch_0
    .end sparse-switch

    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    :sswitch_data_1
    .sparse-switch
        -0x7edefc9b -> :sswitch_5
        0x927 -> :sswitch_4
        0x226607 -> :sswitch_3
    .end sparse-switch

    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_9
        0x18fc2 -> :sswitch_8
        0x1bdb1 -> :sswitch_7
        0x31627a -> :sswitch_6
    .end sparse-switch

    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final declared-synchronized deleteApn(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 5

    .line 1
    const-string/jumbo v0, "deleteAp : deleted rowCount from ApTable : "

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    const-wide/16 v3, 0x1

    .line 13
    .line 14
    cmp-long p1, v3, p2

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-lez p1, :cond_0

    .line 18
    .line 19
    const-string p1, "ApnSettingsPolicyService"

    .line 20
    .line 21
    const-string/jumbo p2, "deleteAp : apId is invalid"

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return v3

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_3

    .line 31
    :cond_0
    const/4 p1, -0x1

    .line 32
    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 33
    .line 34
    invoke-static {v4, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    iget-object p3, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-virtual {p3, p2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    const-string p2, "ApnSettingsPolicyService"

    .line 50
    .line 51
    new-instance p3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    .line 65
    .line 66
    :goto_0
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catchall_1
    move-exception p1

    .line 71
    goto :goto_2

    .line 72
    :catch_0
    move-exception p2

    .line 73
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :goto_1
    if-lez p1, :cond_1

    .line 78
    .line 79
    const/4 v3, 0x1

    .line 80
    :cond_1
    monitor-exit p0

    .line 81
    return v3

    .line 82
    :goto_2
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    .line 84
    .line 85
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 86
    :goto_3
    monitor-exit p0

    .line 87
    throw p1
.end method

.method public final enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_APN"

    .line 18
    .line 19
    .line 20
    filled-new-array {v1}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final getApnList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget-object v2, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/util/Collection;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 36
    .line 37
    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_0
    const-string v2, "ApnSettingsPolicyService"

    .line 41
    .line 42
    const-string/jumbo v3, "retrieveApnListFromDatabase"

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    new-instance v2, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 54
    .line 55
    .line 56
    move-result-wide v3

    .line 57
    const/4 v5, 0x0

    .line 58
    :try_start_0
    const-string v6, "_id"

    .line 59
    .line 60
    const-string/jumbo v7, "name"

    .line 61
    .line 62
    .line 63
    const-string/jumbo v8, "mcc"

    .line 64
    .line 65
    .line 66
    const-string/jumbo v9, "mnc"

    .line 67
    .line 68
    .line 69
    const-string/jumbo v10, "apn"

    .line 70
    .line 71
    .line 72
    const-string/jumbo v11, "user"

    .line 73
    .line 74
    .line 75
    const-string/jumbo v12, "server"

    .line 76
    .line 77
    .line 78
    const-string/jumbo v13, "password"

    .line 79
    .line 80
    .line 81
    const-string/jumbo v14, "proxy"

    .line 82
    .line 83
    .line 84
    const-string/jumbo v15, "port"

    .line 85
    .line 86
    .line 87
    const-string/jumbo v16, "mmsproxy"

    .line 88
    .line 89
    .line 90
    const-string/jumbo v17, "mmsport"

    .line 91
    .line 92
    .line 93
    const-string/jumbo v18, "mmsc"

    .line 94
    .line 95
    .line 96
    const-string/jumbo v19, "authtype"

    .line 97
    .line 98
    .line 99
    const-string/jumbo v20, "type"

    .line 100
    .line 101
    .line 102
    const-string/jumbo v21, "protocol"

    .line 103
    .line 104
    .line 105
    const-string/jumbo v22, "roaming_protocol"

    .line 106
    .line 107
    .line 108
    const-string/jumbo v23, "mvno_type"

    .line 109
    .line 110
    .line 111
    const-string/jumbo v24, "mvno_match_data"

    .line 112
    .line 113
    .line 114
    filled-new-array/range {v6 .. v24}, [Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v27

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getFirstSlotIndex()I

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getApnListUri(I)Landroid/net/Uri;

    .line 123
    .line 124
    .line 125
    move-result-object v26

    .line 126
    iget-object v6, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 127
    .line 128
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 129
    .line 130
    .line 131
    move-result-object v25

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getWhereClause()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v28

    .line 136
    const/16 v29, 0x0

    .line 137
    .line 138
    const/16 v30, 0x0

    .line 139
    .line 140
    invoke-virtual/range {v25 .. v30}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    if-eqz v5, :cond_7

    .line 145
    .line 146
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    if-eqz v6, :cond_7

    .line 151
    .line 152
    :cond_1
    new-instance v6, Lcom/samsung/android/knox/net/apn/ApnSettings;

    .line 153
    .line 154
    invoke-direct {v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v7, "_id"

    .line 158
    .line 159
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 164
    .line 165
    .line 166
    move-result-wide v7

    .line 167
    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setId(J)V

    .line 168
    .line 169
    .line 170
    const-string/jumbo v7, "name"

    .line 171
    .line 172
    .line 173
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setName(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    const-string/jumbo v7, "mcc"

    .line 181
    .line 182
    .line 183
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMcc(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const-string/jumbo v7, "mnc"

    .line 191
    .line 192
    .line 193
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMnc(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    const-string/jumbo v7, "apn"

    .line 201
    .line 202
    .line 203
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v7

    .line 207
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setApn(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    const-string/jumbo v7, "user"

    .line 211
    .line 212
    .line 213
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v7

    .line 217
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setUser(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    const-string/jumbo v7, "server"

    .line 221
    .line 222
    .line 223
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setServer(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    const-string/jumbo v7, "password"

    .line 231
    .line 232
    .line 233
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v7

    .line 237
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPassword(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    const-string/jumbo v7, "proxy"

    .line 241
    .line 242
    .line 243
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v7

    .line 247
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setProxy(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    const-string/jumbo v7, "port"

    .line 251
    .line 252
    .line 253
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 258
    .line 259
    .line 260
    move-result v8

    .line 261
    if-nez v8, :cond_2

    .line 262
    .line 263
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    move-result v7

    .line 267
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPort(I)V

    .line 268
    .line 269
    .line 270
    goto :goto_0

    .line 271
    :catchall_0
    move-exception v0

    .line 272
    goto/16 :goto_3

    .line 273
    .line 274
    :cond_2
    :goto_0
    const-string/jumbo v7, "mmsproxy"

    .line 275
    .line 276
    .line 277
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v7

    .line 281
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsProxy(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    const-string/jumbo v7, "mmsport"

    .line 285
    .line 286
    .line 287
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v7

    .line 291
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsPort(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    const-string/jumbo v7, "mmsc"

    .line 295
    .line 296
    .line 297
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsc(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    const-string/jumbo v7, "authtype"

    .line 305
    .line 306
    .line 307
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v7

    .line 311
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 312
    .line 313
    .line 314
    move-result v8

    .line 315
    if-nez v8, :cond_3

    .line 316
    .line 317
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 318
    .line 319
    .line 320
    move-result v7

    .line 321
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setAuthType(I)V

    .line 322
    .line 323
    .line 324
    :cond_3
    const-string/jumbo v7, "type"

    .line 325
    .line 326
    .line 327
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v7

    .line 331
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setType(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    iget v7, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    .line 335
    .line 336
    const/16 v8, 0x11

    .line 337
    .line 338
    if-lt v7, v8, :cond_4

    .line 339
    .line 340
    const-string/jumbo v7, "protocol"

    .line 341
    .line 342
    .line 343
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v7

    .line 347
    iput-object v7, v6, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    .line 348
    .line 349
    const-string/jumbo v7, "roaming_protocol"

    .line 350
    .line 351
    .line 352
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v7

    .line 356
    iput-object v7, v6, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    .line 357
    .line 358
    :cond_4
    const-string/jumbo v7, "mvno_type"

    .line 359
    .line 360
    .line 361
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v7

    .line 365
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 366
    .line 367
    .line 368
    move-result v8

    .line 369
    if-nez v8, :cond_5

    .line 370
    .line 371
    iput-object v7, v6, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    .line 372
    .line 373
    :cond_5
    const-string/jumbo v7, "mvno_match_data"

    .line 374
    .line 375
    .line 376
    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v7

    .line 380
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 381
    .line 382
    .line 383
    move-result v8

    .line 384
    if-nez v8, :cond_6

    .line 385
    .line 386
    iput-object v7, v6, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;

    .line 387
    .line 388
    :cond_6
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 392
    .line 393
    .line 394
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    if-nez v6, :cond_1

    .line 396
    .line 397
    :cond_7
    if-eqz v5, :cond_8

    .line 398
    .line 399
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 400
    .line 401
    .line 402
    :cond_8
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 406
    .line 407
    .line 408
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 409
    .line 410
    .line 411
    move-result v2

    .line 412
    sget v3, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->MAXIMUM_APNS_OVER_IPC:I

    .line 413
    .line 414
    const/4 v4, 0x0

    .line 415
    if-lt v2, v3, :cond_9

    .line 416
    .line 417
    iget-object v0, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    .line 418
    .line 419
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    sget v3, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->MAXIMUM_APNS_OVER_IPC:I

    .line 424
    .line 425
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 426
    .line 427
    .line 428
    move-result v5

    .line 429
    invoke-virtual {v1, v3, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 430
    .line 431
    .line 432
    move-result-object v3

    .line 433
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    sget v0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->MAXIMUM_APNS_OVER_IPC:I

    .line 437
    .line 438
    invoke-virtual {v1, v4, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    goto :goto_2

    .line 443
    :cond_9
    iget-object v0, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    .line 444
    .line 445
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    invoke-virtual {v1, v4, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    :goto_2
    return-object v0

    .line 461
    :goto_3
    if-eqz v5, :cond_a

    .line 462
    .line 463
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 464
    .line 465
    .line 466
    :cond_a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 467
    .line 468
    .line 469
    throw v0
.end method

.method public final getApnListUri(I)Landroid/net/Uri;
    .locals 3

    .line 1
    const-string/jumbo v0, "getApnListUri"

    .line 2
    .line 3
    .line 4
    const-string v1, "ApnSettingsPolicyService"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_3

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x1

    .line 24
    if-ne v0, v2, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const/4 v0, -0x1

    .line 28
    if-eq p1, v0, :cond_1

    .line 29
    .line 30
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 v1, 0x0

    .line 41
    aget p1, p1, v1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move p1, v0

    .line 45
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    :cond_2
    sget-object p0, Landroid/provider/Telephony$Carriers;->SIM_APN_URI:Landroid/net/Uri;

    .line 62
    .line 63
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    :goto_1
    const-string p0, "No SIM "

    .line 73
    .line 74
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    sget-object p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 78
    .line 79
    :goto_2
    return-object p0
.end method

.method public final getApnSettings(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/net/apn/ApnSettings;
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x1

    .line 5
    .line 6
    cmp-long p1, v0, p2

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    const-string p0, "ApnSettingsPolicyService"

    .line 12
    .line 13
    const-string/jumbo p1, "getApnSettings : apId is invalid"

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    :try_start_0
    sget-object p1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 25
    .line 26
    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    iget-object p1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v8, 0x0

    .line 40
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 41
    .line 42
    .line 43
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    if-eqz p1, :cond_6

    .line 45
    .line 46
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_6

    .line 51
    .line 52
    new-instance p2, Lcom/samsung/android/knox/net/apn/ApnSettings;

    .line 53
    .line 54
    invoke-direct {p2}, Lcom/samsung/android/knox/net/apn/ApnSettings;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string p3, "_id"

    .line 58
    .line 59
    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v3

    .line 67
    invoke-virtual {p2, v3, v4}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setId(J)V

    .line 68
    .line 69
    .line 70
    const-string/jumbo p3, "name"

    .line 71
    .line 72
    .line 73
    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setName(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string/jumbo p3, "mcc"

    .line 81
    .line 82
    .line 83
    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMcc(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string/jumbo p3, "mnc"

    .line 91
    .line 92
    .line 93
    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMnc(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string/jumbo p3, "apn"

    .line 101
    .line 102
    .line 103
    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setApn(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string/jumbo p3, "user"

    .line 111
    .line 112
    .line 113
    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setUser(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string/jumbo p3, "server"

    .line 121
    .line 122
    .line 123
    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p3

    .line 127
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setServer(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string/jumbo p3, "password"

    .line 131
    .line 132
    .line 133
    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPassword(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const-string/jumbo p3, "proxy"

    .line 141
    .line 142
    .line 143
    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p3

    .line 147
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setProxy(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string/jumbo p3, "port"

    .line 151
    .line 152
    .line 153
    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p3

    .line 157
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-nez v3, :cond_1

    .line 162
    .line 163
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result p3

    .line 167
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPort(I)V

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :catchall_0
    move-exception p0

    .line 172
    move-object v0, p1

    .line 173
    goto/16 :goto_4

    .line 174
    .line 175
    :catch_0
    move-exception p0

    .line 176
    goto/16 :goto_2

    .line 177
    .line 178
    :cond_1
    :goto_0
    const-string/jumbo p3, "mmsproxy"

    .line 179
    .line 180
    .line 181
    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p3

    .line 185
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsProxy(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    const-string/jumbo p3, "mmsport"

    .line 189
    .line 190
    .line 191
    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p3

    .line 195
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsPort(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    const-string/jumbo p3, "mmsc"

    .line 199
    .line 200
    .line 201
    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p3

    .line 205
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsc(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const-string/jumbo p3, "authtype"

    .line 209
    .line 210
    .line 211
    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p3

    .line 215
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-nez v3, :cond_2

    .line 220
    .line 221
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    move-result p3

    .line 225
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setAuthType(I)V

    .line 226
    .line 227
    .line 228
    :cond_2
    const-string/jumbo p3, "type"

    .line 229
    .line 230
    .line 231
    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p3

    .line 235
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setType(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    iget p0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    .line 239
    .line 240
    const/16 p3, 0x11

    .line 241
    .line 242
    if-lt p0, p3, :cond_3

    .line 243
    .line 244
    const-string/jumbo p0, "protocol"

    .line 245
    .line 246
    .line 247
    invoke-static {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    iput-object p0, p2, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    .line 252
    .line 253
    const-string/jumbo p0, "roaming_protocol"

    .line 254
    .line 255
    .line 256
    invoke-static {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    iput-object p0, p2, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    .line 261
    .line 262
    :cond_3
    const-string/jumbo p0, "mvno_type"

    .line 263
    .line 264
    .line 265
    invoke-static {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 270
    .line 271
    .line 272
    move-result p3

    .line 273
    if-nez p3, :cond_4

    .line 274
    .line 275
    iput-object p0, p2, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    .line 276
    .line 277
    :cond_4
    const-string/jumbo p0, "mvno_match_data"

    .line 278
    .line 279
    .line 280
    invoke-static {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 285
    .line 286
    .line 287
    move-result p3

    .line 288
    if-nez p3, :cond_5

    .line 289
    .line 290
    iput-object p0, p2, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    .line 292
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 293
    .line 294
    .line 295
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 296
    .line 297
    .line 298
    return-object p2

    .line 299
    :cond_6
    if-eqz p1, :cond_7

    .line 300
    .line 301
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 302
    .line 303
    .line 304
    :cond_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 305
    .line 306
    .line 307
    goto :goto_3

    .line 308
    :catchall_1
    move-exception p0

    .line 309
    goto :goto_4

    .line 310
    :catch_1
    move-exception p0

    .line 311
    move-object p1, v0

    .line 312
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 313
    .line 314
    .line 315
    if-eqz p1, :cond_7

    .line 316
    .line 317
    goto :goto_1

    .line 318
    :goto_3
    return-object v0

    .line 319
    :goto_4
    if-eqz v0, :cond_8

    .line 320
    .line 321
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 322
    .line 323
    .line 324
    :cond_8
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 325
    .line 326
    .line 327
    throw p0
.end method

.method public final getFirstSlotIndex()I
    .locals 6

    .line 1
    const-string/jumbo v0, "ril.ICC_TYPE0"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v1, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getTelephonyProperty(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string/jumbo v2, "ril.ICC_TYPE1"

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-static {v3, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getTelephonyProperty(ILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v4, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const-string/jumbo v5, "phone1_on"

    .line 24
    .line 25
    .line 26
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-ne v4, v3, :cond_0

    .line 31
    .line 32
    move v4, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v4, v1

    .line 35
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string/jumbo v5, "phone2_on"

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-ne p0, v3, :cond_1

    .line 49
    .line 50
    move p0, v3

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move p0, v1

    .line 53
    :goto_1
    const-string v5, "0"

    .line 54
    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    if-eqz p0, :cond_3

    .line 65
    .line 66
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-nez p0, :cond_3

    .line 71
    .line 72
    move v1, v3

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    const/4 v1, -0x1

    .line 75
    :goto_2
    const-string/jumbo p0, "getFirstSlotIndex : "

    .line 76
    .line 77
    .line 78
    const-string v0, "ApnSettingsPolicyService"

    .line 79
    .line 80
    invoke-static {v1, p0, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return v1
.end method

.method public final declared-synchronized getPreferredApn(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/apn/ApnSettings;
    .locals 12

    .line 1
    const-string/jumbo v0, "getPreferredApn Ex: "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "getPreferredApn():"

    .line 5
    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 9
    .line 10
    .line 11
    const-string v2, "ApnSettingsPolicyService"

    .line 12
    .line 13
    const-string/jumbo v3, "getPreferredApn():"

    .line 14
    .line 15
    .line 16
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    const/4 v4, 0x0

    .line 24
    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    sget-object v7, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    .line 31
    .line 32
    const-string v5, "_id"

    .line 33
    .line 34
    const-string/jumbo v8, "name"

    .line 35
    .line 36
    .line 37
    const-string/jumbo v9, "apn"

    .line 38
    .line 39
    .line 40
    filled-new-array {v5, v8, v9}, [Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    const-string/jumbo v11, "name ASC"

    .line 45
    .line 46
    .line 47
    const/4 v9, 0x0

    .line 48
    const/4 v10, 0x0

    .line 49
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 50
    .line 51
    .line 52
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 53
    if-eqz v5, :cond_0

    .line 54
    .line 55
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_0

    .line 60
    .line 61
    const-string v6, "_id"

    .line 62
    .line 63
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 68
    .line 69
    .line 70
    move-result-wide v6

    .line 71
    const-string v8, "ApnSettingsPolicyService"

    .line 72
    .line 73
    new-instance v9, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    const-wide/16 v8, 0x0

    .line 89
    .line 90
    cmp-long v1, v6, v8

    .line 91
    .line 92
    if-lez v1, :cond_0

    .line 93
    .line 94
    invoke-virtual {p0, p1, v6, v7}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getApnSettings(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/net/apn/ApnSettings;

    .line 95
    .line 96
    .line 97
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception p1

    .line 100
    move-object v4, v5

    .line 101
    goto :goto_4

    .line 102
    :catch_0
    move-exception p1

    .line 103
    goto :goto_2

    .line 104
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 105
    .line 106
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catchall_1
    move-exception p1

    .line 111
    goto :goto_5

    .line 112
    :cond_1
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :catchall_2
    move-exception p1

    .line 117
    goto :goto_4

    .line 118
    :catch_1
    move-exception p1

    .line 119
    move-object v5, v4

    .line 120
    :goto_2
    :try_start_4
    const-string v1, "ApnSettingsPolicyService"

    .line 121
    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 135
    .line 136
    .line 137
    if-eqz v5, :cond_1

    .line 138
    .line 139
    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :goto_3
    monitor-exit p0

    .line 144
    return-object v4

    .line 145
    :goto_4
    if-eqz v4, :cond_2

    .line 146
    .line 147
    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 148
    .line 149
    .line 150
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 151
    .line 152
    .line 153
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 154
    :goto_5
    monitor-exit p0

    .line 155
    throw p1
.end method

.method public final getWhereClause()Ljava/lang/String;
    .locals 9

    .line 1
    const-string/jumbo v0, "getWhereClause"

    .line 2
    .line 3
    .line 4
    const-string v1, "ApnSettingsPolicyService"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "NOT (type=\'ia\' AND (apn=\"\" OR apn IS NULL))"

    .line 12
    .line 13
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const-string/jumbo v3, "ril.ICC_TYPE0"

    .line 25
    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-static {v4, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getTelephonyProperty(ILjava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    iget-object v5, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    const-string/jumbo v6, "phone1_on"

    .line 39
    .line 40
    .line 41
    const/4 v7, 0x1

    .line 42
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    const-string v6, "0"

    .line 47
    .line 48
    if-ne v5, v7, :cond_0

    .line 49
    .line 50
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_0

    .line 55
    .line 56
    move v3, v7

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move v3, v4

    .line 59
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    const-string/jumbo v8, "simSlotCnt : "

    .line 68
    .line 69
    .line 70
    invoke-static {v5, v8, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    if-le v5, v7, :cond_3

    .line 74
    .line 75
    const-string/jumbo v1, "ril.ICC_TYPE1"

    .line 76
    .line 77
    .line 78
    invoke-static {v7, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getTelephonyProperty(ILjava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget-object p0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    const-string/jumbo v5, "phone2_on"

    .line 89
    .line 90
    .line 91
    invoke-static {p0, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-ne p0, v7, :cond_1

    .line 96
    .line 97
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-nez p0, :cond_1

    .line 102
    .line 103
    move v4, v7

    .line 104
    :cond_1
    if-eqz v3, :cond_2

    .line 105
    .line 106
    if-nez v2, :cond_2

    .line 107
    .line 108
    const-string p0, " AND current = 1 "

    .line 109
    .line 110
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    if-eqz v4, :cond_4

    .line 115
    .line 116
    if-ne v2, v7, :cond_4

    .line 117
    .line 118
    const-string p0, " AND current1 = 1 "

    .line 119
    .line 120
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    if-eqz v3, :cond_4

    .line 125
    .line 126
    if-nez v2, :cond_4

    .line 127
    .line 128
    const-string p0, " AND current = 1"

    .line 129
    .line 130
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    return-object p0
.end method

.method public final isValidApnId(J)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    const-string/jumbo v3, "isValidApnId() row count : "

    .line 6
    .line 7
    .line 8
    const-string/jumbo v4, "isValidApnId: CTC card! numeric = "

    .line 9
    .line 10
    .line 11
    const-string/jumbo v5, "isValidApnId: simOp = "

    .line 12
    .line 13
    .line 14
    const-wide/16 v6, 0x0

    .line 15
    .line 16
    cmp-long v6, v6, v1

    .line 17
    .line 18
    const-string v7, "ApnSettingsPolicyService"

    .line 19
    .line 20
    const/4 v8, 0x0

    .line 21
    if-gez v6, :cond_6

    .line 22
    .line 23
    const-string/jumbo v6, "numeric"

    .line 24
    .line 25
    .line 26
    const-string/jumbo v9, "type"

    .line 27
    .line 28
    .line 29
    const-string v10, "_id"

    .line 30
    .line 31
    filled-new-array {v10, v6, v9}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v13

    .line 35
    const/4 v6, 0x0

    .line 36
    :try_start_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    iget-object v10, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    const-string/jumbo v11, "phone"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v10

    .line 49
    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 50
    .line 51
    invoke-virtual {v10, v9}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v10

    .line 55
    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    const-string/jumbo v11, "ril.simoperator"

    .line 60
    .line 61
    .line 62
    const-string v12, "ETC"

    .line 63
    .line 64
    invoke-static {v9, v11, v12}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    new-instance v12, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v5, ", numeric = "

    .line 77
    .line 78
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    const-string v5, "CTC"

    .line 92
    .line 93
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_1

    .line 98
    .line 99
    const-string/jumbo v5, "gsm.sim.cdmaoperator.numeric"

    .line 100
    .line 101
    .line 102
    const-string v10, ""

    .line 103
    .line 104
    invoke-static {v9, v5, v10}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    if-eqz v9, :cond_0

    .line 113
    .line 114
    const-string v9, "46003"

    .line 115
    .line 116
    move-object v10, v9

    .line 117
    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    goto/16 :goto_5

    .line 120
    .line 121
    :catch_0
    move-exception v0

    .line 122
    goto/16 :goto_4

    .line 123
    .line 124
    :cond_0
    move-object v10, v5

    .line 125
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v4, ", cdmaOperator = "

    .line 134
    .line 135
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    :cond_1
    sget-object v4, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 149
    .line 150
    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 151
    .line 152
    .line 153
    move-result-object v12

    .line 154
    iget-object v0, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 155
    .line 156
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 157
    .line 158
    .line 159
    move-result-object v11

    .line 160
    const/4 v15, 0x0

    .line 161
    const/16 v16, 0x0

    .line 162
    .line 163
    const/4 v14, 0x0

    .line 164
    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    if-eqz v6, :cond_2

    .line 169
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v3, " for apId : "

    .line 183
    .line 184
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 198
    .line 199
    .line 200
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    move v1, v0

    .line 202
    goto :goto_1

    .line 203
    :cond_2
    move v1, v8

    .line 204
    :goto_1
    if-eqz v1, :cond_3

    .line 205
    .line 206
    const/4 v0, 0x1

    .line 207
    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_4

    .line 216
    .line 217
    const/4 v0, 0x2

    .line 218
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    if-eqz v2, :cond_4

    .line 223
    .line 224
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    const-string/jumbo v3, "dun"

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    if-nez v2, :cond_4

    .line 236
    .line 237
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    const-string/jumbo v2, "mms"

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    if-eqz v0, :cond_3

    .line 249
    .line 250
    goto :goto_2

    .line 251
    :catch_1
    move-exception v0

    .line 252
    move v8, v1

    .line 253
    goto :goto_4

    .line 254
    :cond_3
    move v8, v1

    .line 255
    :cond_4
    :goto_2
    if-eqz v6, :cond_7

    .line 256
    .line 257
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 258
    .line 259
    .line 260
    goto :goto_6

    .line 261
    :goto_4
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    .line 263
    .line 264
    if-eqz v6, :cond_7

    .line 265
    .line 266
    goto :goto_3

    .line 267
    :goto_5
    if-eqz v6, :cond_5

    .line 268
    .line 269
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 270
    .line 271
    .line 272
    :cond_5
    throw v0

    .line 273
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    const-string/jumbo v3, "isValidApnId() : invalid apId : "

    .line 276
    .line 277
    .line 278
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    :cond_7
    :goto_6
    return v8
.end method

.method public final notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized setPreferredApn(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 6

    .line 1
    const-string/jumbo v0, "setPreferedAp() row count : "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "setPreferedAp() : invalid ap Id "

    .line 5
    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    const-wide/16 v4, 0x0

    .line 16
    .line 17
    cmp-long p1, v4, p2

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    if-lez p1, :cond_0

    .line 23
    .line 24
    :try_start_1
    const-string p1, "ApnSettingsPolicyService"

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_3

    .line 44
    :catch_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->isValidApnId(J)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    new-instance v1, Landroid/content/ContentValues;

    .line 53
    .line 54
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string/jumbo v5, "apn_id"

    .line 58
    .line 59
    .line 60
    if-nez p1, :cond_1

    .line 61
    .line 62
    const-wide/16 p2, -0x1

    .line 63
    .line 64
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v1, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    sget-object p2, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    .line 78
    .line 79
    const/4 p3, 0x0

    .line 80
    invoke-virtual {p1, p2, v1, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-lez p1, :cond_2

    .line 85
    .line 86
    const/4 v4, 0x1

    .line 87
    :cond_2
    const-string p2, "ApnSettingsPolicyService"

    .line 88
    .line 89
    new-instance p3, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_0
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :catchall_1
    move-exception p1

    .line 109
    goto :goto_4

    .line 110
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :goto_2
    monitor-exit p0

    .line 115
    return v4

    .line 116
    :goto_3
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    .line 118
    .line 119
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 120
    :goto_4
    monitor-exit p0

    .line 121
    throw p1
.end method

.method public final systemReady()V
    .locals 0

    .line 1
    return-void
.end method
