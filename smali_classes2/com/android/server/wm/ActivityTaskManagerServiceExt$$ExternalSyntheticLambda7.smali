.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$LazyHolder;->sInstance:Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 14
    .line 15
    iget-object v3, v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 16
    .line 17
    iget-object v4, v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    sget-object v5, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;->URI_PACKAGE_POLICY_DISABLED:Landroid/net/Uri;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    const-string/jumbo v6, "package_policy_disabled"

    .line 29
    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-ne v5, v0, :cond_0

    .line 37
    .line 38
    move v5, v0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v5, v7

    .line 41
    :goto_0
    iget-object v6, v3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v6

    .line 44
    :try_start_0
    iget-boolean v8, v3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mStarted:Z

    .line 45
    .line 46
    const/4 v9, 0x0

    .line 47
    if-eqz v8, :cond_1

    .line 48
    .line 49
    iget-object v3, v3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 50
    .line 51
    const-string v4, "The controller has already been started."

    .line 52
    .line 53
    const/4 v5, 0x5

    .line 54
    invoke-virtual {v3, v5, v4, v9}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    monitor-exit v6

    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto/16 :goto_7

    .line 61
    .line 62
    :cond_1
    iput-object v2, v3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    iput-object p0, v3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mHandler:Landroid/os/Handler;

    .line 65
    .line 66
    iput-object v4, v3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 67
    .line 68
    new-instance v8, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    .line 69
    .line 70
    invoke-direct {v8, v2, p0, v4}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/util/CoreLogger;)V

    .line 71
    .line 72
    .line 73
    iput-object v8, v3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    .line 74
    .line 75
    new-instance v4, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;

    .line 76
    .line 77
    invoke-direct {v4, v2, p0, v3, v5}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;Z)V

    .line 78
    .line 79
    .line 80
    iput-object v4, v3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mSettings:Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;

    .line 81
    .line 82
    new-instance v4, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda0;

    .line 83
    .line 84
    invoke-direct {v4, v3, v0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    .line 89
    .line 90
    iput-boolean v0, v3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mStarted:Z

    .line 91
    .line 92
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :goto_1
    iget-object v3, v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 94
    .line 95
    iget-object v4, v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mScpmController:Lcom/samsung/android/server/corescpm/ScpmController;

    .line 96
    .line 97
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    new-instance v5, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda1;

    .line 101
    .line 102
    invoke-direct {v5, v4}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/corescpm/ScpmController;)V

    .line 103
    .line 104
    .line 105
    iget-object v4, v3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLock:Ljava/lang/Object;

    .line 106
    .line 107
    monitor-enter v4

    .line 108
    :try_start_1
    iput-object v5, v3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mGetFileDescriptor:Ljava/util/function/Function;

    .line 109
    .line 110
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 111
    iget-object v3, v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mScpmController:Lcom/samsung/android/server/corescpm/ScpmController;

    .line 112
    .line 113
    iget-object v4, v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 114
    .line 115
    invoke-virtual {v4}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->getGroupNames()Ljava/util/Set;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    iget-object v5, v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 120
    .line 121
    iget-object v6, v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 122
    .line 123
    check-cast v3, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;

    .line 124
    .line 125
    iget-object v8, v3, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLock:Ljava/lang/Object;

    .line 126
    .line 127
    monitor-enter v8

    .line 128
    :try_start_2
    iget-boolean v10, v3, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mStarted:Z

    .line 129
    .line 130
    if-eqz v10, :cond_2

    .line 131
    .line 132
    monitor-exit v8

    .line 133
    goto :goto_2

    .line 134
    :catchall_1
    move-exception p0

    .line 135
    goto :goto_6

    .line 136
    :cond_2
    iput-object v2, v3, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mContext:Landroid/content/Context;

    .line 137
    .line 138
    iput-object p0, v3, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mHandler:Landroid/os/Handler;

    .line 139
    .line 140
    iput-object v5, v3, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mCallback:Ljava/util/function/Consumer;

    .line 141
    .line 142
    iput-object v6, v3, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 143
    .line 144
    iput-boolean v0, v3, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mStarted:Z

    .line 145
    .line 146
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 147
    new-instance v5, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda2;

    .line 148
    .line 149
    invoke-direct {v5, v3, v4, v2, p0}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/corescpm/ScpmControllerImpl;Ljava/util/Set;Landroid/content/Context;Landroid/os/Handler;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    .line 154
    .line 155
    :goto_2
    monitor-enter v1

    .line 156
    :try_start_3
    iget-object p0, v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mTmpPackageFeatureCallbacks:Ljava/util/Map;

    .line 157
    .line 158
    if-nez p0, :cond_3

    .line 159
    .line 160
    const-string p0, "PackageFeature"

    .line 161
    .line 162
    const-string v2, "The package feature manager service has already been started."

    .line 163
    .line 164
    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    monitor-exit v1

    .line 168
    goto :goto_3

    .line 169
    :catchall_2
    move-exception p0

    .line 170
    goto :goto_5

    .line 171
    :cond_3
    new-instance v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda2;

    .line 172
    .line 173
    invoke-direct {v2, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;)V

    .line 174
    .line 175
    .line 176
    check-cast p0, Ljava/util/HashMap;

    .line 177
    .line 178
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 179
    .line 180
    .line 181
    iget-object p0, v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mTmpPackageFeatureCallbacks:Ljava/util/Map;

    .line 182
    .line 183
    check-cast p0, Ljava/util/HashMap;

    .line 184
    .line 185
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 186
    .line 187
    .line 188
    iput-object v9, v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mTmpPackageFeatureCallbacks:Ljava/util/Map;

    .line 189
    .line 190
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 191
    :goto_3
    sget-object p0, Lcom/android/server/wm/PackagesChange;->sAllPackagesChange:Ljava/util/List;

    .line 192
    .line 193
    check-cast p0, Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-eqz v1, :cond_5

    .line 204
    .line 205
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    check-cast v1, Lcom/android/server/wm/PackagesChange;

    .line 210
    .line 211
    iget-object v1, v1, Lcom/android/server/wm/PackagesChange;->mUserChanges:[Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 212
    .line 213
    if-eqz v1, :cond_4

    .line 214
    .line 215
    array-length v2, v1

    .line 216
    move v3, v7

    .line 217
    :goto_4
    if-ge v3, v2, :cond_4

    .line 218
    .line 219
    aget-object v4, v1, v3

    .line 220
    .line 221
    invoke-virtual {v4, v0, v7}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->onLoadFileCompletedAndSystemReady(ZZ)V

    .line 222
    .line 223
    .line 224
    add-int/2addr v3, v0

    .line 225
    goto :goto_4

    .line 226
    :cond_5
    return-void

    .line 227
    :goto_5
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 228
    throw p0

    .line 229
    :goto_6
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 230
    throw p0

    .line 231
    :catchall_3
    move-exception p0

    .line 232
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 233
    throw p0

    .line 234
    :goto_7
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 235
    throw p0
.end method
