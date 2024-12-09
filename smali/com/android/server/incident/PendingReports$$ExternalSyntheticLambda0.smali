.class public final synthetic Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/incident/PendingReports;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I

.field public final synthetic f$6:Landroid/os/IIncidentAuthListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/incident/PendingReports;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/incident/PendingReports;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$5:I

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$6:Landroid/os/IIncidentAuthListener;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v7, v0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/incident/PendingReports;

    .line 4
    .line 5
    iget v1, v0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$1:I

    .line 6
    .line 7
    iget-object v8, v0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v9, v0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v10, v0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    .line 12
    .line 13
    iget v11, v0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$5:I

    .line 14
    .line 15
    iget-object v12, v0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$6:Landroid/os/IIncidentAuthListener;

    .line 16
    .line 17
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const-string/jumbo v13, "approving consentless report: "

    .line 21
    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    :try_start_0
    iget-object v0, v7, Lcom/android/server/incident/PendingReports;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 26
    .line 27
    invoke-virtual {v0, v1, v8}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    const-string v0, "IncidentCompanionService"

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v3, "Calling uid "

    .line 36
    .line 37
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, " doesn\'t match package "

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    invoke-static {v12, v8}, Lcom/android/server/incident/PendingReports;->denyReportBeforeAddingRec(Landroid/os/IIncidentAuthListener;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/incident/IncidentCompanionService;->getCurrentUserIfAdmin()I

    .line 64
    .line 65
    .line 66
    move-result v14

    .line 67
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const/16 v2, -0x2710

    .line 72
    .line 73
    if-eq v14, v2, :cond_5

    .line 74
    .line 75
    iget-object v2, v7, Lcom/android/server/incident/PendingReports;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2, v0, v14}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_1

    .line 86
    .line 87
    goto/16 :goto_2

    .line 88
    .line 89
    :cond_1
    invoke-virtual {v7, v14}, Lcom/android/server/incident/PendingReports;->getApproverComponent(I)Landroid/content/ComponentName;

    .line 90
    .line 91
    .line 92
    move-result-object v15

    .line 93
    if-nez v15, :cond_2

    .line 94
    .line 95
    invoke-static {v12, v8}, Lcom/android/server/incident/PendingReports;->denyReportBeforeAddingRec(Landroid/os/IIncidentAuthListener;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_3

    .line 99
    .line 100
    :cond_2
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 101
    .line 102
    if-nez v0, :cond_3

    .line 103
    .line 104
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    .line 105
    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    :cond_3
    and-int/lit8 v0, v11, 0x2

    .line 109
    .line 110
    if-eqz v0, :cond_4

    .line 111
    .line 112
    new-instance v0, Landroid/content/AttributionSource$Builder;

    .line 113
    .line 114
    invoke-direct {v0, v1}, Landroid/content/AttributionSource$Builder;-><init>(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v8}, Landroid/content/AttributionSource$Builder;->setPackageName(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/content/AttributionSource$Builder;->build()Landroid/content/AttributionSource;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iget-object v1, v7, Lcom/android/server/incident/PendingReports;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 126
    .line 127
    const-string v2, "android.permission.CAPTURE_CONSENTLESS_BUGREPORT_ON_USERDEBUG_BUILD"

    .line 128
    .line 129
    const/4 v3, 0x0

    .line 130
    invoke-virtual {v1, v2, v0, v3}, Landroid/permission/PermissionManager;->checkPermissionForDataDelivery(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_4

    .line 135
    .line 136
    :try_start_1
    new-instance v16, Lcom/android/server/incident/PendingReports$PendingReportRec;

    .line 137
    .line 138
    move-object/from16 v0, v16

    .line 139
    .line 140
    move-object v1, v7

    .line 141
    move-object v2, v8

    .line 142
    move-object v3, v9

    .line 143
    move-object v4, v10

    .line 144
    move v5, v11

    .line 145
    move-object v6, v12

    .line 146
    invoke-direct/range {v0 .. v6}, Lcom/android/server/incident/PendingReports$PendingReportRec;-><init>(Lcom/android/server/incident/PendingReports;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V

    .line 147
    .line 148
    .line 149
    const-string v0, "IncidentCompanionService"

    .line 150
    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/incident/PendingReports$PendingReportRec;->getUri()Landroid/net/Uri;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    invoke-interface {v12}, Landroid/os/IIncidentAuthListener;->onReportApproved()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    .line 172
    .line 173
    goto/16 :goto_3

    .line 174
    .line 175
    :catch_1
    move-exception v0

    .line 176
    const-string v1, "IncidentCompanionService"

    .line 177
    .line 178
    const-string/jumbo v2, "authorizeReportImpl listener.onReportApproved RemoteException: "

    .line 179
    .line 180
    .line 181
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    .line 183
    .line 184
    :cond_4
    iget-object v13, v7, Lcom/android/server/incident/PendingReports;->mLock:Ljava/lang/Object;

    .line 185
    .line 186
    monitor-enter v13

    .line 187
    :try_start_2
    new-instance v6, Lcom/android/server/incident/PendingReports$PendingReportRec;

    .line 188
    .line 189
    move-object v0, v6

    .line 190
    move-object v1, v7

    .line 191
    move-object v2, v8

    .line 192
    move-object v3, v9

    .line 193
    move-object v4, v10

    .line 194
    move v5, v11

    .line 195
    move-object v8, v6

    .line 196
    move-object v6, v12

    .line 197
    invoke-direct/range {v0 .. v6}, Lcom/android/server/incident/PendingReports$PendingReportRec;-><init>(Lcom/android/server/incident/PendingReports;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, v7, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    :try_start_3
    invoke-interface {v12}, Landroid/os/IIncidentAuthListener;->asBinder()Landroid/os/IBinder;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    new-instance v1, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;

    .line 211
    .line 212
    invoke-direct {v1, v7, v12, v15, v14}, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/incident/PendingReports;Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V

    .line 213
    .line 214
    .line 215
    const/4 v2, 0x0

    .line 216
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 217
    .line 218
    .line 219
    goto :goto_1

    .line 220
    :catch_2
    const-string v0, "IncidentCompanionService"

    .line 221
    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    const-string v2, "Remote died while trying to register death listener: "

    .line 225
    .line 226
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v8}, Lcom/android/server/incident/PendingReports$PendingReportRec;->getUri()Landroid/net/Uri;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    invoke-virtual {v7, v12, v15, v14}, Lcom/android/server/incident/PendingReports;->cancelReportImpl(Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V

    .line 244
    .line 245
    .line 246
    :goto_1
    invoke-virtual {v7, v14, v15}, Lcom/android/server/incident/PendingReports;->sendBroadcast(ILandroid/content/ComponentName;)V

    .line 247
    .line 248
    .line 249
    goto :goto_3

    .line 250
    :catchall_0
    move-exception v0

    .line 251
    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 252
    throw v0

    .line 253
    :cond_5
    :goto_2
    const-string v1, "IncidentCompanionService"

    .line 254
    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string v3, "Calling user "

    .line 258
    .line 259
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v0, " doesn\'t belong to the same profile group of the current admin user "

    .line 266
    .line 267
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    invoke-static {v12, v8}, Lcom/android/server/incident/PendingReports;->denyReportBeforeAddingRec(Landroid/os/IIncidentAuthListener;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    :goto_3
    return-void
.end method
