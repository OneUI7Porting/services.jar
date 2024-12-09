.class public final Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;
.super Landroid/media/metrics/IMediaMetricsManager$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/metrics/IMediaMetricsManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    array-length v2, p0

    .line 4
    move v3, v1

    .line 5
    :goto_0
    if-ge v3, v2, :cond_5

    .line 6
    .line 7
    aget-object v4, p0, v3

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    if-eqz v6, :cond_4

    .line 18
    .line 19
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    check-cast v6, Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    const/4 p0, -0x1

    .line 32
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    sparse-switch p1, :sswitch_data_0

    .line 37
    .line 38
    .line 39
    :goto_1
    move v0, p0

    .line 40
    goto :goto_2

    .line 41
    :sswitch_0
    const-string/jumbo p1, "player_metrics_per_app_attribution_allowlist"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 v0, 0x2

    .line 52
    goto :goto_2

    .line 53
    :sswitch_1
    const-string/jumbo p1, "player_metrics_app_allowlist"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :sswitch_2
    const-string/jumbo p1, "player_metrics_per_app_attribution_blocklist"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move v0, v1

    .line 74
    :cond_3
    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 75
    .line 76
    .line 77
    const v1, 0x1869f

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :pswitch_0
    const/16 v1, 0x3e8

    .line 82
    .line 83
    :goto_3
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0

    .line 88
    :cond_4
    add-int/2addr v3, v0

    .line 89
    goto :goto_0

    .line 90
    :cond_5
    const/4 p0, 0x0

    .line 91
    return-object p0

    .line 92
    nop

    .line 93
    :sswitch_data_0
    .sparse-switch
        -0x70e7b2af -> :sswitch_2
        -0x4cdbea91 -> :sswitch_1
        0x71446e0d -> :sswitch_0
    .end sparse-switch

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getBundleSessionId(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getEditingSessionId(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getPlaybackSessionId(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getRecordingSessionId(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getSessionIdInternal()Ljava/lang/String;
    .locals 3

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mSecureRandom:Ljava/security/SecureRandom;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 10
    .line 11
    .line 12
    const/16 p0, 0xb

    .line 13
    .line 14
    invoke-static {v0, p0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance v0, Landroid/media/MediaMetrics$Item;

    .line 19
    .line 20
    const-string/jumbo v1, "metrics.manager"

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 27
    .line 28
    const-string/jumbo v2, "create"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget-object v1, Landroid/media/MediaMetrics$Property;->LOG_SESSION_ID:Landroid/media/MediaMetrics$Key;

    .line 36
    .line 37
    invoke-virtual {v0, v1, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 42
    .line 43
    .line 44
    return-object p0
.end method

.method public final getTranscodingSessionId(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final loggingLevel()I
    .locals 9

    .line 1
    const-string/jumbo v0, "empty package from uid "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 14
    .line 15
    iget-object v3, v3, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    .line 22
    .line 23
    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :try_start_1
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 25
    .line 26
    const-string/jumbo v7, "media"

    .line 27
    .line 28
    .line 29
    const-string/jumbo v8, "media_metrics_mode"

    .line 30
    .line 31
    .line 32
    invoke-static {v7, v8, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    iput-object v7, v3, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    .line 42
    :try_start_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :catchall_1
    move-exception p0

    .line 50
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 55
    .line 56
    iget-object v3, v3, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    const/4 v5, 0x1

    .line 63
    const/4 v6, 0x0

    .line 64
    if-ne v3, v5, :cond_1

    .line 65
    .line 66
    monitor-exit v1

    .line 67
    return v6

    .line 68
    :cond_1
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 69
    .line 70
    iget-object v3, v3, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    const v5, 0x1869f

    .line 77
    .line 78
    .line 79
    if-nez v3, :cond_2

    .line 80
    .line 81
    const-string p0, "MediaMetricsManagerService"

    .line 82
    .line 83
    const-string v0, "Logging level blocked: MEDIA_METRICS_MODE_OFF"

    .line 84
    .line 85
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    monitor-exit v1

    .line 89
    return v5

    .line 90
    :cond_2
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    if-eqz v3, :cond_e

    .line 105
    .line 106
    array-length v7, v3

    .line 107
    if-nez v7, :cond_3

    .line 108
    .line 109
    goto/16 :goto_1

    .line 110
    .line 111
    :cond_3
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 112
    .line 113
    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-ne v0, v4, :cond_8

    .line 120
    .line 121
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 122
    .line 123
    iget-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    .line 124
    .line 125
    if-nez v2, :cond_4

    .line 126
    .line 127
    const-string/jumbo v2, "player_metrics_app_blocklist"

    .line 128
    .line 129
    .line 130
    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    iput-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    .line 135
    .line 136
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 137
    .line 138
    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    .line 139
    .line 140
    if-nez v0, :cond_4

    .line 141
    .line 142
    const-string p0, "MediaMetricsManagerService"

    .line 143
    .line 144
    const-string v0, "Logging level blocked: Failed to get PLAYER_METRICS_APP_BLOCKLIST."

    .line 145
    .line 146
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    monitor-exit v1

    .line 150
    return v5

    .line 151
    :cond_4
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 152
    .line 153
    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    .line 154
    .line 155
    const-string/jumbo v2, "player_metrics_app_blocklist"

    .line 156
    .line 157
    .line 158
    invoke-static {v3, v0, v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    if-eqz v0, :cond_5

    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    monitor-exit v1

    .line 169
    return p0

    .line 170
    :cond_5
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 171
    .line 172
    iget-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    .line 173
    .line 174
    if-nez v2, :cond_6

    .line 175
    .line 176
    const-string/jumbo v2, "player_metrics_per_app_attribution_blocklist"

    .line 177
    .line 178
    .line 179
    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    iput-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    .line 184
    .line 185
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 186
    .line 187
    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    .line 188
    .line 189
    if-nez v0, :cond_6

    .line 190
    .line 191
    const-string p0, "MediaMetricsManagerService"

    .line 192
    .line 193
    const-string v0, "Logging level blocked: Failed to get PLAYER_METRICS_PER_APP_ATTRIBUTION_BLOCKLIST."

    .line 194
    .line 195
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    monitor-exit v1

    .line 199
    return v5

    .line 200
    :cond_6
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 201
    .line 202
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    .line 203
    .line 204
    const-string/jumbo v0, "player_metrics_per_app_attribution_blocklist"

    .line 205
    .line 206
    .line 207
    invoke-static {v3, p0, v0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    if-eqz p0, :cond_7

    .line 212
    .line 213
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    monitor-exit v1

    .line 218
    return p0

    .line 219
    :cond_7
    monitor-exit v1

    .line 220
    return v6

    .line 221
    :cond_8
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 222
    .line 223
    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    .line 224
    .line 225
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    const/4 v2, 0x3

    .line 230
    if-ne v0, v2, :cond_d

    .line 231
    .line 232
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 233
    .line 234
    iget-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    .line 235
    .line 236
    if-nez v2, :cond_9

    .line 237
    .line 238
    const-string/jumbo v2, "player_metrics_per_app_attribution_allowlist"

    .line 239
    .line 240
    .line 241
    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    iput-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    .line 246
    .line 247
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 248
    .line 249
    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    .line 250
    .line 251
    if-nez v0, :cond_9

    .line 252
    .line 253
    const-string p0, "MediaMetricsManagerService"

    .line 254
    .line 255
    const-string v0, "Logging level blocked: Failed to get PLAYER_METRICS_PER_APP_ATTRIBUTION_ALLOWLIST."

    .line 256
    .line 257
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    monitor-exit v1

    .line 261
    return v5

    .line 262
    :cond_9
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 263
    .line 264
    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    .line 265
    .line 266
    const-string/jumbo v2, "player_metrics_per_app_attribution_allowlist"

    .line 267
    .line 268
    .line 269
    invoke-static {v3, v0, v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    if-eqz v0, :cond_a

    .line 274
    .line 275
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 276
    .line 277
    .line 278
    move-result p0

    .line 279
    monitor-exit v1

    .line 280
    return p0

    .line 281
    :cond_a
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 282
    .line 283
    iget-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    .line 284
    .line 285
    if-nez v2, :cond_b

    .line 286
    .line 287
    const-string/jumbo v2, "player_metrics_app_allowlist"

    .line 288
    .line 289
    .line 290
    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    iput-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    .line 295
    .line 296
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 297
    .line 298
    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    .line 299
    .line 300
    if-nez v0, :cond_b

    .line 301
    .line 302
    const-string p0, "MediaMetricsManagerService"

    .line 303
    .line 304
    const-string v0, "Logging level blocked: Failed to get PLAYER_METRICS_APP_ALLOWLIST."

    .line 305
    .line 306
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    monitor-exit v1

    .line 310
    return v5

    .line 311
    :cond_b
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 312
    .line 313
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    .line 314
    .line 315
    const-string/jumbo v0, "player_metrics_app_allowlist"

    .line 316
    .line 317
    .line 318
    invoke-static {v3, p0, v0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    .line 319
    .line 320
    .line 321
    move-result-object p0

    .line 322
    if-eqz p0, :cond_c

    .line 323
    .line 324
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 325
    .line 326
    .line 327
    move-result p0

    .line 328
    monitor-exit v1

    .line 329
    return p0

    .line 330
    :cond_c
    const-string p0, "MediaMetricsManagerService"

    .line 331
    .line 332
    const-string v0, "Logging level blocked: Not detected in any allowlist."

    .line 333
    .line 334
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    monitor-exit v1

    .line 338
    return v5

    .line 339
    :cond_d
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 340
    const-string p0, "MediaMetricsManagerService"

    .line 341
    .line 342
    const-string v0, "Logging level blocked: Blocked by default."

    .line 343
    .line 344
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    return v5

    .line 348
    :cond_e
    :goto_1
    :try_start_3
    const-string v3, "MediaMetricsManagerService"

    .line 349
    .line 350
    new-instance v6, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    .line 364
    .line 365
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 366
    .line 367
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    .line 368
    .line 369
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 370
    .line 371
    .line 372
    move-result p0

    .line 373
    if-ne p0, v4, :cond_f

    .line 374
    .line 375
    const/16 v5, 0x3e8

    .line 376
    .line 377
    :cond_f
    monitor-exit v1

    .line 378
    return v5

    .line 379
    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 380
    throw p0
.end method

.method public final releaseSessionId(Ljava/lang/String;I)V
    .locals 2

    .line 1
    const-string p0, "Releasing sessionId "

    .line 2
    .line 3
    const-string v0, " for userId "

    .line 4
    .line 5
    const-string v1, " [NOP]"

    .line 6
    .line 7
    invoke-static {p2, p0, p1, v0, v1}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string p1, "MediaMetricsManagerService"

    .line 12
    .line 13
    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final reportBundleMetrics(Ljava/lang/String;Landroid/os/PersistableBundle;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const p1, 0x1869f

    .line 6
    .line 7
    .line 8
    if-ne p0, p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string/jumbo p0, "bundlesession-statsd-atom"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, p0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const/16 p1, 0x142

    .line 19
    .line 20
    if-eq p0, p1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    const-string/jumbo p0, "playbackstateevent-sessionid"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string/jumbo p3, "playbackstateevent-state"

    .line 31
    .line 32
    .line 33
    const/4 v0, -0x1

    .line 34
    invoke-virtual {p2, p3, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    const-string/jumbo v0, "playbackstateevent-lifetime"

    .line 39
    .line 40
    .line 41
    const-wide/16 v1, -0x1

    .line 42
    .line 43
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    if-eqz p0, :cond_3

    .line 48
    .line 49
    if-ltz p3, :cond_3

    .line 50
    .line 51
    const-wide/16 v2, 0x0

    .line 52
    .line 53
    cmp-long p2, v0, v2

    .line 54
    .line 55
    if-gez p2, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p2, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1, p0}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0, v0, v1}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_3
    :goto_0
    const-string/jumbo p1, "dropping incomplete data for atom 322: _sessionId: "

    .line 91
    .line 92
    .line 93
    const-string p2, " _state: "

    .line 94
    .line 95
    const-string v2, " _lifetime: "

    .line 96
    .line 97
    invoke-static {p3, p1, p0, p2, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    const-string p1, "MediaMetricsManagerService"

    .line 102
    .line 103
    invoke-static {p0, v0, v1, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final reportEditingEndedEvent(Ljava/lang/String;Landroid/media/metrics/EditingEndedEvent;I)V
    .locals 50

    .line 1
    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "video/avc"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v3, "video/hevc"

    .line 11
    .line 12
    .line 13
    const-string/jumbo v4, "video/av01"

    .line 14
    .line 15
    .line 16
    const/4 v10, 0x0

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    .line 18
    .line 19
    .line 20
    move-result v11

    .line 21
    const v12, 0x1869f

    .line 22
    .line 23
    .line 24
    if-ne v11, v12, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getInputMediaItemInfos()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v11

    .line 31
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v11

    .line 35
    if-eqz v11, :cond_1

    .line 36
    .line 37
    sget-object v11, Lcom/android/server/media/metrics/MediaMetricsManagerService;->EMPTY_MEDIA_ITEM_INFO:Landroid/media/metrics/MediaItemInfo;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getInputMediaItemInfos()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v11

    .line 44
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v11

    .line 48
    check-cast v11, Landroid/media/metrics/MediaItemInfo;

    .line 49
    .line 50
    :goto_0
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getDataTypes()J

    .line 51
    .line 52
    .line 53
    move-result-wide v12

    .line 54
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getSampleMimeTypes()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v14

    .line 58
    const-string/jumbo v15, "audio/"

    .line 59
    .line 60
    .line 61
    invoke-static {v15, v14}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredFirstMimeType(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v14

    .line 65
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getSampleMimeTypes()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    const-string/jumbo v6, "video/"

    .line 70
    .line 71
    .line 72
    invoke-static {v6, v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredFirstMimeType(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getVideoSize()Landroid/util/Size;

    .line 77
    .line 78
    .line 79
    move-result-object v16

    .line 80
    invoke-static/range {v16 .. v16}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoResolutionEnum(Landroid/util/Size;)I

    .line 81
    .line 82
    .line 83
    move-result v17

    .line 84
    if-nez v17, :cond_2

    .line 85
    .line 86
    new-instance v7, Landroid/util/Size;

    .line 87
    .line 88
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    invoke-direct {v7, v8, v9}, Landroid/util/Size;-><init>(II)V

    .line 97
    .line 98
    .line 99
    invoke-static {v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoResolutionEnum(Landroid/util/Size;)I

    .line 100
    .line 101
    .line 102
    move-result v17

    .line 103
    :cond_2
    move/from16 v7, v17

    .line 104
    .line 105
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getCodecNames()Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    const-string v17, ""

    .line 114
    .line 115
    if-nez v9, :cond_3

    .line 116
    .line 117
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    check-cast v9, Ljava/lang/String;

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    move-object/from16 v9, v17

    .line 125
    .line 126
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 127
    .line 128
    .line 129
    move-result v10

    .line 130
    move-object/from16 p0, v9

    .line 131
    .line 132
    const/4 v9, 0x1

    .line 133
    if-le v10, v9, :cond_4

    .line 134
    .line 135
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    check-cast v8, Ljava/lang/String;

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_4
    move-object/from16 v8, v17

    .line 143
    .line 144
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getOutputMediaItemInfo()Landroid/media/metrics/MediaItemInfo;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    if-nez v9, :cond_5

    .line 149
    .line 150
    sget-object v9, Lcom/android/server/media/metrics/MediaMetricsManagerService;->EMPTY_MEDIA_ITEM_INFO:Landroid/media/metrics/MediaItemInfo;

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getOutputMediaItemInfo()Landroid/media/metrics/MediaItemInfo;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    :goto_3
    invoke-virtual {v9}, Landroid/media/metrics/MediaItemInfo;->getDataTypes()J

    .line 158
    .line 159
    .line 160
    move-result-wide v19

    .line 161
    invoke-virtual {v9}, Landroid/media/metrics/MediaItemInfo;->getSampleMimeTypes()Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    invoke-static {v15, v10}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredFirstMimeType(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    invoke-virtual {v9}, Landroid/media/metrics/MediaItemInfo;->getSampleMimeTypes()Ljava/util/List;

    .line 170
    .line 171
    .line 172
    move-result-object v15

    .line 173
    invoke-static {v6, v15}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredFirstMimeType(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    invoke-virtual {v9}, Landroid/media/metrics/MediaItemInfo;->getVideoSize()Landroid/util/Size;

    .line 178
    .line 179
    .line 180
    move-result-object v15

    .line 181
    invoke-static {v15}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoResolutionEnum(Landroid/util/Size;)I

    .line 182
    .line 183
    .line 184
    move-result v21

    .line 185
    move-object/from16 v22, v6

    .line 186
    .line 187
    if-nez v21, :cond_6

    .line 188
    .line 189
    new-instance v6, Landroid/util/Size;

    .line 190
    .line 191
    move-object/from16 v23, v10

    .line 192
    .line 193
    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    .line 194
    .line 195
    .line 196
    move-result v10

    .line 197
    move-object/from16 v24, v8

    .line 198
    .line 199
    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    .line 200
    .line 201
    .line 202
    move-result v8

    .line 203
    invoke-direct {v6, v10, v8}, Landroid/util/Size;-><init>(II)V

    .line 204
    .line 205
    .line 206
    invoke-static {v6}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoResolutionEnum(Landroid/util/Size;)I

    .line 207
    .line 208
    .line 209
    move-result v21

    .line 210
    :goto_4
    move/from16 v6, v21

    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_6
    move-object/from16 v24, v8

    .line 214
    .line 215
    move-object/from16 v23, v10

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :goto_5
    invoke-virtual {v9}, Landroid/media/metrics/MediaItemInfo;->getCodecNames()Ljava/util/List;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 223
    .line 224
    .line 225
    move-result v10

    .line 226
    if-nez v10, :cond_7

    .line 227
    .line 228
    const/4 v10, 0x0

    .line 229
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v18

    .line 233
    check-cast v18, Ljava/lang/String;

    .line 234
    .line 235
    move-object/from16 v21, v18

    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_7
    move-object/from16 v21, v17

    .line 239
    .line 240
    :goto_6
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 241
    .line 242
    .line 243
    move-result v10

    .line 244
    move/from16 v25, v6

    .line 245
    .line 246
    const/4 v6, 0x1

    .line 247
    if-le v10, v6, :cond_8

    .line 248
    .line 249
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v8

    .line 253
    check-cast v8, Ljava/lang/String;

    .line 254
    .line 255
    goto :goto_7

    .line 256
    :cond_8
    move-object/from16 v8, v17

    .line 257
    .line 258
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getOperationTypes()J

    .line 259
    .line 260
    .line 261
    move-result-wide v26

    .line 262
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 263
    .line 264
    .line 265
    move-result-object v10

    .line 266
    const/16 v6, 0x31e

    .line 267
    .line 268
    invoke-virtual {v10, v6}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    move-object/from16 v10, p1

    .line 273
    .line 274
    invoke-virtual {v6, v10}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getFinalState()I

    .line 279
    .line 280
    .line 281
    move-result v10

    .line 282
    invoke-virtual {v6, v10}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getFinalProgressPercent()F

    .line 287
    .line 288
    .line 289
    move-result v10

    .line 290
    invoke-virtual {v6, v10}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    .line 291
    .line 292
    .line 293
    move-result-object v6

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getErrorCode()I

    .line 295
    .line 296
    .line 297
    move-result v10

    .line 298
    invoke-virtual {v6, v10}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 299
    .line 300
    .line 301
    move-result-object v6

    .line 302
    move-object/from16 v28, v8

    .line 303
    .line 304
    move-object v10, v9

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getTimeSinceCreatedMillis()J

    .line 306
    .line 307
    .line 308
    move-result-wide v8

    .line 309
    invoke-virtual {v6, v8, v9}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 310
    .line 311
    .line 312
    move-result-object v6

    .line 313
    const-wide/16 v8, 0x1

    .line 314
    .line 315
    and-long v29, v26, v8

    .line 316
    .line 317
    const-wide/16 v31, 0x0

    .line 318
    .line 319
    cmp-long v29, v29, v31

    .line 320
    .line 321
    if-eqz v29, :cond_9

    .line 322
    .line 323
    const/4 v8, 0x1

    .line 324
    goto :goto_8

    .line 325
    :cond_9
    const/4 v8, 0x0

    .line 326
    :goto_8
    invoke-virtual {v6, v8}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    const-wide/16 v8, 0x2

    .line 331
    .line 332
    and-long v33, v26, v8

    .line 333
    .line 334
    cmp-long v33, v33, v31

    .line 335
    .line 336
    if-eqz v33, :cond_a

    .line 337
    .line 338
    const/4 v8, 0x1

    .line 339
    goto :goto_9

    .line 340
    :cond_a
    const/4 v8, 0x0

    .line 341
    :goto_9
    invoke-virtual {v6, v8}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    const-wide/16 v8, 0x4

    .line 346
    .line 347
    and-long v35, v26, v8

    .line 348
    .line 349
    cmp-long v35, v35, v31

    .line 350
    .line 351
    if-eqz v35, :cond_b

    .line 352
    .line 353
    const/4 v8, 0x1

    .line 354
    goto :goto_a

    .line 355
    :cond_b
    const/4 v8, 0x0

    .line 356
    :goto_a
    invoke-virtual {v6, v8}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 357
    .line 358
    .line 359
    move-result-object v6

    .line 360
    const-wide/16 v8, 0x8

    .line 361
    .line 362
    and-long v37, v26, v8

    .line 363
    .line 364
    cmp-long v37, v37, v31

    .line 365
    .line 366
    if-eqz v37, :cond_c

    .line 367
    .line 368
    const/4 v8, 0x1

    .line 369
    goto :goto_b

    .line 370
    :cond_c
    const/4 v8, 0x0

    .line 371
    :goto_b
    invoke-virtual {v6, v8}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 372
    .line 373
    .line 374
    move-result-object v6

    .line 375
    const-wide/16 v8, 0x10

    .line 376
    .line 377
    and-long v39, v26, v8

    .line 378
    .line 379
    cmp-long v39, v39, v31

    .line 380
    .line 381
    if-eqz v39, :cond_d

    .line 382
    .line 383
    const/4 v8, 0x1

    .line 384
    goto :goto_c

    .line 385
    :cond_d
    const/4 v8, 0x0

    .line 386
    :goto_c
    invoke-virtual {v6, v8}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 387
    .line 388
    .line 389
    move-result-object v6

    .line 390
    const-wide/16 v8, 0x20

    .line 391
    .line 392
    and-long v41, v26, v8

    .line 393
    .line 394
    cmp-long v41, v41, v31

    .line 395
    .line 396
    if-eqz v41, :cond_e

    .line 397
    .line 398
    const/4 v8, 0x1

    .line 399
    goto :goto_d

    .line 400
    :cond_e
    const/4 v8, 0x0

    .line 401
    :goto_d
    invoke-virtual {v6, v8}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 402
    .line 403
    .line 404
    move-result-object v6

    .line 405
    const-wide/16 v8, 0x40

    .line 406
    .line 407
    and-long v43, v26, v8

    .line 408
    .line 409
    cmp-long v43, v43, v31

    .line 410
    .line 411
    if-eqz v43, :cond_f

    .line 412
    .line 413
    const/4 v8, 0x1

    .line 414
    goto :goto_e

    .line 415
    :cond_f
    const/4 v8, 0x0

    .line 416
    :goto_e
    invoke-virtual {v6, v8}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 417
    .line 418
    .line 419
    move-result-object v6

    .line 420
    const-wide/16 v8, 0x80

    .line 421
    .line 422
    and-long v26, v26, v8

    .line 423
    .line 424
    cmp-long v26, v26, v31

    .line 425
    .line 426
    if-eqz v26, :cond_10

    .line 427
    .line 428
    const/4 v8, 0x1

    .line 429
    goto :goto_f

    .line 430
    :cond_10
    const/4 v8, 0x0

    .line 431
    :goto_f
    invoke-virtual {v6, v8}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 432
    .line 433
    .line 434
    move-result-object v6

    .line 435
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getExporterName()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v8

    .line 439
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 440
    .line 441
    .line 442
    move-result v9

    .line 443
    if-eqz v9, :cond_11

    .line 444
    .line 445
    :goto_10
    move-object/from16 v8, v17

    .line 446
    .line 447
    goto :goto_11

    .line 448
    :cond_11
    sget-object v9, Lcom/android/server/media/metrics/MediaMetricsManagerService;->PATTERN_KNOWN_EDITING_LIBRARY_NAMES:Ljava/util/regex/Pattern;

    .line 449
    .line 450
    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 451
    .line 452
    .line 453
    move-result-object v9

    .line 454
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    .line 455
    .line 456
    .line 457
    move-result v9

    .line 458
    if-nez v9, :cond_12

    .line 459
    .line 460
    goto :goto_10

    .line 461
    :cond_12
    :goto_11
    invoke-virtual {v6, v8}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 462
    .line 463
    .line 464
    move-result-object v6

    .line 465
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getMuxerName()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v8

    .line 469
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 470
    .line 471
    .line 472
    move-result v9

    .line 473
    if-eqz v9, :cond_13

    .line 474
    .line 475
    :goto_12
    move-object/from16 v8, v17

    .line 476
    .line 477
    goto :goto_13

    .line 478
    :cond_13
    sget-object v9, Lcom/android/server/media/metrics/MediaMetricsManagerService;->PATTERN_KNOWN_EDITING_LIBRARY_NAMES:Ljava/util/regex/Pattern;

    .line 479
    .line 480
    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 481
    .line 482
    .line 483
    move-result-object v9

    .line 484
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    .line 485
    .line 486
    .line 487
    move-result v9

    .line 488
    if-nez v9, :cond_14

    .line 489
    .line 490
    goto :goto_12

    .line 491
    :cond_14
    :goto_13
    invoke-virtual {v6, v8}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 492
    .line 493
    .line 494
    move-result-object v6

    .line 495
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getOutputMediaItemInfo()Landroid/media/metrics/MediaItemInfo;

    .line 496
    .line 497
    .line 498
    move-result-object v8

    .line 499
    if-nez v8, :cond_15

    .line 500
    .line 501
    :goto_14
    move-object/from16 v17, v3

    .line 502
    .line 503
    move-object/from16 v47, v4

    .line 504
    .line 505
    :goto_15
    const/4 v3, -0x1

    .line 506
    goto :goto_16

    .line 507
    :cond_15
    invoke-virtual {v8}, Landroid/media/metrics/MediaItemInfo;->getVideoSampleCount()J

    .line 508
    .line 509
    .line 510
    move-result-wide v8

    .line 511
    const-wide/16 v45, -0x1

    .line 512
    .line 513
    cmp-long v17, v8, v45

    .line 514
    .line 515
    if-nez v17, :cond_16

    .line 516
    .line 517
    goto :goto_14

    .line 518
    :cond_16
    move-object/from16 v17, v3

    .line 519
    .line 520
    move-object/from16 v47, v4

    .line 521
    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getTimeSinceCreatedMillis()J

    .line 523
    .line 524
    .line 525
    move-result-wide v3

    .line 526
    cmp-long v45, v3, v45

    .line 527
    .line 528
    if-nez v45, :cond_17

    .line 529
    .line 530
    goto :goto_15

    .line 531
    :cond_17
    const-wide v45, 0x408f400000000000L    # 1000.0

    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    long-to-double v8, v8

    .line 537
    mul-double v8, v8, v45

    .line 538
    .line 539
    long-to-double v3, v3

    .line 540
    div-double/2addr v8, v3

    .line 541
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    .line 542
    .line 543
    .line 544
    move-result-wide v3

    .line 545
    const-wide/32 v8, 0x7fffffff

    .line 546
    .line 547
    .line 548
    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 549
    .line 550
    .line 551
    move-result-wide v3

    .line 552
    long-to-int v3, v3

    .line 553
    :goto_16
    invoke-virtual {v6, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 554
    .line 555
    .line 556
    move-result-object v3

    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getInputMediaItemInfos()Ljava/util/List;

    .line 558
    .line 559
    .line 560
    move-result-object v4

    .line 561
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 562
    .line 563
    .line 564
    move-result v4

    .line 565
    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 566
    .line 567
    .line 568
    move-result-object v3

    .line 569
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getSourceType()I

    .line 570
    .line 571
    .line 572
    move-result v4

    .line 573
    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 574
    .line 575
    .line 576
    move-result-object v3

    .line 577
    const-wide/16 v8, 0x1

    .line 578
    .line 579
    and-long v45, v12, v8

    .line 580
    .line 581
    cmp-long v4, v45, v31

    .line 582
    .line 583
    if-eqz v4, :cond_18

    .line 584
    .line 585
    const/4 v9, 0x1

    .line 586
    goto :goto_17

    .line 587
    :cond_18
    const/4 v9, 0x0

    .line 588
    :goto_17
    invoke-virtual {v3, v9}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 589
    .line 590
    .line 591
    move-result-object v3

    .line 592
    const-wide/16 v8, 0x2

    .line 593
    .line 594
    and-long v45, v12, v8

    .line 595
    .line 596
    cmp-long v4, v45, v31

    .line 597
    .line 598
    if-eqz v4, :cond_19

    .line 599
    .line 600
    const/4 v9, 0x1

    .line 601
    goto :goto_18

    .line 602
    :cond_19
    const/4 v9, 0x0

    .line 603
    :goto_18
    invoke-virtual {v3, v9}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 604
    .line 605
    .line 606
    move-result-object v3

    .line 607
    const-wide/16 v8, 0x4

    .line 608
    .line 609
    and-long v45, v12, v8

    .line 610
    .line 611
    cmp-long v4, v45, v31

    .line 612
    .line 613
    if-eqz v4, :cond_1a

    .line 614
    .line 615
    const/4 v9, 0x1

    .line 616
    goto :goto_19

    .line 617
    :cond_1a
    const/4 v9, 0x0

    .line 618
    :goto_19
    invoke-virtual {v3, v9}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 619
    .line 620
    .line 621
    move-result-object v3

    .line 622
    const-wide/16 v8, 0x8

    .line 623
    .line 624
    and-long v45, v12, v8

    .line 625
    .line 626
    cmp-long v4, v45, v31

    .line 627
    .line 628
    if-eqz v4, :cond_1b

    .line 629
    .line 630
    const/4 v9, 0x1

    .line 631
    goto :goto_1a

    .line 632
    :cond_1b
    const/4 v9, 0x0

    .line 633
    :goto_1a
    invoke-virtual {v3, v9}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 634
    .line 635
    .line 636
    move-result-object v3

    .line 637
    const-wide/16 v8, 0x10

    .line 638
    .line 639
    and-long v45, v12, v8

    .line 640
    .line 641
    cmp-long v4, v45, v31

    .line 642
    .line 643
    if-eqz v4, :cond_1c

    .line 644
    .line 645
    const/4 v9, 0x1

    .line 646
    goto :goto_1b

    .line 647
    :cond_1c
    const/4 v9, 0x0

    .line 648
    :goto_1b
    invoke-virtual {v3, v9}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 649
    .line 650
    .line 651
    move-result-object v3

    .line 652
    const-wide/16 v8, 0x20

    .line 653
    .line 654
    and-long v45, v12, v8

    .line 655
    .line 656
    cmp-long v4, v45, v31

    .line 657
    .line 658
    if-eqz v4, :cond_1d

    .line 659
    .line 660
    const/4 v9, 0x1

    .line 661
    goto :goto_1c

    .line 662
    :cond_1d
    const/4 v9, 0x0

    .line 663
    :goto_1c
    invoke-virtual {v3, v9}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 664
    .line 665
    .line 666
    move-result-object v3

    .line 667
    const-wide/16 v8, 0x40

    .line 668
    .line 669
    and-long v45, v12, v8

    .line 670
    .line 671
    cmp-long v4, v45, v31

    .line 672
    .line 673
    if-eqz v4, :cond_1e

    .line 674
    .line 675
    const/4 v9, 0x1

    .line 676
    goto :goto_1d

    .line 677
    :cond_1e
    const/4 v9, 0x0

    .line 678
    :goto_1d
    invoke-virtual {v3, v9}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 679
    .line 680
    .line 681
    move-result-object v3

    .line 682
    const-wide/16 v8, 0x80

    .line 683
    .line 684
    and-long v45, v12, v8

    .line 685
    .line 686
    cmp-long v4, v45, v31

    .line 687
    .line 688
    if-eqz v4, :cond_1f

    .line 689
    .line 690
    const/4 v9, 0x1

    .line 691
    goto :goto_1e

    .line 692
    :cond_1f
    const/4 v9, 0x0

    .line 693
    :goto_1e
    invoke-virtual {v3, v9}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 694
    .line 695
    .line 696
    move-result-object v3

    .line 697
    const-wide/16 v8, 0x100

    .line 698
    .line 699
    and-long v45, v12, v8

    .line 700
    .line 701
    cmp-long v4, v45, v31

    .line 702
    .line 703
    if-eqz v4, :cond_20

    .line 704
    .line 705
    const/4 v4, 0x1

    .line 706
    goto :goto_1f

    .line 707
    :cond_20
    const/4 v4, 0x0

    .line 708
    :goto_1f
    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 709
    .line 710
    .line 711
    move-result-object v3

    .line 712
    const-wide/16 v45, 0x200

    .line 713
    .line 714
    and-long v48, v12, v45

    .line 715
    .line 716
    cmp-long v4, v48, v31

    .line 717
    .line 718
    if-eqz v4, :cond_21

    .line 719
    .line 720
    const/4 v4, 0x1

    .line 721
    goto :goto_20

    .line 722
    :cond_21
    const/4 v4, 0x0

    .line 723
    :goto_20
    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 724
    .line 725
    .line 726
    move-result-object v3

    .line 727
    const-wide/16 v48, 0x400

    .line 728
    .line 729
    and-long v12, v12, v48

    .line 730
    .line 731
    cmp-long v4, v12, v31

    .line 732
    .line 733
    if-eqz v4, :cond_22

    .line 734
    .line 735
    const/4 v4, 0x1

    .line 736
    goto :goto_21

    .line 737
    :cond_22
    const/4 v4, 0x0

    .line 738
    :goto_21
    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 739
    .line 740
    .line 741
    move-result-object v3

    .line 742
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getDurationMillis()J

    .line 743
    .line 744
    .line 745
    move-result-wide v12

    .line 746
    invoke-static {v12, v13}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetBucketedDurationMillis(J)J

    .line 747
    .line 748
    .line 749
    move-result-wide v12

    .line 750
    invoke-virtual {v3, v12, v13}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 751
    .line 752
    .line 753
    move-result-object v3

    .line 754
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getClipDurationMillis()J

    .line 755
    .line 756
    .line 757
    move-result-wide v12

    .line 758
    invoke-static {v12, v13}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetBucketedDurationMillis(J)J

    .line 759
    .line 760
    .line 761
    move-result-wide v12

    .line 762
    invoke-virtual {v3, v12, v13}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 763
    .line 764
    .line 765
    move-result-object v3

    .line 766
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getContainerMimeType()Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v4

    .line 770
    invoke-static {v4}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getFilteredMimeType(Ljava/lang/String;)Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v4

    .line 774
    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 775
    .line 776
    .line 777
    move-result-object v3

    .line 778
    invoke-virtual {v3, v14}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 779
    .line 780
    .line 781
    move-result-object v3

    .line 782
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 783
    .line 784
    .line 785
    move-result-object v3

    .line 786
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 787
    .line 788
    .line 789
    move-result v4

    .line 790
    const/4 v6, 0x5

    .line 791
    if-eqz v4, :cond_23

    .line 792
    .line 793
    move-object/from16 v4, v17

    .line 794
    .line 795
    move-object/from16 v12, v47

    .line 796
    .line 797
    :goto_22
    const/4 v13, 0x0

    .line 798
    goto/16 :goto_27

    .line 799
    .line 800
    :cond_23
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 801
    .line 802
    .line 803
    move-result v4

    .line 804
    sparse-switch v4, :sswitch_data_0

    .line 805
    .line 806
    .line 807
    :goto_23
    move-object/from16 v4, v17

    .line 808
    .line 809
    :goto_24
    move-object/from16 v12, v47

    .line 810
    .line 811
    :goto_25
    const/4 v13, -0x1

    .line 812
    goto :goto_26

    .line 813
    :sswitch_0
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 814
    .line 815
    .line 816
    move-result v4

    .line 817
    if-nez v4, :cond_24

    .line 818
    .line 819
    goto :goto_23

    .line 820
    :cond_24
    move-object/from16 v4, v17

    .line 821
    .line 822
    move-object/from16 v12, v47

    .line 823
    .line 824
    const/4 v13, 0x4

    .line 825
    goto :goto_26

    .line 826
    :sswitch_1
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 827
    .line 828
    .line 829
    move-result v4

    .line 830
    if-nez v4, :cond_25

    .line 831
    .line 832
    goto :goto_23

    .line 833
    :cond_25
    move-object/from16 v4, v17

    .line 834
    .line 835
    move-object/from16 v12, v47

    .line 836
    .line 837
    const/4 v13, 0x3

    .line 838
    goto :goto_26

    .line 839
    :sswitch_2
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 840
    .line 841
    .line 842
    move-result v4

    .line 843
    if-nez v4, :cond_26

    .line 844
    .line 845
    goto :goto_23

    .line 846
    :cond_26
    move-object/from16 v4, v17

    .line 847
    .line 848
    move-object/from16 v12, v47

    .line 849
    .line 850
    const/4 v13, 0x2

    .line 851
    goto :goto_26

    .line 852
    :sswitch_3
    move-object/from16 v4, v17

    .line 853
    .line 854
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 855
    .line 856
    .line 857
    move-result v12

    .line 858
    if-nez v12, :cond_27

    .line 859
    .line 860
    goto :goto_24

    .line 861
    :cond_27
    move-object/from16 v12, v47

    .line 862
    .line 863
    const/4 v13, 0x1

    .line 864
    goto :goto_26

    .line 865
    :sswitch_4
    move-object/from16 v4, v17

    .line 866
    .line 867
    move-object/from16 v12, v47

    .line 868
    .line 869
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 870
    .line 871
    .line 872
    move-result v13

    .line 873
    if-nez v13, :cond_28

    .line 874
    .line 875
    goto :goto_25

    .line 876
    :cond_28
    const/4 v13, 0x0

    .line 877
    :goto_26
    packed-switch v13, :pswitch_data_0

    .line 878
    .line 879
    .line 880
    goto :goto_22

    .line 881
    :pswitch_0
    const/4 v13, 0x4

    .line 882
    goto :goto_27

    .line 883
    :pswitch_1
    const/4 v13, 0x3

    .line 884
    goto :goto_27

    .line 885
    :pswitch_2
    const/4 v13, 0x1

    .line 886
    goto :goto_27

    .line 887
    :pswitch_3
    const/4 v13, 0x2

    .line 888
    goto :goto_27

    .line 889
    :pswitch_4
    move v13, v6

    .line 890
    :goto_27
    invoke-virtual {v3, v13}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 891
    .line 892
    .line 893
    move-result-object v3

    .line 894
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getAudioSampleRateHz()I

    .line 895
    .line 896
    .line 897
    move-result v13

    .line 898
    sparse-switch v13, :sswitch_data_1

    .line 899
    .line 900
    .line 901
    const/4 v13, -0x1

    .line 902
    :sswitch_5
    invoke-virtual {v3, v13}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 903
    .line 904
    .line 905
    move-result-object v3

    .line 906
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getAudioChannelCount()I

    .line 907
    .line 908
    .line 909
    move-result v13

    .line 910
    invoke-virtual {v3, v13}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 911
    .line 912
    .line 913
    move-result-object v3

    .line 914
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getAudioSampleCount()J

    .line 915
    .line 916
    .line 917
    move-result-wide v13

    .line 918
    invoke-virtual {v3, v13, v14}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 919
    .line 920
    .line 921
    move-result-object v3

    .line 922
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    .line 923
    .line 924
    .line 925
    move-result v13

    .line 926
    invoke-virtual {v3, v13}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 927
    .line 928
    .line 929
    move-result-object v3

    .line 930
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    .line 931
    .line 932
    .line 933
    move-result v13

    .line 934
    invoke-virtual {v3, v13}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 935
    .line 936
    .line 937
    move-result-object v3

    .line 938
    invoke-virtual {v3, v7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 939
    .line 940
    .line 941
    move-result-object v3

    .line 942
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    .line 943
    .line 944
    .line 945
    move-result v7

    .line 946
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    .line 947
    .line 948
    .line 949
    move-result v13

    .line 950
    if-lez v7, :cond_2c

    .line 951
    .line 952
    if-gtz v13, :cond_29

    .line 953
    .line 954
    goto :goto_28

    .line 955
    :cond_29
    if-ge v7, v13, :cond_2a

    .line 956
    .line 957
    const/4 v7, 0x3

    .line 958
    goto :goto_29

    .line 959
    :cond_2a
    if-ge v13, v7, :cond_2b

    .line 960
    .line 961
    const/4 v7, 0x2

    .line 962
    goto :goto_29

    .line 963
    :cond_2b
    const/4 v7, 0x1

    .line 964
    goto :goto_29

    .line 965
    :cond_2c
    :goto_28
    const/4 v7, 0x0

    .line 966
    :goto_29
    invoke-virtual {v3, v7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 967
    .line 968
    .line 969
    move-result-object v3

    .line 970
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getVideoDataSpace()I

    .line 971
    .line 972
    .line 973
    move-result v7

    .line 974
    invoke-virtual {v3, v7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 975
    .line 976
    .line 977
    move-result-object v3

    .line 978
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getVideoDataSpace()I

    .line 979
    .line 980
    .line 981
    move-result v7

    .line 982
    invoke-static {v7, v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoHdrFormatEnum(ILjava/lang/String;)I

    .line 983
    .line 984
    .line 985
    move-result v5

    .line 986
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 987
    .line 988
    .line 989
    move-result-object v3

    .line 990
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getVideoFrameRate()F

    .line 991
    .line 992
    .line 993
    move-result v5

    .line 994
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 995
    .line 996
    .line 997
    move-result v5

    .line 998
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 999
    .line 1000
    .line 1001
    move-result-object v3

    .line 1002
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getVideoFrameRate()F

    .line 1003
    .line 1004
    .line 1005
    move-result v5

    .line 1006
    invoke-static {v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoFrameRateEnum(F)I

    .line 1007
    .line 1008
    .line 1009
    move-result v5

    .line 1010
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v3

    .line 1014
    move-object/from16 v5, p0

    .line 1015
    .line 1016
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v3

    .line 1020
    move-object/from16 v5, v24

    .line 1021
    .line 1022
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v3

    .line 1026
    const-wide/16 v13, 0x1

    .line 1027
    .line 1028
    and-long v13, v19, v13

    .line 1029
    .line 1030
    cmp-long v5, v13, v31

    .line 1031
    .line 1032
    if-eqz v5, :cond_2d

    .line 1033
    .line 1034
    const/4 v5, 0x1

    .line 1035
    goto :goto_2a

    .line 1036
    :cond_2d
    const/4 v5, 0x0

    .line 1037
    :goto_2a
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v3

    .line 1041
    const-wide/16 v13, 0x2

    .line 1042
    .line 1043
    and-long v13, v19, v13

    .line 1044
    .line 1045
    cmp-long v5, v13, v31

    .line 1046
    .line 1047
    if-eqz v5, :cond_2e

    .line 1048
    .line 1049
    const/4 v5, 0x1

    .line 1050
    goto :goto_2b

    .line 1051
    :cond_2e
    const/4 v5, 0x0

    .line 1052
    :goto_2b
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v3

    .line 1056
    const-wide/16 v13, 0x4

    .line 1057
    .line 1058
    and-long v13, v19, v13

    .line 1059
    .line 1060
    cmp-long v5, v13, v31

    .line 1061
    .line 1062
    if-eqz v5, :cond_2f

    .line 1063
    .line 1064
    const/4 v5, 0x1

    .line 1065
    goto :goto_2c

    .line 1066
    :cond_2f
    const/4 v5, 0x0

    .line 1067
    :goto_2c
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v3

    .line 1071
    const-wide/16 v13, 0x8

    .line 1072
    .line 1073
    and-long v13, v19, v13

    .line 1074
    .line 1075
    cmp-long v5, v13, v31

    .line 1076
    .line 1077
    if-eqz v5, :cond_30

    .line 1078
    .line 1079
    const/4 v5, 0x1

    .line 1080
    goto :goto_2d

    .line 1081
    :cond_30
    const/4 v5, 0x0

    .line 1082
    :goto_2d
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v3

    .line 1086
    const-wide/16 v13, 0x10

    .line 1087
    .line 1088
    and-long v13, v19, v13

    .line 1089
    .line 1090
    cmp-long v5, v13, v31

    .line 1091
    .line 1092
    if-eqz v5, :cond_31

    .line 1093
    .line 1094
    const/4 v5, 0x1

    .line 1095
    goto :goto_2e

    .line 1096
    :cond_31
    const/4 v5, 0x0

    .line 1097
    :goto_2e
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v3

    .line 1101
    const-wide/16 v13, 0x20

    .line 1102
    .line 1103
    and-long v13, v19, v13

    .line 1104
    .line 1105
    cmp-long v5, v13, v31

    .line 1106
    .line 1107
    if-eqz v5, :cond_32

    .line 1108
    .line 1109
    const/4 v5, 0x1

    .line 1110
    goto :goto_2f

    .line 1111
    :cond_32
    const/4 v5, 0x0

    .line 1112
    :goto_2f
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v3

    .line 1116
    const-wide/16 v13, 0x40

    .line 1117
    .line 1118
    and-long v13, v19, v13

    .line 1119
    .line 1120
    cmp-long v5, v13, v31

    .line 1121
    .line 1122
    if-eqz v5, :cond_33

    .line 1123
    .line 1124
    const/4 v5, 0x1

    .line 1125
    goto :goto_30

    .line 1126
    :cond_33
    const/4 v5, 0x0

    .line 1127
    :goto_30
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v3

    .line 1131
    const-wide/16 v13, 0x80

    .line 1132
    .line 1133
    and-long v13, v19, v13

    .line 1134
    .line 1135
    cmp-long v5, v13, v31

    .line 1136
    .line 1137
    if-eqz v5, :cond_34

    .line 1138
    .line 1139
    const/4 v5, 0x1

    .line 1140
    goto :goto_31

    .line 1141
    :cond_34
    const/4 v5, 0x0

    .line 1142
    :goto_31
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v3

    .line 1146
    and-long v7, v19, v8

    .line 1147
    .line 1148
    cmp-long v5, v7, v31

    .line 1149
    .line 1150
    if-eqz v5, :cond_35

    .line 1151
    .line 1152
    const/4 v9, 0x1

    .line 1153
    goto :goto_32

    .line 1154
    :cond_35
    const/4 v9, 0x0

    .line 1155
    :goto_32
    invoke-virtual {v3, v9}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v3

    .line 1159
    and-long v7, v19, v45

    .line 1160
    .line 1161
    cmp-long v5, v7, v31

    .line 1162
    .line 1163
    if-eqz v5, :cond_36

    .line 1164
    .line 1165
    const/4 v9, 0x1

    .line 1166
    goto :goto_33

    .line 1167
    :cond_36
    const/4 v9, 0x0

    .line 1168
    :goto_33
    invoke-virtual {v3, v9}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v3

    .line 1172
    and-long v7, v19, v48

    .line 1173
    .line 1174
    cmp-long v5, v7, v31

    .line 1175
    .line 1176
    if-eqz v5, :cond_37

    .line 1177
    .line 1178
    const/4 v9, 0x1

    .line 1179
    goto :goto_34

    .line 1180
    :cond_37
    const/4 v9, 0x0

    .line 1181
    :goto_34
    invoke-virtual {v3, v9}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v3

    .line 1185
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getDurationMillis()J

    .line 1186
    .line 1187
    .line 1188
    move-result-wide v7

    .line 1189
    invoke-static {v7, v8}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetBucketedDurationMillis(J)J

    .line 1190
    .line 1191
    .line 1192
    move-result-wide v7

    .line 1193
    invoke-virtual {v3, v7, v8}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v3

    .line 1197
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getClipDurationMillis()J

    .line 1198
    .line 1199
    .line 1200
    move-result-wide v7

    .line 1201
    invoke-static {v7, v8}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetBucketedDurationMillis(J)J

    .line 1202
    .line 1203
    .line 1204
    move-result-wide v7

    .line 1205
    invoke-virtual {v3, v7, v8}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v3

    .line 1209
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getContainerMimeType()Ljava/lang/String;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v5

    .line 1213
    invoke-static {v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getFilteredMimeType(Ljava/lang/String;)Ljava/lang/String;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v5

    .line 1217
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v3

    .line 1221
    move-object/from16 v5, v23

    .line 1222
    .line 1223
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v3

    .line 1227
    move-object/from16 v5, v22

    .line 1228
    .line 1229
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v3

    .line 1233
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1234
    .line 1235
    .line 1236
    move-result v7

    .line 1237
    if-eqz v7, :cond_38

    .line 1238
    .line 1239
    :goto_35
    const/4 v7, 0x0

    .line 1240
    goto :goto_38

    .line 1241
    :cond_38
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 1242
    .line 1243
    .line 1244
    move-result v7

    .line 1245
    sparse-switch v7, :sswitch_data_2

    .line 1246
    .line 1247
    .line 1248
    :goto_36
    const/4 v9, -0x1

    .line 1249
    goto :goto_37

    .line 1250
    :sswitch_6
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1251
    .line 1252
    .line 1253
    move-result v0

    .line 1254
    if-nez v0, :cond_39

    .line 1255
    .line 1256
    goto :goto_36

    .line 1257
    :cond_39
    const/4 v9, 0x4

    .line 1258
    goto :goto_37

    .line 1259
    :sswitch_7
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1260
    .line 1261
    .line 1262
    move-result v0

    .line 1263
    if-nez v0, :cond_3a

    .line 1264
    .line 1265
    goto :goto_36

    .line 1266
    :cond_3a
    const/4 v9, 0x3

    .line 1267
    goto :goto_37

    .line 1268
    :sswitch_8
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1269
    .line 1270
    .line 1271
    move-result v0

    .line 1272
    if-nez v0, :cond_3b

    .line 1273
    .line 1274
    goto :goto_36

    .line 1275
    :cond_3b
    const/4 v9, 0x2

    .line 1276
    goto :goto_37

    .line 1277
    :sswitch_9
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1278
    .line 1279
    .line 1280
    move-result v0

    .line 1281
    if-nez v0, :cond_3c

    .line 1282
    .line 1283
    goto :goto_36

    .line 1284
    :cond_3c
    const/4 v9, 0x1

    .line 1285
    goto :goto_37

    .line 1286
    :sswitch_a
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1287
    .line 1288
    .line 1289
    move-result v0

    .line 1290
    if-nez v0, :cond_3d

    .line 1291
    .line 1292
    goto :goto_36

    .line 1293
    :cond_3d
    const/4 v9, 0x0

    .line 1294
    :goto_37
    packed-switch v9, :pswitch_data_1

    .line 1295
    .line 1296
    .line 1297
    goto :goto_35

    .line 1298
    :pswitch_5
    const/4 v7, 0x4

    .line 1299
    goto :goto_38

    .line 1300
    :pswitch_6
    const/4 v7, 0x3

    .line 1301
    goto :goto_38

    .line 1302
    :pswitch_7
    const/4 v7, 0x1

    .line 1303
    goto :goto_38

    .line 1304
    :pswitch_8
    const/4 v7, 0x2

    .line 1305
    goto :goto_38

    .line 1306
    :pswitch_9
    move v7, v6

    .line 1307
    :goto_38
    invoke-virtual {v3, v7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v0

    .line 1311
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getAudioSampleRateHz()I

    .line 1312
    .line 1313
    .line 1314
    move-result v1

    .line 1315
    sparse-switch v1, :sswitch_data_3

    .line 1316
    .line 1317
    .line 1318
    const/4 v8, -0x1

    .line 1319
    goto :goto_39

    .line 1320
    :sswitch_b
    move v8, v1

    .line 1321
    :goto_39
    invoke-virtual {v0, v8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v0

    .line 1325
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getAudioChannelCount()I

    .line 1326
    .line 1327
    .line 1328
    move-result v1

    .line 1329
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v0

    .line 1333
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getAudioSampleCount()J

    .line 1334
    .line 1335
    .line 1336
    move-result-wide v1

    .line 1337
    invoke-virtual {v0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v0

    .line 1341
    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    .line 1342
    .line 1343
    .line 1344
    move-result v1

    .line 1345
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v0

    .line 1349
    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    .line 1350
    .line 1351
    .line 1352
    move-result v1

    .line 1353
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v0

    .line 1357
    move/from16 v1, v25

    .line 1358
    .line 1359
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v0

    .line 1363
    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    .line 1364
    .line 1365
    .line 1366
    move-result v1

    .line 1367
    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    .line 1368
    .line 1369
    .line 1370
    move-result v2

    .line 1371
    if-lez v1, :cond_41

    .line 1372
    .line 1373
    if-gtz v2, :cond_3e

    .line 1374
    .line 1375
    goto :goto_3a

    .line 1376
    :cond_3e
    if-ge v1, v2, :cond_3f

    .line 1377
    .line 1378
    const/4 v1, 0x3

    .line 1379
    goto :goto_3b

    .line 1380
    :cond_3f
    if-ge v2, v1, :cond_40

    .line 1381
    .line 1382
    const/4 v1, 0x2

    .line 1383
    goto :goto_3b

    .line 1384
    :cond_40
    const/4 v1, 0x1

    .line 1385
    goto :goto_3b

    .line 1386
    :cond_41
    :goto_3a
    const/4 v1, 0x0

    .line 1387
    :goto_3b
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v0

    .line 1391
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getVideoDataSpace()I

    .line 1392
    .line 1393
    .line 1394
    move-result v1

    .line 1395
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v0

    .line 1399
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getVideoDataSpace()I

    .line 1400
    .line 1401
    .line 1402
    move-result v1

    .line 1403
    invoke-static {v1, v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoHdrFormatEnum(ILjava/lang/String;)I

    .line 1404
    .line 1405
    .line 1406
    move-result v1

    .line 1407
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v0

    .line 1411
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getVideoFrameRate()F

    .line 1412
    .line 1413
    .line 1414
    move-result v1

    .line 1415
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 1416
    .line 1417
    .line 1418
    move-result v1

    .line 1419
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v0

    .line 1423
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getVideoFrameRate()F

    .line 1424
    .line 1425
    .line 1426
    move-result v1

    .line 1427
    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoFrameRateEnum(F)I

    .line 1428
    .line 1429
    .line 1430
    move-result v1

    .line 1431
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v0

    .line 1435
    move-object/from16 v1, v21

    .line 1436
    .line 1437
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v0

    .line 1441
    move-object/from16 v8, v28

    .line 1442
    .line 1443
    invoke-virtual {v0, v8}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v0

    .line 1447
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v0

    .line 1451
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 1452
    .line 1453
    .line 1454
    move-result-object v0

    .line 1455
    invoke-static {v0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 1456
    .line 1457
    .line 1458
    return-void

    .line 1459
    :sswitch_data_0
    .sparse-switch
        -0x631b55f6 -> :sswitch_4
        -0x63185e82 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    :sswitch_data_1
    .sparse-switch
        0x1f40 -> :sswitch_5
        0x2b11 -> :sswitch_5
        0x3e80 -> :sswitch_5
        0x5622 -> :sswitch_5
        0xac44 -> :sswitch_5
        0xbb80 -> :sswitch_5
        0x17700 -> :sswitch_5
        0x2ee00 -> :sswitch_5
    .end sparse-switch

    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    :sswitch_data_2
    .sparse-switch
        -0x631b55f6 -> :sswitch_a
        -0x63185e82 -> :sswitch_9
        0x4f62373a -> :sswitch_8
        0x5f50bed8 -> :sswitch_7
        0x5f50bed9 -> :sswitch_6
    .end sparse-switch

    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    :sswitch_data_3
    .sparse-switch
        0x1f40 -> :sswitch_b
        0x2b11 -> :sswitch_b
        0x3e80 -> :sswitch_b
        0x5622 -> :sswitch_b
        0xac44 -> :sswitch_b
        0xbb80 -> :sswitch_b
        0x17700 -> :sswitch_b
        0x2ee00 -> :sswitch_b
    .end sparse-switch
.end method

.method public final reportNetworkEvent(Ljava/lang/String;Landroid/media/metrics/NetworkEvent;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const p3, 0x1869f

    .line 6
    .line 7
    .line 8
    if-ne p0, p3, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/16 p3, 0x141

    .line 16
    .line 17
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p2}, Landroid/media/metrics/NetworkEvent;->getNetworkType()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p2}, Landroid/media/metrics/NetworkEvent;->getTimeSinceCreatedMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide p1

    .line 37
    invoke-virtual {p0, p1, p2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final reportPlaybackErrorEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackErrorEvent;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const p3, 0x1869f

    .line 6
    .line 7
    .line 8
    if-ne p0, p3, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/16 p3, 0x143

    .line 16
    .line 17
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getExceptionStack()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getErrorCode()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getSubErrorCode()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getTimeSinceCreatedMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide p1

    .line 53
    invoke-virtual {p0, p1, p2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final reportPlaybackMetrics(Ljava/lang/String;Landroid/media/metrics/PlaybackMetrics;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const p3, 0x1869f

    .line 6
    .line 7
    .line 8
    if-ne p0, p3, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    const/16 v0, 0x140

    .line 16
    .line 17
    invoke-virtual {p3, v0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    const/4 v0, 0x0

    .line 22
    if-nez p0, :cond_1

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move p0, v0

    .line 30
    :goto_0
    invoke-virtual {p3, p0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getMediaDurationMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    invoke-virtual {p0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getStreamSource()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getStreamType()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getPlaybackType()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getDrmType()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getContentType()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getPlayerName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getPlayerVersion()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    new-array p1, v0, [B

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getVideoFramesPlayed()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getVideoFramesDropped()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getAudioUnderrunCount()I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getNetworkBytesRead()J

    .line 133
    .line 134
    .line 135
    move-result-wide v1

    .line 136
    invoke-virtual {p0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getLocalBytesRead()J

    .line 141
    .line 142
    .line 143
    move-result-wide v1

    .line 144
    invoke-virtual {p0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getNetworkTransferDurationMillis()J

    .line 149
    .line 150
    .line 151
    move-result-wide v1

    .line 152
    invoke-virtual {p0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getDrmSessionId()[B

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method public final reportPlaybackStateEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackStateEvent;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const p3, 0x1869f

    .line 6
    .line 7
    .line 8
    if-ne p0, p3, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/16 p3, 0x142

    .line 16
    .line 17
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackStateEvent;->getState()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackStateEvent;->getTimeSinceCreatedMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide p1

    .line 37
    invoke-virtual {p0, p1, p2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final reportTrackChangeEvent(Ljava/lang/String;Landroid/media/metrics/TrackChangeEvent;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const p3, 0x1869f

    .line 6
    .line 7
    .line 8
    if-ne p0, p3, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/16 p3, 0x144

    .line 16
    .line 17
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTrackState()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTrackChangeReason()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getContainerMimeType()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getSampleMimeType()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getCodecName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getBitrate()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTimeSinceCreatedMillis()J

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    invoke-virtual {p0, v0, v1}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTrackType()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getLanguage()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getLanguageRegion()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getChannelCount()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getAudioSampleRate()I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getWidth()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getHeight()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getVideoFrameRate()F

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method
