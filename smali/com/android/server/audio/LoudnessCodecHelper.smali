.class public final Lcom/android/server/audio/LoudnessCodecHelper;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field static final SPL_RANGE_LARGE:I = 0x3

.field static final SPL_RANGE_MEDIUM:I = 0x2

.field static final SPL_RANGE_SMALL:I = 0x1

.field static final SPL_RANGE_UNKNOWN:I

.field public static final sLogger:Lcom/android/server/utils/EventLogger;


# instance fields
.field public final mAudioService:Lcom/android/server/audio/AudioService;

.field public final mCachedProperties:Ljava/util/HashMap;

.field public final mLock:Ljava/lang/Object;

.field public final mLoudnessUpdateDispatchers:Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;

.field public final mPiidToDeviceIdCache:Landroid/util/SparseIntArray;

.field public final mPiidToPidCache:Landroid/util/SparseIntArray;

.field public final mStartedConfigInfo:Ljava/util/HashMap;

.field public final mStartedConfigPiids:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/utils/EventLogger;

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    const-string v2, "Loudness updates"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/server/audio/LoudnessCodecHelper;->sLogger:Lcom/android/server/utils/EventLogger;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;-><init>(Lcom/android/server/audio/LoudnessCodecHelper;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLoudnessUpdateDispatchers:Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigPiids:Ljava/util/HashMap;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigInfo:Ljava/util/HashMap;

    .line 31
    .line 32
    new-instance v0, Landroid/util/SparseIntArray;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToDeviceIdCache:Landroid/util/SparseIntArray;

    .line 38
    .line 39
    new-instance v0, Landroid/util/SparseIntArray;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToPidCache:Landroid/util/SparseIntArray;

    .line 45
    .line 46
    new-instance v0, Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mCachedProperties:Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-object v0, p1

    .line 57
    check-cast v0, Lcom/android/server/audio/AudioService;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final dispatchNewLoudnessParameters(ILandroid/os/PersistableBundle;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLoudnessUpdateDispatchers:Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Landroid/media/ILoudnessCodecUpdatesDispatcher;

    .line 15
    .line 16
    invoke-interface {v2, p1, p2}, Landroid/media/ILoudnessCodecUpdatesDispatcher;->dispatchLoudnessCodecParameterChange(ILandroid/os/PersistableBundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :catch_0
    move-exception v2

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v4, "Error dispatching for sessionId "

    .line 24
    .line 25
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v4, " bundle: "

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-string v4, "AS.LoudnessCodecHelper"

    .line 44
    .line 45
    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 9

    .line 1
    const-string v0, "\nRegistered clients:\n"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigPiids:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/util/Map$Entry;

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/util/Set;

    .line 36
    .line 37
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Ljava/lang/Integer;

    .line 52
    .line 53
    iget-object v5, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToPidCache:Landroid/util/SparseIntArray;

    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    const/4 v7, -0x1

    .line 60
    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    iget-object v6, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigInfo:Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    check-cast v6, Ljava/util/Set;

    .line 75
    .line 76
    if-eqz v6, :cond_1

    .line 77
    .line 78
    const-string v7, "Player piid %d pid %d active codec types %s\n"

    .line 79
    .line 80
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-interface {v6}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    new-instance v8, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda0;

    .line 89
    .line 90
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-interface {v6, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    const-string v8, ", "

    .line 98
    .line 99
    invoke-static {v8}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    invoke-interface {v6, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catchall_0
    move-exception p0

    .line 120
    goto :goto_1

    .line 121
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 122
    .line 123
    .line 124
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    sget-object p0, Lcom/android/server/audio/LoudnessCodecHelper;->sLogger:Lcom/android/server/utils/EventLogger;

    .line 126
    .line 127
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    throw p0
.end method

.method public final getCodecBundle_l(ILjava/lang/String;Landroid/media/LoudnessCodecInfo;)Landroid/os/PersistableBundle;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    :try_start_0
    invoke-static {}, Landroid/media/audio/Flags;->automaticBtDeviceType()Z

    .line 9
    .line 10
    .line 11
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v5, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 13
    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    :try_start_1
    invoke-virtual {v5, p2}, Lcom/android/server/audio/AudioService;->getBluetoothAudioDeviceCategory(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto/16 :goto_9

    .line 23
    .line 24
    :cond_0
    invoke-static {p1}, Landroid/media/AudioSystem;->isBluetoothLeDevice(I)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-virtual {v5, p2, v4}, Lcom/android/server/audio/AudioService;->getBluetoothAudioDeviceCategory_legacy(Ljava/lang/String;Z)I

    .line 29
    .line 30
    .line 31
    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :goto_0
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-interface {v3}, Landroid/media/permission/SafeCloseable;->close()V

    .line 35
    .line 36
    .line 37
    :cond_1
    const/4 v3, 0x3

    .line 38
    const/4 v4, 0x6

    .line 39
    if-ne p1, v2, :cond_7

    .line 40
    .line 41
    const-string/jumbo p1, "audio.loudness.builtin-speaker-spl-range-size"

    .line 42
    .line 43
    .line 44
    const-string/jumbo p2, "unknown"

    .line 45
    .line 46
    .line 47
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-nez p2, :cond_5

    .line 56
    .line 57
    const/4 p2, -0x1

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    sparse-switch v5, :sswitch_data_0

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :sswitch_0
    const-string/jumbo v5, "small"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    move p2, v2

    .line 77
    goto :goto_1

    .line 78
    :sswitch_1
    const-string/jumbo v5, "large"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_3

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    move p2, v1

    .line 89
    goto :goto_1

    .line 90
    :sswitch_2
    const-string/jumbo v5, "medium"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_4

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    move p2, v0

    .line 101
    :goto_1
    packed-switch p2, :pswitch_data_0

    .line 102
    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_5
    iget p1, v5, Lcom/android/server/audio/AudioService;->mPlatformType:I

    .line 106
    .line 107
    if-ne p1, v3, :cond_6

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_6
    if-ne p1, v2, :cond_a

    .line 111
    .line 112
    :goto_2
    goto :goto_3

    .line 113
    :cond_7
    const/high16 v5, 0x4000000

    .line 114
    .line 115
    if-eq p1, v5, :cond_d

    .line 116
    .line 117
    const/16 v5, 0x8

    .line 118
    .line 119
    if-eq p1, v5, :cond_d

    .line 120
    .line 121
    const/4 v5, 0x4

    .line 122
    if-eq p1, v5, :cond_d

    .line 123
    .line 124
    invoke-static {p1}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    if-eqz v6, :cond_8

    .line 129
    .line 130
    if-ne p2, v3, :cond_8

    .line 131
    .line 132
    goto :goto_6

    .line 133
    :cond_8
    invoke-static {p1}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_c

    .line 138
    .line 139
    if-ne p2, v5, :cond_9

    .line 140
    .line 141
    :goto_3
    :pswitch_0
    move p1, v2

    .line 142
    goto :goto_7

    .line 143
    :cond_9
    const/4 p1, 0x5

    .line 144
    if-ne p2, p1, :cond_b

    .line 145
    .line 146
    :cond_a
    :goto_4
    :pswitch_1
    move p1, v1

    .line 147
    goto :goto_7

    .line 148
    :cond_b
    if-ne p2, v4, :cond_c

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_c
    :goto_5
    move p1, v0

    .line 152
    goto :goto_7

    .line 153
    :cond_d
    :goto_6
    :pswitch_2
    move p1, v3

    .line 154
    :goto_7
    iget-boolean p2, p3, Landroid/media/LoudnessCodecInfo;->isDownmixing:Z

    .line 155
    .line 156
    iget p3, p3, Landroid/media/LoudnessCodecInfo;->metadataType:I

    .line 157
    .line 158
    new-instance v5, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;

    .line 159
    .line 160
    invoke-direct {v5, p3, p1, p2}, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;-><init>(IIZ)V

    .line 161
    .line 162
    .line 163
    iget-object v6, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mCachedProperties:Ljava/util/HashMap;

    .line 164
    .line 165
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    if-eqz v6, :cond_e

    .line 170
    .line 171
    iget-object p0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mCachedProperties:Ljava/util/HashMap;

    .line 172
    .line 173
    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    check-cast p0, Landroid/os/PersistableBundle;

    .line 178
    .line 179
    return-object p0

    .line 180
    :cond_e
    new-instance v6, Landroid/os/PersistableBundle;

    .line 181
    .line 182
    invoke-direct {v6}, Landroid/os/PersistableBundle;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v7, "aac-drc-effect-type"

    .line 186
    .line 187
    const-string v8, "aac-drc-heavy-compression"

    .line 188
    .line 189
    const-string v9, "aac-target-ref-level"

    .line 190
    .line 191
    if-eq p1, v1, :cond_14

    .line 192
    .line 193
    const/16 v10, 0x60

    .line 194
    .line 195
    if-eq p1, v2, :cond_12

    .line 196
    .line 197
    if-eq p1, v3, :cond_10

    .line 198
    .line 199
    invoke-virtual {v6, v9, v10}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 200
    .line 201
    .line 202
    if-ne p3, v1, :cond_f

    .line 203
    .line 204
    invoke-virtual {v6, v8, p2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 205
    .line 206
    .line 207
    goto :goto_8

    .line 208
    :cond_f
    if-ne p3, v2, :cond_16

    .line 209
    .line 210
    invoke-virtual {v6, v7, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 211
    .line 212
    .line 213
    goto :goto_8

    .line 214
    :cond_10
    const/16 p1, 0x7c

    .line 215
    .line 216
    invoke-virtual {v6, v9, p1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 217
    .line 218
    .line 219
    if-ne p3, v1, :cond_11

    .line 220
    .line 221
    invoke-virtual {v6, v8, v0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 222
    .line 223
    .line 224
    goto :goto_8

    .line 225
    :cond_11
    if-ne p3, v2, :cond_16

    .line 226
    .line 227
    invoke-virtual {v6, v7, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 228
    .line 229
    .line 230
    goto :goto_8

    .line 231
    :cond_12
    invoke-virtual {v6, v9, v10}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 232
    .line 233
    .line 234
    if-ne p3, v1, :cond_13

    .line 235
    .line 236
    invoke-virtual {v6, v8, p2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 237
    .line 238
    .line 239
    goto :goto_8

    .line 240
    :cond_13
    if-ne p3, v2, :cond_16

    .line 241
    .line 242
    invoke-virtual {v6, v7, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 243
    .line 244
    .line 245
    goto :goto_8

    .line 246
    :cond_14
    const/16 p1, 0x40

    .line 247
    .line 248
    invoke-virtual {v6, v9, p1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 249
    .line 250
    .line 251
    if-ne p3, v1, :cond_15

    .line 252
    .line 253
    invoke-virtual {v6, v8, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 254
    .line 255
    .line 256
    goto :goto_8

    .line 257
    :cond_15
    if-ne p3, v2, :cond_16

    .line 258
    .line 259
    invoke-virtual {v6, v7, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 260
    .line 261
    .line 262
    :cond_16
    :goto_8
    iget-object p0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mCachedProperties:Ljava/util/HashMap;

    .line 263
    .line 264
    invoke-virtual {p0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    return-object v6

    .line 268
    :goto_9
    if-eqz v3, :cond_17

    .line 269
    .line 270
    :try_start_2
    invoke-interface {v3}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 271
    .line 272
    .line 273
    goto :goto_a

    .line 274
    :catchall_1
    move-exception p1

    .line 275
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 276
    .line 277
    .line 278
    :cond_17
    :goto_a
    throw p0

    .line 279
    :sswitch_data_0
    .sparse-switch
        -0x4041708b -> :sswitch_2
        0x61fbb3b -> :sswitch_1
        0x6879507 -> :sswitch_0
    .end sparse-switch

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final getLoudnessParams(Landroid/media/LoudnessCodecInfo;)Landroid/os/PersistableBundle;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 2
    .line 3
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/AudioService;->getDevicesForAttributesInt(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v1

    .line 42
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p0, v2, v0, p1}, Lcom/android/server/audio/LoudnessCodecHelper;->getCodecBundle_l(ILjava/lang/String;Landroid/media/LoudnessCodecInfo;)Landroid/os/PersistableBundle;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    monitor-exit v1

    .line 55
    return-object p0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0

    .line 59
    :cond_0
    new-instance p0, Landroid/os/PersistableBundle;

    .line 60
    .line 61
    invoke-direct {p0}, Landroid/os/PersistableBundle;-><init>()V

    .line 62
    .line 63
    .line 64
    return-object p0
.end method
