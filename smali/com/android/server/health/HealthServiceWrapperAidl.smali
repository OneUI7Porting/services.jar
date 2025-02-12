.class public final Lcom/android/server/health/HealthServiceWrapperAidl;
.super Lcom/android/server/health/HealthServiceWrapper;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field static final SERVICE_NAME:Ljava/lang/String;


# instance fields
.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public final mLastSehService:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mLastService:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mRegCallback:Lcom/android/server/health/HealthRegCallbackAidl;

.field public final mServiceCallback:Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroid/hardware/health/IHealth;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "/default"

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/android/server/health/HealthServiceWrapperAidl;->SERVICE_NAME:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/android/server/health/HealthRegCallbackAidl;Lcom/android/server/health/HealthServiceWrapperAidl$ServiceManagerStub;)V
    .locals 9

    .line 1
    const-string v0, "HealthServiceWrapperAidl"

    .line 2
    .line 3
    const-string v1, "HealthServiceWrapperAidl: newService: "

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Landroid/os/HandlerThread;

    .line 9
    .line 10
    const-string v3, "HealthServiceBinder"

    .line 11
    .line 12
    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object v2, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 16
    .line 17
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v2, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 23
    .line 24
    new-instance v3, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;

    .line 25
    .line 26
    invoke-direct {v3, p0}, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;-><init>(Lcom/android/server/health/HealthServiceWrapperAidl;)V

    .line 27
    .line 28
    .line 29
    iput-object v3, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mServiceCallback:Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;

    .line 30
    .line 31
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v3, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastSehService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 37
    .line 38
    const-wide/32 v3, 0x80000

    .line 39
    .line 40
    .line 41
    const-string v5, "HealthInitGetServiceAidl"

    .line 42
    .line 43
    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :try_start_0
    sget-object v5, Lcom/android/server/health/HealthServiceWrapperAidl;->SERVICE_NAME:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {v5}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    sget v6, Landroid/hardware/health/IHealth$Stub;->$r8$clinit:I

    .line 56
    .line 57
    const/4 v6, 0x0

    .line 58
    if-nez p2, :cond_0

    .line 59
    .line 60
    move-object v7, v6

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    sget-object v7, Landroid/hardware/health/IHealth;->DESCRIPTOR:Ljava/lang/String;

    .line 63
    .line 64
    invoke-interface {p2, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    if-eqz v7, :cond_1

    .line 69
    .line 70
    instance-of v8, v7, Landroid/hardware/health/IHealth;

    .line 71
    .line 72
    if-eqz v8, :cond_1

    .line 73
    .line 74
    check-cast v7, Landroid/hardware/health/IHealth;

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    new-instance v7, Landroid/hardware/health/IHealth$Stub$Proxy;

    .line 78
    .line 79
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object p2, v7, Landroid/hardware/health/IHealth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 83
    .line 84
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 97
    .line 98
    .line 99
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    .line 100
    .line 101
    .line 102
    if-eqz v7, :cond_6

    .line 103
    .line 104
    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v5}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    if-eqz p2, :cond_4

    .line 116
    .line 117
    :try_start_1
    invoke-interface {p2}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    sget v1, Lvendor/samsung/hardware/health/ISehHealth$Stub;->$r8$clinit:I

    .line 122
    .line 123
    if-nez p2, :cond_2

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_2
    sget-object v1, Lvendor/samsung/hardware/health/ISehHealth;->DESCRIPTOR:Ljava/lang/String;

    .line 127
    .line 128
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    if-eqz v1, :cond_3

    .line 133
    .line 134
    instance-of v2, v1, Lvendor/samsung/hardware/health/ISehHealth;

    .line 135
    .line 136
    if-eqz v2, :cond_3

    .line 137
    .line 138
    check-cast v1, Lvendor/samsung/hardware/health/ISehHealth;

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_3
    new-instance v1, Lvendor/samsung/hardware/health/ISehHealth$Stub$Proxy;

    .line 142
    .line 143
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 144
    .line 145
    .line 146
    iput-object p2, v1, Lvendor/samsung/hardware/health/ISehHealth$Stub$Proxy;->mRemote:Landroid/os/IBinder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :catch_0
    const-string p2, "Unable to register DeathRecipient for null"

    .line 150
    .line 151
    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    :cond_4
    :goto_1
    move-object v1, v6

    .line 155
    :goto_2
    iget-object p2, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastSehService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 156
    .line 157
    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    iput-object p1, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mRegCallback:Lcom/android/server/health/HealthRegCallbackAidl;

    .line 161
    .line 162
    if-eqz p1, :cond_5

    .line 163
    .line 164
    invoke-virtual {p1, v6, v1}, Lcom/android/server/health/HealthRegCallbackAidl;->onRegistration(Lvendor/samsung/hardware/health/ISehHealth;Lvendor/samsung/hardware/health/ISehHealth;)V

    .line 165
    .line 166
    .line 167
    :cond_5
    const-string p1, "HealthInitRegisterNotificationAidl"

    .line 168
    .line 169
    invoke-static {v3, v4, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 175
    .line 176
    .line 177
    :try_start_2
    sget-object p1, Lcom/android/server/health/HealthServiceWrapperAidl;->SERVICE_NAME:Ljava/lang/String;

    .line 178
    .line 179
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mServiceCallback:Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;

    .line 180
    .line 181
    invoke-static {p1, p0}, Landroid/os/ServiceManager;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    .line 183
    .line 184
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    .line 185
    .line 186
    .line 187
    const-string/jumbo p0, "health: HealthServiceWrapper listening to AIDL HAL"

    .line 188
    .line 189
    .line 190
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :catchall_0
    move-exception p0

    .line 195
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    .line 196
    .line 197
    .line 198
    throw p0

    .line 199
    :cond_6
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 200
    .line 201
    const-string p1, "IHealth service instance isn\'t available. Perhaps no permission?"

    .line 202
    .line 203
    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw p0

    .line 207
    :catchall_1
    move-exception p0

    .line 208
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    .line 209
    .line 210
    .line 211
    throw p0
.end method

.method public static traceEnd()V
    .locals 2

    .line 1
    const-wide/32 v0, 0x80000

    .line 2
    .line 3
    .line 4
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getHandlerThread()Landroid/os/HandlerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getHealthInfo()Landroid/hardware/health/HealthInfo;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/hardware/health/IHealth;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    :try_start_0
    check-cast p0, Landroid/hardware/health/IHealth$Stub$Proxy;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub$Proxy;->getHealthInfo()Landroid/hardware/health/HealthInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p0

    .line 20
    :catch_0
    return-object v0
.end method

.method public final getProperty(ILandroid/os/BatteryProperty;)I
    .locals 3

    .line 1
    const-wide/32 v0, 0x80000

    .line 2
    .line 3
    .line 4
    const-string v2, "HealthGetPropertyAidl"

    .line 5
    .line 6
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/health/HealthServiceWrapperAidl;->getPropertyInternal(ILandroid/os/BatteryProperty;)I

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    .line 14
    .line 15
    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public final getPropertyInternal(ILandroid/os/BatteryProperty;)I
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/hardware/health/IHealth;

    .line 8
    .line 9
    if-eqz p0, :cond_2

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, -0x1

    .line 13
    packed-switch p1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :pswitch_0
    :try_start_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->batteryPartStatusApi()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    check-cast p0, Landroid/hardware/health/IHealth$Stub$Proxy;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub$Proxy;->getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    iget p0, p0, Landroid/hardware/health/BatteryHealthData;->batteryPartStatus:I

    .line 31
    .line 32
    int-to-long v2, p0

    .line 33
    invoke-virtual {p2, v2, v3}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :pswitch_1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->batteryPartStatusApi()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    check-cast p0, Landroid/hardware/health/IHealth$Stub$Proxy;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub$Proxy;->getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    iget-object p0, p0, Landroid/hardware/health/BatteryHealthData;->batterySerialNumber:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p2, p0}, Landroid/os/BatteryProperty;->setString(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_0

    .line 56
    .line 57
    :pswitch_2
    check-cast p0, Landroid/hardware/health/IHealth$Stub$Proxy;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub$Proxy;->getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    iget-wide v2, p0, Landroid/hardware/health/BatteryHealthData;->batteryStateOfHealth:J

    .line 64
    .line 65
    invoke-virtual {p2, v2, v3}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :pswitch_3
    check-cast p0, Landroid/hardware/health/IHealth$Stub$Proxy;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub$Proxy;->getChargingPolicy()I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    int-to-long v2, p0

    .line 76
    invoke-virtual {p2, v2, v3}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :pswitch_4
    check-cast p0, Landroid/hardware/health/IHealth$Stub$Proxy;

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub$Proxy;->getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    iget-wide v2, p0, Landroid/hardware/health/BatteryHealthData;->batteryFirstUsageSeconds:J

    .line 87
    .line 88
    invoke-virtual {p2, v2, v3}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :pswitch_5
    check-cast p0, Landroid/hardware/health/IHealth$Stub$Proxy;

    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub$Proxy;->getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    iget-wide v2, p0, Landroid/hardware/health/BatteryHealthData;->batteryManufacturingDateSeconds:J

    .line 99
    .line 100
    invoke-virtual {p2, v2, v3}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :pswitch_6
    check-cast p0, Landroid/hardware/health/IHealth$Stub$Proxy;

    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub$Proxy;->getChargeStatus()I

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    int-to-long v2, p0

    .line 111
    invoke-virtual {p2, v2, v3}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :pswitch_7
    check-cast p0, Landroid/hardware/health/IHealth$Stub$Proxy;

    .line 116
    .line 117
    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub$Proxy;->getEnergyCounterNwh()J

    .line 118
    .line 119
    .line 120
    move-result-wide v2

    .line 121
    invoke-virtual {p2, v2, v3}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :pswitch_8
    check-cast p0, Landroid/hardware/health/IHealth$Stub$Proxy;

    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub$Proxy;->getCapacity()I

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    int-to-long v2, p0

    .line 132
    invoke-virtual {p2, v2, v3}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :pswitch_9
    check-cast p0, Landroid/hardware/health/IHealth$Stub$Proxy;

    .line 137
    .line 138
    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub$Proxy;->getCurrentAverageMicroamps()I

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    int-to-long v2, p0

    .line 143
    invoke-virtual {p2, v2, v3}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :pswitch_a
    check-cast p0, Landroid/hardware/health/IHealth$Stub$Proxy;

    .line 148
    .line 149
    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub$Proxy;->getCurrentNowMicroamps()I

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    int-to-long v2, p0

    .line 154
    invoke-virtual {p2, v2, v3}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :pswitch_b
    check-cast p0, Landroid/hardware/health/IHealth$Stub$Proxy;

    .line 159
    .line 160
    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub$Proxy;->getChargeCounterUah()I

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    int-to-long v2, p0

    .line 165
    invoke-virtual {p2, v2, v3}, Landroid/os/BatteryProperty;->setLong(J)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .line 167
    .line 168
    :cond_0
    :goto_0
    return v0

    .line 169
    :catch_0
    const/16 p0, 0xa

    .line 170
    .line 171
    if-ne p0, p1, :cond_1

    .line 172
    .line 173
    const-class p0, Landroid/os/BatteryManagerInternal;

    .line 174
    .line 175
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    check-cast p0, Landroid/os/BatteryManagerInternal;

    .line 180
    .line 181
    invoke-virtual {p0}, Landroid/os/BatteryManagerInternal;->getBatteryStateOfHealth()I

    .line 182
    .line 183
    .line 184
    move-result p0

    .line 185
    if-le p0, v1, :cond_1

    .line 186
    .line 187
    int-to-long p0, p0

    .line 188
    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 189
    .line 190
    .line 191
    return v0

    .line 192
    :cond_1
    const/4 p0, -0x3

    .line 193
    return p0

    .line 194
    :catch_1
    const/4 p0, -0x2

    .line 195
    return p0

    .line 196
    :catch_2
    return v1

    .line 197
    :cond_2
    new-instance p0, Landroid/os/RemoteException;

    .line 198
    .line 199
    const-string/jumbo p1, "no health service"

    .line 200
    .line 201
    .line 202
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw p0

    .line 206
    nop

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final scheduleUpdate()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/health/HealthServiceWrapperAidl;->getHandlerThread()Landroid/os/HandlerThread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/android/server/health/HealthServiceWrapperAidl$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/android/server/health/HealthServiceWrapperAidl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/health/HealthServiceWrapperAidl;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final sehWriteEnableToParam(ILjava/lang/String;Z)V
    .locals 4

    .line 1
    const-string v0, ", enable: "

    .line 2
    .line 3
    const-string v1, "]: , offset: "

    .line 4
    .line 5
    const-string v2, "HealthServiceWrapperAidl"

    .line 6
    .line 7
    const-string/jumbo v3, "sehWriteEnableToParam["

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastSehService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lvendor/samsung/hardware/health/ISehHealth;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    check-cast p0, Lvendor/samsung/hardware/health/ISehHealth$Stub$Proxy;

    .line 21
    .line 22
    invoke-virtual {p0, p1, p3}, Lvendor/samsung/hardware/health/ISehHealth$Stub$Proxy;->sehWriteEnableToParam(IZ)V

    .line 23
    .line 24
    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catch_0
    move-exception p0

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    .line 56
    .line 57
    const-string/jumbo v3, "no seh health service"

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    const-string v3, "Exception in sehWriteEnableToParam["

    .line 65
    .line 66
    invoke-static {p1, v3, p2, v1, v0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    :goto_1
    return-void
.end method
