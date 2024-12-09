.class public final Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public isKCClientActive:I

.field public isKSPActive:I

.field public isUserTypeAppSeparationExists:I

.field public isUserTypeSecureFolderExists:I

.field public mDAs:Landroid/util/ArrayMap;

.field public mDAsBundle:[Landroid/os/Bundle;

.field public mDPMRoleHolders:Landroid/util/ArrayMap;

.field public mDPMRoleHoldersBundle:[Landroid/os/Bundle;

.field public mDelegatedAdminContainerType:I

.field public mDelegatedAdmins:Landroid/util/ArrayMap;

.field public mDelegatedAdminsBundle:[Landroid/os/Bundle;

.field public mDeviceStatusBundle:Landroid/os/Bundle;

.field public mInternalKnoxAdminCount:I

.field public mKGClientState:Ljava/lang/String;

.field public mKnoxDACount:I

.field public mKnoxDAs:Landroid/util/ArrayMap;

.field public mKnoxDAsBundle:[Landroid/os/Bundle;

.field public mKnoxInternalAdmins:Landroid/util/ArrayMap;

.field public mKnoxInternalAdminsBundle:[Landroid/os/Bundle;

.field public mOwnerPackageName:Ljava/lang/String;

.field public mOwnerType:I

.field public mUserCount:I


# direct methods
.method public static logDataBundle(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;

    .line 2
    .line 3
    const-string v1, "KNOX_CONTAINER"

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    instance-of v3, v2, Ljava/lang/Integer;

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    check-cast v2, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    instance-of v3, v2, Ljava/lang/String;

    .line 48
    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    check-cast v2, Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalytics;->log(Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final logData()V
    .locals 5

    .line 1
    const-string v0, "DEVICE_STATUS"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->logDataBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    move v1, v0

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdminsBundle:[Landroid/os/Bundle;

    .line 11
    .line 12
    array-length v3, v2

    .line 13
    const-string v4, "DEVICE_STATUS_ADMIN_INFO"

    .line 14
    .line 15
    if-ge v1, v3, :cond_0

    .line 16
    .line 17
    aget-object v2, v2, v1

    .line 18
    .line 19
    invoke-static {v2, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->logDataBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, v0

    .line 26
    :goto_1
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHoldersBundle:[Landroid/os/Bundle;

    .line 27
    .line 28
    array-length v3, v2

    .line 29
    if-ge v1, v3, :cond_1

    .line 30
    .line 31
    aget-object v2, v2, v1

    .line 32
    .line 33
    invoke-static {v2, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->logDataBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v1, v0

    .line 40
    :goto_2
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAsBundle:[Landroid/os/Bundle;

    .line 41
    .line 42
    array-length v3, v2

    .line 43
    if-ge v1, v3, :cond_2

    .line 44
    .line 45
    aget-object v2, v2, v1

    .line 46
    .line 47
    invoke-static {v2, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->logDataBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    move v1, v0

    .line 54
    :goto_3
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAsBundle:[Landroid/os/Bundle;

    .line 55
    .line 56
    array-length v3, v2

    .line 57
    if-ge v1, v3, :cond_3

    .line 58
    .line 59
    aget-object v2, v2, v1

    .line 60
    .line 61
    invoke-static {v2, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->logDataBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_3
    :goto_4
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdminsBundle:[Landroid/os/Bundle;

    .line 68
    .line 69
    array-length v2, v1

    .line 70
    if-ge v0, v2, :cond_4

    .line 71
    .line 72
    aget-object v1, v1, v0

    .line 73
    .line 74
    invoke-static {v1, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->logDataBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    add-int/lit8 v0, v0, 0x1

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_4
    return-void
.end method

.method public final writeToBundle()V
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "OwnerType: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mOwnerType:I

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " and its packageName: "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mOwnerPackageName:Ljava/lang/String;

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    const-string v1, ""

    .line 27
    .line 28
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "EDM_KnoxAnalytics"

    .line 36
    .line 37
    invoke-static {v1, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isUserTypeSecureFolderExists:I

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    if-ne v0, v2, :cond_1

    .line 44
    .line 45
    const-string v0, "SecureFolder exists"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const-string v0, "SecureFolder does not exist"

    .line 49
    .line 50
    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isUserTypeAppSeparationExists:I

    .line 54
    .line 55
    if-ne v0, v2, :cond_2

    .line 56
    .line 57
    const-string v0, "SeparatedApps exists"

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const-string v0, "SeparatedApps does not exist"

    .line 61
    .line 62
    :goto_1
    invoke-static {v1, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v3, "Knox licensed admin count: "

    .line 68
    .line 69
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDACount:I

    .line 73
    .line 74
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v1, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v3, "Knox internal admin count: "

    .line 91
    .line 92
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mInternalKnoxAdminCount:I

    .line 96
    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v1, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Landroid/os/Bundle;

    .line 112
    .line 113
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 117
    .line 118
    const-string/jumbo v1, "ucnt"

    .line 119
    .line 120
    .line 121
    iget v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mUserCount:I

    .line 122
    .line 123
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 127
    .line 128
    const-string v1, "KLAcnt"

    .line 129
    .line 130
    iget v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDACount:I

    .line 131
    .line 132
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 136
    .line 137
    const-string/jumbo v1, "iklacnt"

    .line 138
    .line 139
    .line 140
    iget v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mInternalKnoxAdminCount:I

    .line 141
    .line 142
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 146
    .line 147
    const-string/jumbo v1, "ot"

    .line 148
    .line 149
    .line 150
    iget v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mOwnerType:I

    .line 151
    .line 152
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 156
    .line 157
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mOwnerPackageName:Ljava/lang/String;

    .line 158
    .line 159
    const-string/jumbo v3, "dapn"

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 166
    .line 167
    const-string/jumbo v1, "sa"

    .line 168
    .line 169
    .line 170
    iget v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isUserTypeAppSeparationExists:I

    .line 171
    .line 172
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 176
    .line 177
    const-string/jumbo v1, "sf"

    .line 178
    .line 179
    .line 180
    iget v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isUserTypeSecureFolderExists:I

    .line 181
    .line 182
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 186
    .line 187
    const-string/jumbo v1, "kg"

    .line 188
    .line 189
    .line 190
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKGClientState:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 196
    .line 197
    const-string/jumbo v1, "kc"

    .line 198
    .line 199
    .line 200
    iget v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isKCClientActive:I

    .line 201
    .line 202
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDeviceStatusBundle:Landroid/os/Bundle;

    .line 206
    .line 207
    const-string/jumbo v1, "ksp"

    .line 208
    .line 209
    .line 210
    iget v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->isKSPActive:I

    .line 211
    .line 212
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    .line 214
    .line 215
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdmins:Landroid/util/ArrayMap;

    .line 216
    .line 217
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    new-array v0, v0, [Landroid/os/Bundle;

    .line 222
    .line 223
    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdminsBundle:[Landroid/os/Bundle;

    .line 224
    .line 225
    const/4 v0, 0x0

    .line 226
    move v1, v0

    .line 227
    :goto_2
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdmins:Landroid/util/ArrayMap;

    .line 228
    .line 229
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    const-string/jumbo v5, "at"

    .line 234
    .line 235
    .line 236
    const-string/jumbo v6, "cTp"

    .line 237
    .line 238
    .line 239
    if-ge v1, v4, :cond_5

    .line 240
    .line 241
    new-instance v4, Landroid/os/Bundle;

    .line 242
    .line 243
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 244
    .line 245
    .line 246
    iget v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdminContainerType:I

    .line 247
    .line 248
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    .line 250
    .line 251
    const/4 v6, 0x3

    .line 252
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    .line 254
    .line 255
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdmins:Landroid/util/ArrayMap;

    .line 256
    .line 257
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    check-cast v5, Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    sget-object v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mKADelegationMapping:Ljava/util/HashMap;

    .line 267
    .line 268
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 277
    .line 278
    .line 279
    move-result v6

    .line 280
    if-eqz v6, :cond_3

    .line 281
    .line 282
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    check-cast v6, Ljava/lang/String;

    .line 287
    .line 288
    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 289
    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_3
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdmins:Landroid/util/ArrayMap;

    .line 293
    .line 294
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    check-cast v5, Ljava/util/List;

    .line 299
    .line 300
    move v6, v0

    .line 301
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 302
    .line 303
    .line 304
    move-result v7

    .line 305
    if-ge v6, v7, :cond_4

    .line 306
    .line 307
    sget-object v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mKADelegationMapping:Ljava/util/HashMap;

    .line 308
    .line 309
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v8

    .line 313
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v7

    .line 317
    check-cast v7, Ljava/lang/String;

    .line 318
    .line 319
    invoke-virtual {v4, v7, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 320
    .line 321
    .line 322
    add-int/lit8 v6, v6, 0x1

    .line 323
    .line 324
    goto :goto_4

    .line 325
    :cond_4
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDelegatedAdminsBundle:[Landroid/os/Bundle;

    .line 326
    .line 327
    aput-object v4, v5, v1

    .line 328
    .line 329
    add-int/lit8 v1, v1, 0x1

    .line 330
    .line 331
    goto :goto_2

    .line 332
    :cond_5
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHolders:Landroid/util/ArrayMap;

    .line 333
    .line 334
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    new-array v1, v1, [Landroid/os/Bundle;

    .line 339
    .line 340
    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHoldersBundle:[Landroid/os/Bundle;

    .line 341
    .line 342
    move v1, v0

    .line 343
    :goto_5
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHolders:Landroid/util/ArrayMap;

    .line 344
    .line 345
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    if-ge v1, v4, :cond_6

    .line 350
    .line 351
    new-instance v4, Landroid/os/Bundle;

    .line 352
    .line 353
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 354
    .line 355
    .line 356
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHolders:Landroid/util/ArrayMap;

    .line 357
    .line 358
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v7

    .line 362
    check-cast v7, Ljava/lang/Integer;

    .line 363
    .line 364
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 365
    .line 366
    .line 367
    move-result v7

    .line 368
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 369
    .line 370
    .line 371
    const/4 v7, 0x2

    .line 372
    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 373
    .line 374
    .line 375
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHolders:Landroid/util/ArrayMap;

    .line 376
    .line 377
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v7

    .line 381
    check-cast v7, Ljava/lang/String;

    .line 382
    .line 383
    invoke-virtual {v4, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDPMRoleHoldersBundle:[Landroid/os/Bundle;

    .line 387
    .line 388
    aput-object v4, v7, v1

    .line 389
    .line 390
    add-int/lit8 v1, v1, 0x1

    .line 391
    .line 392
    goto :goto_5

    .line 393
    :cond_6
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAs:Landroid/util/ArrayMap;

    .line 394
    .line 395
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    move v4, v0

    .line 404
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 405
    .line 406
    .line 407
    move-result v7

    .line 408
    if-eqz v7, :cond_7

    .line 409
    .line 410
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v7

    .line 414
    check-cast v7, Ljava/util/Map$Entry;

    .line 415
    .line 416
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v7

    .line 420
    check-cast v7, Ljava/util/List;

    .line 421
    .line 422
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 423
    .line 424
    .line 425
    move-result v7

    .line 426
    add-int/2addr v4, v7

    .line 427
    goto :goto_6

    .line 428
    :cond_7
    new-array v1, v4, [Landroid/os/Bundle;

    .line 429
    .line 430
    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAsBundle:[Landroid/os/Bundle;

    .line 431
    .line 432
    move v1, v0

    .line 433
    move v4, v1

    .line 434
    :goto_7
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAs:Landroid/util/ArrayMap;

    .line 435
    .line 436
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 437
    .line 438
    .line 439
    move-result v7

    .line 440
    if-ge v1, v7, :cond_9

    .line 441
    .line 442
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAs:Landroid/util/ArrayMap;

    .line 443
    .line 444
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v7

    .line 448
    check-cast v7, Ljava/lang/Integer;

    .line 449
    .line 450
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 451
    .line 452
    .line 453
    move-result v7

    .line 454
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAs:Landroid/util/ArrayMap;

    .line 455
    .line 456
    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v8

    .line 460
    check-cast v8, Ljava/util/List;

    .line 461
    .line 462
    :try_start_0
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 463
    .line 464
    .line 465
    move-result-object v8

    .line 466
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 467
    .line 468
    .line 469
    move-result v9

    .line 470
    if-eqz v9, :cond_8

    .line 471
    .line 472
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v9

    .line 476
    check-cast v9, Ljava/lang/String;

    .line 477
    .line 478
    new-instance v10, Landroid/os/Bundle;

    .line 479
    .line 480
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v10, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v10, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v10, v3, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxDAsBundle:[Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 493
    .line 494
    add-int/lit8 v11, v4, 0x1

    .line 495
    .line 496
    :try_start_1
    aput-object v10, v9, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 497
    .line 498
    move v4, v11

    .line 499
    goto :goto_8

    .line 500
    :catch_0
    move-exception v4

    .line 501
    goto :goto_9

    .line 502
    :catch_1
    move-exception v7

    .line 503
    move v11, v4

    .line 504
    move-object v4, v7

    .line 505
    :goto_9
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 506
    .line 507
    .line 508
    move v4, v11

    .line 509
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 510
    .line 511
    goto :goto_7

    .line 512
    :cond_9
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAs:Landroid/util/ArrayMap;

    .line 513
    .line 514
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    move v4, v0

    .line 523
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 524
    .line 525
    .line 526
    move-result v7

    .line 527
    if-eqz v7, :cond_a

    .line 528
    .line 529
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v7

    .line 533
    check-cast v7, Ljava/util/Map$Entry;

    .line 534
    .line 535
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v7

    .line 539
    check-cast v7, Ljava/util/List;

    .line 540
    .line 541
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 542
    .line 543
    .line 544
    move-result v7

    .line 545
    add-int/2addr v4, v7

    .line 546
    goto :goto_a

    .line 547
    :cond_a
    new-array v1, v4, [Landroid/os/Bundle;

    .line 548
    .line 549
    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAsBundle:[Landroid/os/Bundle;

    .line 550
    .line 551
    move v1, v0

    .line 552
    move v4, v1

    .line 553
    :goto_b
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAs:Landroid/util/ArrayMap;

    .line 554
    .line 555
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 556
    .line 557
    .line 558
    move-result v7

    .line 559
    if-ge v1, v7, :cond_c

    .line 560
    .line 561
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAs:Landroid/util/ArrayMap;

    .line 562
    .line 563
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v7

    .line 567
    check-cast v7, Ljava/lang/Integer;

    .line 568
    .line 569
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 570
    .line 571
    .line 572
    move-result v7

    .line 573
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAs:Landroid/util/ArrayMap;

    .line 574
    .line 575
    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v8

    .line 579
    check-cast v8, Ljava/util/List;

    .line 580
    .line 581
    :try_start_2
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 582
    .line 583
    .line 584
    move-result-object v8

    .line 585
    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 586
    .line 587
    .line 588
    move-result v9

    .line 589
    if-eqz v9, :cond_b

    .line 590
    .line 591
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v9

    .line 595
    check-cast v9, Ljava/lang/String;

    .line 596
    .line 597
    new-instance v10, Landroid/os/Bundle;

    .line 598
    .line 599
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v10, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 603
    .line 604
    .line 605
    const/4 v11, 0x4

    .line 606
    invoke-virtual {v10, v5, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v10, v3, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mDAsBundle:[Landroid/os/Bundle;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 613
    .line 614
    add-int/lit8 v11, v4, 0x1

    .line 615
    .line 616
    :try_start_3
    aput-object v10, v9, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 617
    .line 618
    move v4, v11

    .line 619
    goto :goto_c

    .line 620
    :catch_2
    move-exception v4

    .line 621
    goto :goto_d

    .line 622
    :catch_3
    move-exception v7

    .line 623
    move v11, v4

    .line 624
    move-object v4, v7

    .line 625
    :goto_d
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 626
    .line 627
    .line 628
    move v4, v11

    .line 629
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 630
    .line 631
    goto :goto_b

    .line 632
    :cond_c
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdmins:Landroid/util/ArrayMap;

    .line 633
    .line 634
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 635
    .line 636
    .line 637
    move-result-object v1

    .line 638
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 639
    .line 640
    .line 641
    move-result-object v1

    .line 642
    move v4, v0

    .line 643
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 644
    .line 645
    .line 646
    move-result v7

    .line 647
    if-eqz v7, :cond_d

    .line 648
    .line 649
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v7

    .line 653
    check-cast v7, Ljava/util/Map$Entry;

    .line 654
    .line 655
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v7

    .line 659
    check-cast v7, Ljava/util/List;

    .line 660
    .line 661
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 662
    .line 663
    .line 664
    move-result v7

    .line 665
    add-int/2addr v4, v7

    .line 666
    goto :goto_e

    .line 667
    :cond_d
    new-array v1, v4, [Landroid/os/Bundle;

    .line 668
    .line 669
    iput-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdminsBundle:[Landroid/os/Bundle;

    .line 670
    .line 671
    move v1, v0

    .line 672
    move v4, v1

    .line 673
    :goto_f
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdmins:Landroid/util/ArrayMap;

    .line 674
    .line 675
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 676
    .line 677
    .line 678
    move-result v7

    .line 679
    if-ge v1, v7, :cond_11

    .line 680
    .line 681
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdmins:Landroid/util/ArrayMap;

    .line 682
    .line 683
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    move-result-object v7

    .line 687
    check-cast v7, Ljava/lang/Integer;

    .line 688
    .line 689
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 690
    .line 691
    .line 692
    move-result v7

    .line 693
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdmins:Landroid/util/ArrayMap;

    .line 694
    .line 695
    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    move-result-object v8

    .line 699
    check-cast v8, Ljava/util/List;

    .line 700
    .line 701
    :try_start_4
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 702
    .line 703
    .line 704
    move-result-object v8

    .line 705
    :goto_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 706
    .line 707
    .line 708
    move-result v9

    .line 709
    if-eqz v9, :cond_10

    .line 710
    .line 711
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v9

    .line 715
    check-cast v9, Ljava/lang/String;

    .line 716
    .line 717
    new-instance v10, Landroid/os/Bundle;

    .line 718
    .line 719
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 720
    .line 721
    .line 722
    invoke-virtual {v10, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 723
    .line 724
    .line 725
    invoke-virtual {v10, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 726
    .line 727
    .line 728
    const-string v11, ";"

    .line 729
    .line 730
    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v9

    .line 734
    aget-object v11, v9, v0

    .line 735
    .line 736
    if-eqz v11, :cond_e

    .line 737
    .line 738
    invoke-virtual {v10, v3, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    goto :goto_11

    .line 742
    :catch_4
    move-exception v7

    .line 743
    goto :goto_12

    .line 744
    :cond_e
    :goto_11
    aget-object v9, v9, v2

    .line 745
    .line 746
    if-eqz v9, :cond_f

    .line 747
    .line 748
    const-string/jumbo v11, "state"

    .line 749
    .line 750
    .line 751
    invoke-virtual {v10, v11, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    :cond_f
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$DeviceStatus;->mKnoxInternalAdminsBundle:[Landroid/os/Bundle;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 755
    .line 756
    add-int/lit8 v11, v4, 0x1

    .line 757
    .line 758
    :try_start_5
    aput-object v10, v9, v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 759
    .line 760
    move v4, v11

    .line 761
    goto :goto_10

    .line 762
    :catch_5
    move-exception v7

    .line 763
    move v4, v11

    .line 764
    :goto_12
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 765
    .line 766
    .line 767
    :cond_10
    add-int/lit8 v1, v1, 0x1

    .line 768
    .line 769
    goto :goto_f

    .line 770
    :cond_11
    return-void
.end method
