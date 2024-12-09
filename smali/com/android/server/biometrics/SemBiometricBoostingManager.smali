.class public final Lcom/android/server/biometrics/SemBiometricBoostingManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static sInstance:Lcom/android/server/biometrics/SemBiometricBoostingManager;


# instance fields
.field public final mDvfsMgrs:Landroid/util/SparseArray;

.field public mIsEnabledSsrm:Z

.field public final mReleasers:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    .line 17
    .line 18
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/biometrics/SemBiometricBoostingManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/biometrics/SemBiometricBoostingManager;->sInstance:Lcom/android/server/biometrics/SemBiometricBoostingManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/biometrics/SemBiometricBoostingManager;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/android/server/biometrics/SemBiometricBoostingManager;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/android/server/biometrics/SemBiometricBoostingManager;->sInstance:Lcom/android/server/biometrics/SemBiometricBoostingManager;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/biometrics/SemBiometricBoostingManager;->sInstance:Lcom/android/server/biometrics/SemBiometricBoostingManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw v1
.end method

.method public static sendBroadcastForBoosting(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "BiometricsBoosting"

    .line 2
    .line 3
    new-instance v1, Landroid/content/Intent;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 9
    .line 10
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string/jumbo v1, "sendBroadcastForBoosting: "

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized acquireDvfs(Landroid/content/Context;IILjava/lang/String;I)V
    .locals 3

    .line 1
    const-string v0, "acquireDvfs: "

    .line 2
    .line 3
    const-string v1, "acquireDvfs: "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/samsung/android/os/SemDvfsManager;

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    invoke-static {p1, p4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    const-string p1, "BiometricsBoosting"

    .line 23
    .line 24
    const-string p2, "acquireDvfs: can\'t get SemDvfsManager"

    .line 25
    .line 26
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :cond_0
    :try_start_1
    const-string/jumbo p4, "biometrics_service"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p4}, Lcom/samsung/android/os/SemDvfsManager;->setProcName(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 41
    .line 42
    .line 43
    iget-object p2, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-virtual {p2, p3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    sget-boolean p2, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 49
    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    const-string p2, "BiometricsBoosting"

    .line 53
    .line 54
    new-instance p4, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p4

    .line 66
    invoke-static {p2, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 70
    .line 71
    .line 72
    iget-object p2, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    .line 73
    .line 74
    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    check-cast p2, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;

    .line 79
    .line 80
    if-nez p2, :cond_3

    .line 81
    .line 82
    new-instance p2, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;

    .line 83
    .line 84
    invoke-direct {p2, p1, p3}, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;-><init>(Landroid/content/Context;I)V

    .line 85
    .line 86
    .line 87
    iget-object p4, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    .line 88
    .line 89
    invoke-virtual {p4, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    invoke-virtual {p3, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 98
    .line 99
    .line 100
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    int-to-long p4, p5

    .line 105
    invoke-virtual {p3, p2, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    .line 107
    .line 108
    const-string p2, "CustomFrequencyManagerService"

    .line 109
    .line 110
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    check-cast p2, Landroid/os/CustomFrequencyManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .line 116
    if-eqz p2, :cond_4

    .line 117
    .line 118
    :try_start_2
    invoke-virtual {p2}, Landroid/os/CustomFrequencyManager;->disableGpisHint()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :catch_0
    move-exception p2

    .line 123
    :try_start_3
    const-string p3, "BiometricsBoosting"

    .line 124
    .line 125
    const-string p4, "acquireDvfs: failed to disableGipsHint"

    .line 126
    .line 127
    invoke-static {p3, p4, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    .line 129
    .line 130
    :cond_4
    :goto_1
    iget-boolean p2, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mIsEnabledSsrm:Z

    .line 131
    .line 132
    if-nez p2, :cond_5

    .line 133
    .line 134
    const-string/jumbo p2, "com.samsung.android.intent.action.BIOMETRIC_AUTHENTICATION_START"

    .line 135
    .line 136
    .line 137
    invoke-static {p1, p2}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->sendBroadcastForBoosting(Landroid/content/Context;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const/4 p1, 0x1

    .line 141
    iput-boolean p1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mIsEnabledSsrm:Z

    .line 142
    .line 143
    :cond_5
    sget-boolean p1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 144
    .line 145
    if-eqz p1, :cond_6

    .line 146
    .line 147
    const-string p1, "BiometricsBoosting"

    .line 148
    .line 149
    new-instance p2, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-object p3, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    .line 155
    .line 156
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    .line 157
    .line 158
    .line 159
    move-result p3

    .line 160
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string p3, ", "

    .line 164
    .line 165
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget-object p3, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    .line 169
    .line 170
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    .line 171
    .line 172
    .line 173
    move-result p3

    .line 174
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string p3, ", "

    .line 178
    .line 179
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    iget-boolean p3, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mIsEnabledSsrm:Z

    .line 183
    .line 184
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 192
    .line 193
    .line 194
    :cond_6
    monitor-exit p0

    .line 195
    return-void

    .line 196
    :goto_2
    monitor-exit p0

    .line 197
    throw p1
.end method

.method public final declared-synchronized release(Landroid/content/Context;I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "release: "

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/samsung/android/os/SemDvfsManager;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->delete(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mIsEnabledSsrm:Z

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    const-string/jumbo v1, "com.samsung.android.intent.action.BIOMETRIC_AUTHENTICATION_STOP"

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v1}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->sendBroadcastForBoosting(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    iput-boolean v1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mIsEnabledSsrm:Z

    .line 46
    .line 47
    :cond_1
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    iget-object p1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->delete(I)V

    .line 67
    .line 68
    .line 69
    sget-boolean p1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    const-string p1, "BiometricsBoosting"

    .line 74
    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p2, ", "

    .line 84
    .line 85
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object p2, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    .line 89
    .line 90
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p2, ", "

    .line 98
    .line 99
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-object p2, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    .line 103
    .line 104
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .line 117
    .line 118
    :cond_3
    monitor-exit p0

    .line 119
    return-void

    .line 120
    :goto_1
    monitor-exit p0

    .line 121
    throw p1
.end method
