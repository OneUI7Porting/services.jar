.class public final Lcom/samsung/android/server/audio/SensorHandleThread;
.super Ljava/lang/Thread;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# static fields
.field public static final sBluetoothCommunicationDevices:Ljava/util/Set;


# instance fields
.field public final mAudioService:Lcom/android/server/audio/AudioService;

.field public mDevicePositionChangedDuringRingtone:Z

.field public mIsClosed:Z

.field public mIsProximateRegistered:Z

.field public mIsSemMotionRegistered:Z

.field public final mJdmFlatMotionSensor:Landroid/hardware/Sensor;

.field public mMusicDevices:Ljava/util/Set;

.field public final mProximitySensor:Landroid/hardware/Sensor;

.field public final mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

.field public final mSemDevicePositionSensorEnabled:Z

.field public final mSemFlatMotionSensorEnabled:Z

.field public mSensorHandler:Landroid/os/Handler;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mVoiceDevices:Ljava/util/Set;

.field public final mediaCallback:Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;

.field public final voiceCallback:Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/server/audio/SensorHandleThread;->sBluetoothCommunicationDevices:Ljava/util/Set;

    .line 7
    .line 8
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    const/high16 v1, 0x20000000

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V
    .locals 2

    .line 1
    const-string v0, "SensorHandleThread"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsSemMotionRegistered:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsProximateRegistered:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsClosed:Z

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mVoiceDevices:Ljava/util/Set;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mMusicDevices:Ljava/util/Set;

    .line 17
    .line 18
    new-instance v0, Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/audio/SensorHandleThread;I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->voiceCallback:Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    new-instance v0, Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/audio/SensorHandleThread;I)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mediaCallback:Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 35
    .line 36
    const-string/jumbo p2, "sensor"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Landroid/hardware/SensorManager;

    .line 44
    .line 45
    iput-object p2, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSensorManager:Landroid/hardware/SensorManager;

    .line 46
    .line 47
    const/16 v0, 0x8

    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mProximitySensor:Landroid/hardware/Sensor;

    .line 54
    .line 55
    const v0, 0x100c9

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iput-object p2, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mJdmFlatMotionSensor:Landroid/hardware/Sensor;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    const-string v0, "com.sec.feature.sensorhub"

    .line 69
    .line 70
    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-eqz p2, :cond_0

    .line 75
    .line 76
    const-string/jumbo p2, "scontext"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lcom/samsung/android/hardware/context/SemContextManager;

    .line 84
    .line 85
    iput-object p1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 86
    .line 87
    if-eqz p1, :cond_0

    .line 88
    .line 89
    const/16 p2, 0x16

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    iput-boolean p2, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemDevicePositionSensorEnabled:Z

    .line 96
    .line 97
    if-nez p2, :cond_0

    .line 98
    .line 99
    const/16 p2, 0x14

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemFlatMotionSensorEnabled:Z

    .line 106
    .line 107
    :cond_0
    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mDevicePositionChangedDuringRingtone:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mMusicDevices:Ljava/util/Set;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    const/4 v2, 0x2

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v3, 0x1

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-gt v1, v3, :cond_2

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/16 v1, 0x14

    .line 41
    .line 42
    const-string v4, "l_hw_flat_motion_state=0"

    .line 43
    .line 44
    const-string v5, "l_hw_flat_motion_state=1"

    .line 45
    .line 46
    if-eq v0, v1, :cond_5

    .line 47
    .line 48
    const/16 v1, 0x16

    .line 49
    .line 50
    if-eq v0, v1, :cond_3

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getDevicePositionContext()Lcom/samsung/android/hardware/context/SemContextDevicePosition;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextDevicePosition;->getPosition()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-ne p1, v3, :cond_4

    .line 62
    .line 63
    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->getMode()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-ne p1, v3, :cond_7

    .line 77
    .line 78
    iput-boolean v3, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mDevicePositionChangedDuringRingtone:Z

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getFlatMotionContext()Lcom/samsung/android/hardware/context/SemContextFlatMotion;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextFlatMotion;->getAction()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-ne p1, v3, :cond_6

    .line 90
    .line 91
    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_6
    if-ne p1, v2, :cond_7

    .line 96
    .line 97
    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->getMode()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-ne p1, v3, :cond_7

    .line 107
    .line 108
    iput-boolean v3, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mDevicePositionChangedDuringRingtone:Z

    .line 109
    .line 110
    :cond_7
    :goto_0
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getMode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-le v0, v2, :cond_2

    .line 11
    .line 12
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 13
    .line 14
    aget v0, v0, v1

    .line 15
    .line 16
    float-to-double v3, v0

    .line 17
    const-wide/16 v5, 0x0

    .line 18
    .line 19
    cmpl-double v0, v3, v5

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const-string v0, "GAMEVOIP"

    .line 24
    .line 25
    iget-object v3, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 26
    .line 27
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mAppMode:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    iput-boolean v2, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsClosed:Z

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_3

    .line 40
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsClosed:Z

    .line 41
    .line 42
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsClosed:Z

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    const-string v0, "l_hw_proximity_sensor_state=1"

    .line 47
    .line 48
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const-string v0, "l_hw_proximity_sensor_state=0"

    .line 53
    .line 54
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mDevicePositionChangedDuringRingtone:Z

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    return-void

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mMusicDevices:Ljava/util/Set;

    .line 64
    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    return-void

    .line 68
    :cond_4
    const/4 v3, 0x2

    .line 69
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_5

    .line 78
    .line 79
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-gt v0, v2, :cond_5

    .line 88
    .line 89
    return-void

    .line 90
    :cond_5
    const-string v0, "jdm"

    .line 91
    .line 92
    const-string v3, "in_house"

    .line 93
    .line 94
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_7

    .line 99
    .line 100
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 101
    .line 102
    aget p1, p1, v1

    .line 103
    .line 104
    const/high16 v0, 0x3f800000    # 1.0f

    .line 105
    .line 106
    cmpl-float v0, p1, v0

    .line 107
    .line 108
    if-nez v0, :cond_6

    .line 109
    .line 110
    const-string p0, "l_hw_flat_motion_state=1"

    .line 111
    .line 112
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_6
    const/high16 v0, 0x40000000    # 2.0f

    .line 117
    .line 118
    cmpl-float p1, p1, v0

    .line 119
    .line 120
    if-nez p1, :cond_7

    .line 121
    .line 122
    const-string p1, "l_hw_flat_motion_state=0"

    .line 123
    .line 124
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->getMode()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-ne p1, v2, :cond_7

    .line 134
    .line 135
    iput-boolean v2, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mDevicePositionChangedDuringRingtone:Z

    .line 136
    .line 137
    :cond_7
    :goto_2
    return-void

    .line 138
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    throw p1
.end method

