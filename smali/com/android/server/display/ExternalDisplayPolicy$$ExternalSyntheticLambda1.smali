.class public final synthetic Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/ExternalDisplayPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/ExternalDisplayPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/ExternalDisplayPolicy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/ExternalDisplayPolicy;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const-string p0, "ExternalDisplayPolicy"

    .line 27
    .line 28
    const-string/jumbo p1, "disableExternalDisplayLocked shouldn\'t be called when the connected display management flag is off"

    .line 29
    .line 30
    .line 31
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    goto/16 :goto_4

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayErrorHandlingFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    sget-boolean p0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    .line 47
    .line 48
    if-eqz p0, :cond_a

    .line 49
    .line 50
    const-string p0, "ExternalDisplayPolicy"

    .line 51
    .line 52
    const-string/jumbo p1, "disableExternalDisplayLocked shouldn\'t be called when the error handling flag is off"

    .line 53
    .line 54
    .line 55
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    goto/16 :goto_4

    .line 59
    .line 60
    :cond_2
    iget-boolean v0, p1, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 61
    .line 62
    if-nez v0, :cond_3

    .line 63
    .line 64
    sget-boolean p0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    .line 65
    .line 66
    if-eqz p0, :cond_a

    .line 67
    .line 68
    const-string p0, "ExternalDisplayPolicy"

    .line 69
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string/jumbo v1, "disableExternalDisplayLocked is not allowed: displayId="

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget p1, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 79
    .line 80
    const-string v1, " isEnabledLocked=false"

    .line 81
    .line 82
    invoke-static {v0, p1, v1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_4

    .line 86
    .line 87
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayAllowed()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_4

    .line 92
    .line 93
    const-string v0, "ExternalDisplayPolicy"

    .line 94
    .line 95
    const-string v1, "External display is currently not allowed and is getting disabled."

    .line 96
    .line 97
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 101
    .line 102
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    .line 103
    .line 104
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    new-instance v2, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;

    .line 108
    .line 109
    invoke-direct {v2, v1}, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/notifications/DisplayNotificationManager;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    .line 114
    .line 115
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 116
    .line 117
    const/4 v1, 0x0

    .line 118
    invoke-virtual {v0, p1, v1}, Lcom/android/server/display/LogicalDisplayMapper;->setDisplayEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    .line 119
    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 122
    .line 123
    iget v0, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 124
    .line 125
    iget-object v2, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 126
    .line 127
    monitor-enter v2

    .line 128
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 129
    .line 130
    const/4 v4, 0x1

    .line 131
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->get(II)I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-eq v3, v4, :cond_9

    .line 136
    .line 137
    const/4 v4, 0x3

    .line 138
    if-ne v3, v4, :cond_5

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_5
    :goto_0
    iget-object v5, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 142
    .line 143
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-ge v1, v5, :cond_8

    .line 148
    .line 149
    iget-object v5, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 150
    .line 151
    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    if-eq v5, v0, :cond_6

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_6
    iget-object v5, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 159
    .line 160
    invoke-virtual {v5, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 161
    .line 162
    .line 163
    iget-object v5, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 164
    .line 165
    add-int/lit8 v6, v1, 0x1

    .line 166
    .line 167
    iget-boolean v7, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 168
    .line 169
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    const/16 v5, 0x326

    .line 173
    .line 174
    invoke-static {v5, v4, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZ)V

    .line 175
    .line 176
    .line 177
    sget-boolean v5, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    .line 178
    .line 179
    if-eqz v5, :cond_7

    .line 180
    .line 181
    const-string v5, "ExternalDisplayStatsService"

    .line 182
    .line 183
    new-instance v7, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string/jumbo v8, "logStateDisabled displayId="

    .line 189
    .line 190
    .line 191
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v8, " countOfExternalDisplays="

    .line 198
    .line 199
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v6, " currentState="

    .line 206
    .line 207
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v6, " state="

    .line 214
    .line 215
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v6, " mIsExternalDisplayUsedForAudio="

    .line 222
    .line 223
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    iget-boolean v6, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 227
    .line 228
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    goto :goto_1

    .line 239
    :catchall_0
    move-exception p0

    .line 240
    goto :goto_5

    .line 241
    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 242
    .line 243
    goto :goto_0

    .line 244
    :cond_8
    monitor-exit v2

    .line 245
    goto :goto_3

    .line 246
    :cond_9
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :goto_3
    sget-boolean p0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    .line 248
    .line 249
    if-eqz p0, :cond_a

    .line 250
    .line 251
    const-string p0, "ExternalDisplayPolicy"

    .line 252
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    const-string/jumbo v1, "disableExternalDisplayLocked complete displayId="

    .line 256
    .line 257
    .line 258
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    iget p1, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 262
    .line 263
    invoke-static {v0, p1, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 264
    .line 265
    .line 266
    :cond_a
    :goto_4
    return-void

    .line 267
    :goto_5
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    throw p0
.end method
