.class public abstract Lcom/samsung/ucm/ucmservice/EFSProperties;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final SCP_TYPES:[Ljava/lang/String;

.field public static final STORAGE_TYPES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-string v8, "SD2"

    .line 2
    .line 3
    const-string v9, "ETC"

    .line 4
    .line 5
    const-string v0, "eSE"

    .line 6
    .line 7
    const-string v1, "SIM"

    .line 8
    .line 9
    const-string v2, "SD"

    .line 10
    .line 11
    const-string v3, "eSE1"

    .line 12
    .line 13
    const-string v4, "SIM1"

    .line 14
    .line 15
    const-string v5, "SD1"

    .line 16
    .line 17
    const-string v6, "eSE2"

    .line 18
    .line 19
    const-string v7, "SIM2"

    .line 20
    .line 21
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "SCP11b"

    .line 28
    .line 29
    const-string v1, "SCPCustom"

    .line 30
    .line 31
    const-string v2, "NONE"

    .line 32
    .line 33
    const-string v3, "SCP11a"

    .line 34
    .line 35
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    .line 40
    .line 41
    return-void
.end method

.method public static clearAppletInfo()V
    .locals 5

    .line 1
    const-string v0, "deleteAppletDeletionLccmScript"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    const-string/jumbo v1, "ucm_delete_applet_lccmscript"

    .line 9
    .line 10
    .line 11
    const-string v2, "/efs/sec_efs"

    .line 12
    .line 13
    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->deleteFile(Ljava/io/File;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const-string v1, "deletePluginPackageNameFile"

    .line 21
    .line 22
    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Ljava/io/File;

    .line 26
    .line 27
    const-string/jumbo v3, "ucm_applet_pluginpackagename"

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/EFSProperties;->deleteFile(Ljava/io/File;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const-string v3, "deletePluginSigHash"

    .line 38
    .line 39
    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance v3, Ljava/io/File;

    .line 43
    .line 44
    const-string/jumbo v4, "ucm_applet_plugin_hash_of_signature"

    .line 45
    .line 46
    .line 47
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/EFSProperties;->deleteFile(Ljava/io/File;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v4, "deleteLccmScript: "

    .line 57
    .line 58
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v3, "deletePluginPackageNameFileResult: "

    .line 74
    .line 75
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v1, "deletePluginSigHashResult: "

    .line 91
    .line 92
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const-string p0, "failed to delete the existing file"

    .line 16
    .line 17
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public static deleteODEConfig()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/efs/sec_efs"

    .line 4
    .line 5
    const-string/jumbo v2, "odeConfig"

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const-string v0, "failed to delete the existing ODE config file"

    .line 24
    .line 25
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x1

    .line 31
    :cond_1
    :goto_0
    return v0
.end method

.method public static loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .locals 16

    .line 1
    const-string/jumbo v0, "read side mismatched, lenDefaultLanguage : "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "read side mismatched, lenPluginSignatureHash : "

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "read side mismatched, lenScpParamLen : "

    .line 8
    .line 9
    .line 10
    const-string/jumbo v3, "read side mismatched, lenConfiguratorDigestLen : "

    .line 11
    .line 12
    .line 13
    const-string/jumbo v4, "read side mismatched, lenConfiguratorPkgLen : "

    .line 14
    .line 15
    .line 16
    const-string/jumbo v5, "read side mismatched, lenCertLocation : "

    .line 17
    .line 18
    .line 19
    const-string/jumbo v6, "read side mismatched, lenCertAlias : "

    .line 20
    .line 21
    .line 22
    const-string/jumbo v7, "read side mismatched, lengthCsName : "

    .line 23
    .line 24
    .line 25
    const-string/jumbo v8, "read side mismatched, lengthAID : "

    .line 26
    .line 27
    .line 28
    const-string v9, "load ODE config"

    .line 29
    .line 30
    invoke-static {v9}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v9, Ljava/io/File;

    .line 34
    .line 35
    const-string v10, "/efs/sec_efs"

    .line 36
    .line 37
    const-string/jumbo v11, "odeConfig"

    .line 38
    .line 39
    .line 40
    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 44
    .line 45
    .line 46
    move-result v10

    .line 47
    if-nez v10, :cond_0

    .line 48
    .line 49
    const-string v0, "ODE config file does not exist"

    .line 50
    .line 51
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    .line 55
    .line 56
    invoke-direct {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;-><init>()V

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_0
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    .line 61
    .line 62
    invoke-direct {v10, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    :try_start_1
    new-instance v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    .line 66
    .line 67
    invoke-direct {v9}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    .line 71
    .line 72
    .line 73
    move-result v11

    .line 74
    iput v11, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    .line 75
    .line 76
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    .line 77
    .line 78
    .line 79
    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    const-string v12, ", readByteSize : "

    .line 81
    .line 82
    const-string v13, "EFSProperties"

    .line 83
    .line 84
    const/4 v14, 0x0

    .line 85
    if-eqz v11, :cond_1

    .line 86
    .line 87
    :try_start_2
    new-array v15, v11, [B

    .line 88
    .line 89
    iput-object v15, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    .line 90
    .line 91
    invoke-virtual {v10, v15, v14, v11}, Ljava/io/FileInputStream;->read([BII)I

    .line 92
    .line 93
    .line 94
    move-result v15

    .line 95
    if-eq v15, v11, :cond_1

    .line 96
    .line 97
    new-instance v14, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v14, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    move-object v1, v0

    .line 121
    goto/16 :goto_2

    .line 122
    .line 123
    :cond_1
    :goto_0
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    iput v8, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    .line 128
    .line 129
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    iput v8, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    .line 134
    .line 135
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    iput v8, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    .line 140
    .line 141
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    iput v8, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    .line 146
    .line 147
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    iput v8, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    .line 152
    .line 153
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    iput v8, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    .line 158
    .line 159
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    iput v8, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    .line 164
    .line 165
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    .line 166
    .line 167
    .line 168
    move-result v8

    .line 169
    iput v8, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    .line 170
    .line 171
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    iput v8, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    .line 176
    .line 177
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    .line 178
    .line 179
    .line 180
    move-result v8

    .line 181
    if-eqz v8, :cond_2

    .line 182
    .line 183
    new-array v11, v8, [B

    .line 184
    .line 185
    iput-object v11, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    .line 186
    .line 187
    const/4 v14, 0x0

    .line 188
    invoke-virtual {v10, v11, v14, v8}, Ljava/io/FileInputStream;->read([BII)I

    .line 189
    .line 190
    .line 191
    move-result v11

    .line 192
    if-eq v11, v8, :cond_2

    .line 193
    .line 194
    new-instance v14, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v14, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    invoke-static {v13, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    :cond_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    .line 216
    .line 217
    .line 218
    move-result v7

    .line 219
    iput v7, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAdminID:I

    .line 220
    .line 221
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    .line 222
    .line 223
    .line 224
    move-result v7

    .line 225
    iput v7, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertUserID:I

    .line 226
    .line 227
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    .line 228
    .line 229
    .line 230
    move-result v7

    .line 231
    if-eqz v7, :cond_3

    .line 232
    .line 233
    new-array v8, v7, [B

    .line 234
    .line 235
    iput-object v8, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    .line 236
    .line 237
    const/4 v11, 0x0

    .line 238
    invoke-virtual {v10, v8, v11, v7}, Ljava/io/FileInputStream;->read([BII)I

    .line 239
    .line 240
    .line 241
    move-result v8

    .line 242
    if-eq v8, v7, :cond_3

    .line 243
    .line 244
    new-instance v11, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    :cond_3
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    .line 266
    .line 267
    .line 268
    move-result v6

    .line 269
    if-eqz v6, :cond_4

    .line 270
    .line 271
    new-array v7, v6, [B

    .line 272
    .line 273
    iput-object v7, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    .line 274
    .line 275
    const/4 v8, 0x0

    .line 276
    invoke-virtual {v10, v7, v8, v6}, Ljava/io/FileInputStream;->read([BII)I

    .line 277
    .line 278
    .line 279
    move-result v7

    .line 280
    if-eq v7, v6, :cond_4

    .line 281
    .line 282
    new-instance v8, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    :cond_4
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    .line 304
    .line 305
    .line 306
    move-result v5

    .line 307
    if-eqz v5, :cond_5

    .line 308
    .line 309
    new-array v6, v5, [B

    .line 310
    .line 311
    iput-object v6, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    .line 312
    .line 313
    const/4 v7, 0x0

    .line 314
    invoke-virtual {v10, v6, v7, v5}, Ljava/io/FileInputStream;->read([BII)I

    .line 315
    .line 316
    .line 317
    move-result v6

    .line 318
    if-eq v6, v5, :cond_5

    .line 319
    .line 320
    new-instance v7, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v4

    .line 338
    invoke-static {v13, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .line 340
    .line 341
    :cond_5
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    .line 342
    .line 343
    .line 344
    move-result v4

    .line 345
    if-eqz v4, :cond_6

    .line 346
    .line 347
    new-array v5, v4, [B

    .line 348
    .line 349
    iput-object v5, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    .line 350
    .line 351
    const/4 v6, 0x0

    .line 352
    invoke-virtual {v10, v5, v6, v4}, Ljava/io/FileInputStream;->read([BII)I

    .line 353
    .line 354
    .line 355
    move-result v5

    .line 356
    if-eq v5, v4, :cond_6

    .line 357
    .line 358
    new-instance v6, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    invoke-static {v13, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .line 378
    .line 379
    :cond_6
    const/4 v3, 0x2

    .line 380
    new-array v4, v3, [B

    .line 381
    .line 382
    const/4 v5, 0x0

    .line 383
    invoke-virtual {v10, v4, v5, v3}, Ljava/io/FileInputStream;->read([BII)I

    .line 384
    .line 385
    .line 386
    move-result v6

    .line 387
    if-lt v6, v3, :cond_c

    .line 388
    .line 389
    aget-byte v3, v4, v5

    .line 390
    .line 391
    and-int/lit16 v3, v3, 0xff

    .line 392
    .line 393
    shl-int/lit8 v3, v3, 0x8

    .line 394
    .line 395
    const/4 v5, 0x1

    .line 396
    aget-byte v4, v4, v5

    .line 397
    .line 398
    and-int/lit16 v4, v4, 0xff

    .line 399
    .line 400
    or-int/2addr v3, v4

    .line 401
    if-eqz v3, :cond_7

    .line 402
    .line 403
    new-array v4, v3, [B

    .line 404
    .line 405
    iput-object v4, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    .line 406
    .line 407
    const/4 v6, 0x0

    .line 408
    invoke-virtual {v10, v4, v6, v3}, Ljava/io/FileInputStream;->read([BII)I

    .line 409
    .line 410
    .line 411
    move-result v4

    .line 412
    if-eq v4, v3, :cond_7

    .line 413
    .line 414
    new-instance v6, Ljava/lang/StringBuilder;

    .line 415
    .line 416
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    .line 434
    .line 435
    :cond_7
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    .line 436
    .line 437
    .line 438
    move-result v2

    .line 439
    if-lez v2, :cond_8

    .line 440
    .line 441
    new-array v3, v2, [B

    .line 442
    .line 443
    iput-object v3, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    .line 444
    .line 445
    const/4 v4, 0x0

    .line 446
    invoke-virtual {v10, v3, v4, v2}, Ljava/io/FileInputStream;->read([BII)I

    .line 447
    .line 448
    .line 449
    move-result v3

    .line 450
    if-eq v3, v2, :cond_8

    .line 451
    .line 452
    new-instance v4, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    .line 472
    .line 473
    :cond_8
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    .line 474
    .line 475
    .line 476
    move-result v1

    .line 477
    const/4 v2, -0x1

    .line 478
    if-ne v1, v2, :cond_9

    .line 479
    .line 480
    iput v5, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->version:I

    .line 481
    .line 482
    goto :goto_1

    .line 483
    :cond_9
    iput v1, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->version:I

    .line 484
    .line 485
    if-gt v1, v5, :cond_a

    .line 486
    .line 487
    goto :goto_1

    .line 488
    :cond_a
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    .line 489
    .line 490
    .line 491
    move-result v1

    .line 492
    if-lez v1, :cond_b

    .line 493
    .line 494
    new-array v2, v1, [B

    .line 495
    .line 496
    iput-object v2, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    .line 497
    .line 498
    const/4 v3, 0x0

    .line 499
    invoke-virtual {v10, v2, v3, v1}, Ljava/io/FileInputStream;->read([BII)I

    .line 500
    .line 501
    .line 502
    move-result v2

    .line 503
    if-eq v2, v1, :cond_b

    .line 504
    .line 505
    new-instance v3, Ljava/lang/StringBuilder;

    .line 506
    .line 507
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 524
    .line 525
    .line 526
    :cond_b
    :goto_1
    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 527
    .line 528
    .line 529
    goto :goto_5

    .line 530
    :catch_0
    move-exception v0

    .line 531
    goto :goto_4

    .line 532
    :cond_c
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    .line 533
    .line 534
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 535
    .line 536
    .line 537
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 538
    :goto_2
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 539
    .line 540
    .line 541
    goto :goto_3

    .line 542
    :catchall_1
    move-exception v0

    .line 543
    move-object v2, v0

    .line 544
    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 545
    .line 546
    .line 547
    :goto_3
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 548
    :goto_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 549
    .line 550
    .line 551
    new-instance v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    .line 552
    .line 553
    invoke-direct {v9}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;-><init>()V

    .line 554
    .line 555
    .line 556
    :goto_5
    return-object v9
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "EFSProperties"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static saveKeyguardConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z
    .locals 4

    .line 1
    const-string/jumbo v0, "save Keyguard config"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/io/File;

    .line 8
    .line 9
    const-string v1, "/efs/sec_efs"

    .line 10
    .line 11
    const-string v2, "keyguardConfig"

    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    const-string p0, "failed to delete the existing Keyguard ODE config file"

    .line 30
    .line 31
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return v2

    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    .line 37
    .line 38
    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    .line 40
    .line 41
    :try_start_1
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->csName:[B

    .line 42
    .line 43
    array-length v1, v0

    .line 44
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v0, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    :try_start_2
    array-length v1, v0

    .line 55
    if-lez v1, :cond_1

    .line 56
    .line 57
    array-length v1, v0

    .line 58
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    move-object v1, v3

    .line 67
    goto :goto_4

    .line 68
    :catch_0
    move-exception p0

    .line 69
    move-object v1, v3

    .line 70
    goto :goto_1

    .line 71
    :catch_1
    move-exception p0

    .line 72
    move-object v1, v3

    .line 73
    goto :goto_2

    .line 74
    :cond_1
    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 75
    .line 76
    .line 77
    :goto_0
    iget v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->storageType:I

    .line 78
    .line 79
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 80
    .line 81
    .line 82
    iget v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->enabledSCP:I

    .line 83
    .line 84
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 85
    .line 86
    .line 87
    iget v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMinLength:I

    .line 88
    .line 89
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 90
    .line 91
    .line 92
    iget v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMaxLength:I

    .line 93
    .line 94
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 95
    .line 96
    .line 97
    iget v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMinLength:I

    .line 98
    .line 99
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 100
    .line 101
    .line 102
    iget p0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMaxLength:I

    .line 103
    .line 104
    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    .line 106
    .line 107
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 108
    .line 109
    .line 110
    const/4 v2, 0x1

    .line 111
    goto :goto_3

    .line 112
    :catch_2
    move-exception p0

    .line 113
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :catchall_1
    move-exception p0

    .line 118
    goto :goto_4

    .line 119
    :catch_3
    move-exception p0

    .line 120
    goto :goto_1

    .line 121
    :catch_4
    move-exception p0

    .line 122
    goto :goto_2

    .line 123
    :goto_1
    :try_start_4
    const-string/jumbo v0, "saveKeyguardConfig : Exception"

    .line 124
    .line 125
    .line 126
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 130
    .line 131
    .line 132
    if-eqz v1, :cond_2

    .line 133
    .line 134
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :goto_2
    :try_start_6
    const-string/jumbo v0, "saveKeyguardConfig : IOException"

    .line 139
    .line 140
    .line 141
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 145
    .line 146
    .line 147
    if-eqz v1, :cond_2

    .line 148
    .line 149
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 150
    .line 151
    .line 152
    :cond_2
    :goto_3
    return v2

    .line 153
    :goto_4
    if-eqz v1, :cond_3

    .line 154
    .line 155
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 156
    .line 157
    .line 158
    goto :goto_5

    .line 159
    :catch_5
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 161
    .line 162
    .line 163
    :cond_3
    :goto_5
    throw p0
.end method

.method public static saveODEConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string/jumbo v2, "save ODE config"

    .line 4
    .line 5
    .line 6
    invoke-static {v2}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v2, Ljava/io/File;

    .line 10
    .line 11
    const-string v3, "/efs/sec_efs"

    .line 12
    .line 13
    const-string/jumbo v4, "odeConfig"

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    const-string p0, "failed to delete the existing ODE config file"

    .line 32
    .line 33
    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return v1

    .line 37
    :cond_0
    const/4 v3, 0x0

    .line 38
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    .line 39
    .line 40
    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 41
    .line 42
    .line 43
    :try_start_1
    iget v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    .line 44
    .line 45
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 46
    .line 47
    .line 48
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    .line 49
    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    array-length v5, v3

    .line 53
    if-lez v5, :cond_1

    .line 54
    .line 55
    array-length v3, v3

    .line 56
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 57
    .line 58
    .line 59
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    .line 60
    .line 61
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception p0

    .line 66
    move-object v3, v4

    .line 67
    goto/16 :goto_8

    .line 68
    .line 69
    :catch_1
    move-exception p0

    .line 70
    move-object v3, v4

    .line 71
    goto/16 :goto_a

    .line 72
    .line 73
    :cond_1
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 74
    .line 75
    .line 76
    :goto_0
    iget v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    .line 77
    .line 78
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 79
    .line 80
    .line 81
    iget v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    .line 82
    .line 83
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 84
    .line 85
    .line 86
    iget v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    .line 87
    .line 88
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 89
    .line 90
    .line 91
    iget v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    .line 92
    .line 93
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 94
    .line 95
    .line 96
    iget v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    .line 97
    .line 98
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 99
    .line 100
    .line 101
    iget v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    .line 102
    .line 103
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 104
    .line 105
    .line 106
    iget v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    .line 107
    .line 108
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 109
    .line 110
    .line 111
    iget v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    .line 112
    .line 113
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 114
    .line 115
    .line 116
    iget v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    .line 117
    .line 118
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 119
    .line 120
    .line 121
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    .line 122
    .line 123
    if-eqz v3, :cond_2

    .line 124
    .line 125
    array-length v5, v3

    .line 126
    if-lez v5, :cond_2

    .line 127
    .line 128
    array-length v3, v3

    .line 129
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 130
    .line 131
    .line 132
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    .line 133
    .line 134
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_2
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 139
    .line 140
    .line 141
    :goto_1
    iget v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAdminID:I

    .line 142
    .line 143
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 144
    .line 145
    .line 146
    iget v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertUserID:I

    .line 147
    .line 148
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 149
    .line 150
    .line 151
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    .line 152
    .line 153
    if-eqz v3, :cond_3

    .line 154
    .line 155
    array-length v5, v3

    .line 156
    if-lez v5, :cond_3

    .line 157
    .line 158
    array-length v3, v3

    .line 159
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 160
    .line 161
    .line 162
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    .line 163
    .line 164
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_3
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 169
    .line 170
    .line 171
    :goto_2
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    .line 172
    .line 173
    if-eqz v3, :cond_4

    .line 174
    .line 175
    array-length v5, v3

    .line 176
    if-lez v5, :cond_4

    .line 177
    .line 178
    array-length v3, v3

    .line 179
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 180
    .line 181
    .line 182
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    .line 183
    .line 184
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_4
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 189
    .line 190
    .line 191
    :goto_3
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    .line 192
    .line 193
    if-eqz v3, :cond_5

    .line 194
    .line 195
    array-length v5, v3

    .line 196
    if-lez v5, :cond_5

    .line 197
    .line 198
    array-length v3, v3

    .line 199
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 200
    .line 201
    .line 202
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    .line 203
    .line 204
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 205
    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_5
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 209
    .line 210
    .line 211
    :goto_4
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    .line 212
    .line 213
    if-eqz v3, :cond_6

    .line 214
    .line 215
    array-length v5, v3

    .line 216
    if-lez v5, :cond_6

    .line 217
    .line 218
    array-length v3, v3

    .line 219
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 220
    .line 221
    .line 222
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    .line 223
    .line 224
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 225
    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_6
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 229
    .line 230
    .line 231
    :goto_5
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    .line 232
    .line 233
    if-eqz v3, :cond_7

    .line 234
    .line 235
    array-length v5, v3

    .line 236
    if-lez v5, :cond_7

    .line 237
    .line 238
    array-length v5, v3

    .line 239
    const v6, 0xff00

    .line 240
    .line 241
    .line 242
    and-int/2addr v5, v6

    .line 243
    shr-int/lit8 v5, v5, 0x8

    .line 244
    .line 245
    int-to-byte v5, v5

    .line 246
    array-length v3, v3

    .line 247
    and-int/lit16 v3, v3, 0xff

    .line 248
    .line 249
    int-to-byte v3, v3

    .line 250
    const/4 v6, 0x2

    .line 251
    new-array v6, v6, [B

    .line 252
    .line 253
    aput-byte v5, v6, v1

    .line 254
    .line 255
    aput-byte v3, v6, v0

    .line 256
    .line 257
    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 258
    .line 259
    .line 260
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    .line 261
    .line 262
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 263
    .line 264
    .line 265
    goto :goto_6

    .line 266
    :cond_7
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 270
    .line 271
    .line 272
    :goto_6
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    .line 273
    .line 274
    if-eqz v3, :cond_8

    .line 275
    .line 276
    array-length v5, v3

    .line 277
    if-lez v5, :cond_8

    .line 278
    .line 279
    array-length v3, v3

    .line 280
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 281
    .line 282
    .line 283
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    .line 284
    .line 285
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 286
    .line 287
    .line 288
    goto :goto_7

    .line 289
    :cond_8
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 290
    .line 291
    .line 292
    :goto_7
    iget v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->version:I

    .line 293
    .line 294
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 295
    .line 296
    .line 297
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    .line 298
    .line 299
    if-eqz v3, :cond_9

    .line 300
    .line 301
    array-length v5, v3

    .line 302
    if-lez v5, :cond_9

    .line 303
    .line 304
    array-length v3, v3

    .line 305
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 306
    .line 307
    .line 308
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    .line 309
    .line 310
    invoke-virtual {v4, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 311
    .line 312
    .line 313
    goto :goto_b

    .line 314
    :catch_2
    move-exception p0

    .line 315
    goto :goto_8

    .line 316
    :catch_3
    move-exception p0

    .line 317
    goto :goto_a

    .line 318
    :goto_8
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 322
    .line 323
    .line 324
    :goto_9
    move v0, v1

    .line 325
    move-object v4, v3

    .line 326
    goto :goto_b

    .line 327
    :goto_a
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 331
    .line 332
    .line 333
    goto :goto_9

    .line 334
    :cond_9
    :goto_b
    if-eqz v4, :cond_a

    .line 335
    .line 336
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 337
    .line 338
    .line 339
    goto :goto_c

    .line 340
    :catch_4
    move-exception p0

    .line 341
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 342
    .line 343
    .line 344
    goto :goto_d

    .line 345
    :cond_a
    :goto_c
    move v1, v0

    .line 346
    :goto_d
    return v1
.end method
