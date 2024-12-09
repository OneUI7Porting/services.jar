.class public final Lcom/android/server/am/ActivityManagerServiceExt$2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerServiceExt$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$2;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$2;->this$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    .line 14
    .line 15
    iget-boolean v2, v1, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mLoaded:Z

    .line 16
    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 21
    .line 22
    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$2;->this$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    .line 31
    .line 32
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    const-string v0, "MetaDataCollector"

    .line 43
    .line 44
    const-string v1, "PackageManager is not ready yet."

    .line 45
    .line 46
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_0
    new-instance v5, Landroid/content/IntentFilter;

    .line 51
    .line 52
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 56
    .line 57
    invoke-virtual {v5, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 61
    .line 62
    invoke-virtual {v5, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 66
    .line 67
    invoke-virtual {v5, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string/jumbo v1, "package"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 77
    .line 78
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mPackageReceiver:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$2;

    .line 81
    .line 82
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 83
    .line 84
    iget-object v7, v1, Lcom/android/server/am/ActivityManagerServiceExt;->mBgHandler:Lcom/android/server/am/ActivityManagerServiceExt$BgHandler;

    .line 85
    .line 86
    const/4 v6, 0x0

    .line 87
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    const-string v1, "MetaDataCollector"

    .line 91
    .line 92
    const-string/jumbo v2, "begin"

    .line 93
    .line 94
    .line 95
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 99
    .line 100
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const/16 v2, 0x80

    .line 107
    .line 108
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    monitor-enter v0

    .line 113
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_1

    .line 122
    .line 123
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 128
    .line 129
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->loadMetaDataOnceLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 132
    .line 133
    .line 134
    const/4 v2, 0x1

    .line 135
    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mLoaded:Z

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :catchall_0
    move-exception p0

    .line 139
    goto :goto_1

    .line 140
    :cond_1
    const-string v1, "MetaDataCollector"

    .line 141
    .line 142
    const-string/jumbo v2, "loadInternal() done."

    .line 143
    .line 144
    .line 145
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    monitor-exit v0

    .line 149
    goto :goto_2

    .line 150
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    throw p0

    .line 152
    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$2;->this$0:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;

    .line 155
    .line 156
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->-$$Nest$mscheduleLoad(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :catchall_1
    move-exception p0

    .line 161
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 162
    throw p0

    .line 163
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$2;->this$0:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v0, Lcom/android/server/am/ActivityManagerServiceExt;

    .line 166
    .line 167
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 168
    .line 169
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 170
    .line 171
    .line 172
    monitor-enter v0

    .line 173
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$2;->this$0:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v1, Lcom/android/server/am/ActivityManagerServiceExt;

    .line 176
    .line 177
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerServiceExt;->mDeXKillProcesses:Ljava/util/ArrayList;

    .line 178
    .line 179
    if-eqz v1, :cond_3

    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    const/4 v2, 0x0

    .line 186
    :goto_3
    if-ge v2, v1, :cond_3

    .line 187
    .line 188
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt$2;->this$0:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v3, Lcom/android/server/am/ActivityManagerServiceExt;

    .line 191
    .line 192
    iget-object v4, v3, Lcom/android/server/am/ActivityManagerServiceExt;->mDeXKillProcesses:Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 199
    .line 200
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerServiceExt;->forceKillProcessesForDeXExitLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 201
    .line 202
    .line 203
    add-int/lit8 v2, v2, 0x1

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :catchall_2
    move-exception p0

    .line 207
    goto :goto_4

    .line 208
    :cond_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 209
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :goto_4
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 214
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 215
    .line 216
    .line 217
    throw p0

    .line 218
    nop

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