.method public final run()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSensorHandler:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final declared-synchronized startProximate()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mVoiceDevices:Ljava/util/Set;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/samsung/android/server/audio/SensorHandleThread;->sBluetoothCommunicationDevices:Ljava/util/Set;

    .line 13
    .line 14
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    new-instance v2, Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda2;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda2;-><init>(Ljava/util/Set;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    :goto_0
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const-string v0, "AS.SensorHandleThread"

    .line 29
    .line 30
    const-string/jumbo v1, "start fail by bluetooth communication device connection"

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsProximateRegistered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :cond_2
    const/4 v0, 0x1

    .line 47
    :try_start_2
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsProximateRegistered:Z

    .line 48
    .line 49
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSensorManager:Landroid/hardware/SensorManager;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mProximitySensor:Landroid/hardware/Sensor;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSensorHandler:Landroid/os/Handler;

    .line 54
    .line 55
    const/4 v3, 0x3

    .line 56
    invoke-virtual {v0, p0, v1, v3, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    .line 58
    .line 59
    monitor-exit p0

    .line 60
    return-void

    .line 61
    :goto_1
    monitor-exit p0

    .line 62
    throw v0
.end method

.method public final startSensor()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSensorHandler:Landroid/os/Handler;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->voiceCallback:Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/audio/AudioService;->registerCurrentDeviceChangedCallback(ILcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;Ljava/util/concurrent/Executor;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mediaCallback:Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    const/4 v3, 0x3

    .line 21
    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/audio/AudioService;->registerCurrentDeviceChangedCallback(ILcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;Ljava/util/concurrent/Executor;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SensorHandleThread;->startProximate()V

    .line 25
    .line 26
    .line 27
    monitor-enter p0

    .line 28
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsSemMotionRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    monitor-exit p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const/4 v0, 0x1

    .line 35
    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsSemMotionRegistered:Z

    .line 36
    .line 37
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemDevicePositionSensorEnabled:Z

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 42
    .line 43
    const/16 v1, 0x16

    .line 44
    .line 45
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemFlatMotionSensorEnabled:Z

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 56
    .line 57
    const/16 v1, 0x14

    .line 58
    .line 59
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_0
    monitor-exit p0

    .line 63
    :goto_1
    const-string v0, "jdm"

    .line 64
    .line 65
    const-string v1, "in_house"

    .line 66
    .line 67
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSensorManager:Landroid/hardware/SensorManager;

    .line 74
    .line 75
    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mJdmFlatMotionSensor:Landroid/hardware/Sensor;

    .line 76
    .line 77
    invoke-virtual {v0, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 78
    .line 79
    .line 80
    :cond_3
    return-void

    .line 81
    :goto_2
    monitor-exit p0

    .line 82
    throw v0
.end method

.method public final declared-synchronized stopProximate()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsProximateRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsProximateRegistered:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSensorManager:Landroid/hardware/SensorManager;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mProximitySensor:Landroid/hardware/Sensor;

    .line 14
    .line 15
    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    monitor-exit p0

    .line 22
    throw v0
.end method

.method public final stopSensor()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->voiceCallback:Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/android/server/audio/AudioService;->unregisterCurrentDeviceChangedCallback(ILcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mediaCallback:Lcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const/4 v3, 0x3

    .line 14
    invoke-virtual {v0, v3, v1}, Lcom/android/server/audio/AudioService;->unregisterCurrentDeviceChangedCallback(ILcom/samsung/android/server/audio/SensorHandleThread$$ExternalSyntheticLambda0;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SensorHandleThread;->stopProximate()V

    .line 18
    .line 19
    .line 20
    monitor-enter p0

    .line 21
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsSemMotionRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :try_start_1
    iput-boolean v2, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsSemMotionRegistered:Z

    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemDevicePositionSensorEnabled:Z

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 34
    .line 35
    const/16 v1, 0x16

    .line 36
    .line 37
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 38
    .line 39
    .line 40
    const-string v0, "l_hw_flat_motion_state=1"

    .line 41
    .line 42
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemFlatMotionSensorEnabled:Z

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 53
    .line 54
    const/16 v1, 0x14

    .line 55
    .line 56
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    .line 57
    .line 58
    .line 59
    const-string v0, "l_hw_flat_motion_state=1"

    .line 60
    .line 61
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    monitor-exit p0

    .line 65
    :goto_1
    const-string v0, "jdm"

    .line 66
    .line 67
    const-string v1, "in_house"

    .line 68
    .line 69
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    iget-object v0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mSensorManager:Landroid/hardware/SensorManager;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mJdmFlatMotionSensor:Landroid/hardware/Sensor;

    .line 78
    .line 79
    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    return-void

    .line 83
    :goto_2
    monitor-exit p0

    .line 84
    throw v0
.end method
