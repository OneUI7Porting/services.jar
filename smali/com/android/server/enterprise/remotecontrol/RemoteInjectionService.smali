.class public final Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;
.super Lcom/samsung/android/knox/remotecontrol/IRemoteInjection$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentDisplayHeight:I

.field public mCurrentDisplayWidth:I

.field public mDexScreenHeight:I

.field public mDexScreenWidth:I

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mInjector:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

.field public mKnoxRemoteScreenSessionOwnerUid:I

.field public final mRemoteControlDisabled:Landroid/util/SparseArray;

.field public mRemoteScreenHeight:I

.field public mRemoteScreenWatcherCallback:Lcom/samsung/android/knox/remotecontrol/IRemoteScreenWatcherCallback;

.field public mRemoteScreenWidth:I

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection$Stub;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteControlDisabled:Landroid/util/SparseArray;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mWindowManager:Landroid/view/WindowManager;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mInjector:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

    .line 26
    .line 27
    const-string/jumbo v0, "window"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/view/WindowManager;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mWindowManager:Landroid/view/WindowManager;

    .line 37
    .line 38
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->updateCurrentDisplayDimensions(I)V

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    iget v2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget v2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    .line 56
    .line 57
    :goto_0
    iput v2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    .line 58
    .line 59
    invoke-static {v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    .line 69
    .line 70
    :goto_1
    iput v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    .line 71
    .line 72
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 73
    .line 74
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 78
    .line 79
    const/4 p1, -0x1

    .line 80
    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mKnoxRemoteScreenSessionOwnerUid:I

    .line 81
    .line 82
    iput v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenWidth:I

    .line 83
    .line 84
    iput v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenHeight:I

    .line 85
    .line 86
    const-class p1, Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;

    .line 87
    .line 88
    new-instance v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$LocalService;

    .line 89
    .line 90
    invoke-direct {v0, p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$LocalService;-><init>(Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public static injectKeyEventInternal(Landroid/view/KeyEvent;Z)Z
    .locals 18

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getDownTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getEventTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getAction()I

    .line 10
    .line 11
    .line 12
    move-result v9

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 14
    .line 15
    .line 16
    move-result v10

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 18
    .line 19
    .line 20
    move-result v11

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getMetaState()I

    .line 22
    .line 23
    .line 24
    move-result v12

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 26
    .line 27
    .line 28
    move-result v13

    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getScanCode()I

    .line 30
    .line 31
    .line 32
    move-result v14

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getSource()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getFlags()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 42
    .line 43
    .line 44
    move-result v15

    .line 45
    if-nez v4, :cond_0

    .line 46
    .line 47
    const/16 v4, 0x101

    .line 48
    .line 49
    :cond_0
    move/from16 v16, v4

    .line 50
    .line 51
    const-wide/16 v6, 0x0

    .line 52
    .line 53
    cmp-long v4, v2, v6

    .line 54
    .line 55
    if-nez v4, :cond_1

    .line 56
    .line 57
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    :cond_1
    cmp-long v4, v0, v6

    .line 62
    .line 63
    if-nez v4, :cond_2

    .line 64
    .line 65
    move-wide v0, v2

    .line 66
    :cond_2
    new-instance v7, Landroid/view/KeyEvent;

    .line 67
    .line 68
    or-int/lit8 v17, v5, 0x8

    .line 69
    .line 70
    move-object v4, v7

    .line 71
    move-wide v5, v0

    .line 72
    move-object v0, v7

    .line 73
    move-wide v7, v2

    .line 74
    move v1, v15

    .line 75
    move/from16 v15, v17

    .line 76
    .line 77
    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 81
    .line 82
    .line 83
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    const/4 v2, 0x2

    .line 90
    goto :goto_0

    .line 91
    :cond_3
    const/4 v2, 0x1

    .line 92
    :goto_0
    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    return v0
.end method

.method public static isInPortrait(Landroid/view/Display;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 14
    :goto_1
    return p0
.end method


# virtual methods
.method public final addRemoteScreenWatcherCallback(Lcom/samsung/android/knox/remotecontrol/IRemoteScreenWatcherCallback;)Z
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWatcherCallback:Lcom/samsung/android/knox/remotecontrol/IRemoteScreenWatcherCallback;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isUsingKnoxRemoteScreen()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final allowRemoteControl(Lcom/samsung/android/knox/ContextInfo;ZZ)Z
    .locals 8

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    new-instance p3, Ljava/util/ArrayList;

    .line 4
    .line 5
    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    .line 6
    .line 7
    .line 8
    filled-new-array {v0}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mInjector:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 34
    .line 35
    invoke-virtual {v0, p1, p3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceDoPoOnlyPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance p3, Ljava/util/ArrayList;

    .line 41
    .line 42
    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_REMOTE_CONTROL"

    .line 43
    .line 44
    .line 45
    filled-new-array {v0}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 57
    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mInjector:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 69
    .line 70
    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 71
    .line 72
    invoke-virtual {v0, p1, p3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    :goto_0
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 77
    .line 78
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 79
    .line 80
    .line 81
    move-result-wide v6

    .line 82
    const/4 p3, 0x0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 84
    .line 85
    const-string v1, "RESTRICTION"

    .line 86
    .line 87
    const-string v5, "allowRemoteControl"

    .line 88
    .line 89
    const/4 v4, 0x0

    .line 90
    move v2, p1

    .line 91
    move v3, p2

    .line 92
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    if-eqz p3, :cond_3

    .line 97
    .line 98
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    iget-object p2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteControlDisabled:Landroid/util/SparseArray;

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlAllowed(I)Z

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    xor-int/lit8 p0, p0, 0x1

    .line 109
    .line 110
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p2, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :catchall_0
    move-exception p0

    .line 119
    goto :goto_3

    .line 120
    :cond_3
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :catch_0
    :try_start_1
    const-string p0, "RemoteInjection"

    .line 125
    .line 126
    const-string p1, "RemoteInjection.allowRemoteControl() exception : "

    .line 127
    .line 128
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :goto_2
    return p3

    .line 133
    :goto_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 134
    .line 135
    .line 136
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string p3, "android.permission.DUMP"

    .line 4
    .line 5
    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string p0, "Permission Denial: can\'t dump Enterprise Device Manager Service"

    .line 12
    .line 13
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/4 p1, 0x1

    .line 18
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getUsers(Z)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    const-string v0, "RemoteControl disallowed userId : "

    .line 27
    .line 28
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    move v1, v0

    .line 33
    :goto_0
    if-ge v0, p3, :cond_2

    .line 34
    .line 35
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 40
    .line 41
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlAllowed(I)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    if-nez v1, :cond_3

    .line 58
    .line 59
    const-string p0, "None"

    .line 60
    .line 61
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    return-void
.end method

.method public final injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    .line 7
    .line 8
    move-result v7

    .line 9
    const/4 v8, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    .line 14
    .line 15
    move-result-wide p0

    .line 16
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const-string v5, "RemoteInjectionService"

    .line 21
    .line 22
    const-string v6, "Remotely injecting a keystroke event into the UI failed"

    .line 23
    .line 24
    const/4 v2, 0x4

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v1, 0x5

    .line 27
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    return v8

    .line 34
    :catchall_0
    move-exception p2

    .line 35
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    throw p2

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 40
    const-string v2, "INJECT_KEY_EVENT"

    .line 41
    .line 42
    invoke-static {v1, v2}, Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;->enforceCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 46
    .line 47
    .line 48
    move-result-wide v9

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteInjectionDisabled(I)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    const-string v0, "RemoteInjection"

    .line 54
    .line 55
    if-eqz p0, :cond_1

    .line 56
    .line 57
    const-string p0, "Remote Control is disabled, couldnt inject key event"

    .line 58
    .line 59
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    const/4 v2, 0x4

    .line 67
    const/4 v3, 0x0

    .line 68
    const/4 v1, 0x5

    .line 69
    const-string v5, "RemoteInjectionService"

    .line 70
    .line 71
    const-string v6, "Remotely injecting a keystroke event into the UI failed"

    .line 72
    .line 73
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    .line 78
    .line 79
    return v8

    .line 80
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    const/4 v1, 0x2

    .line 85
    if-eq p0, v1, :cond_2

    .line 86
    .line 87
    invoke-virtual {p1, v8}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 88
    .line 89
    .line 90
    :cond_2
    :try_start_1
    invoke-static {p1, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectKeyEventInternal(Landroid/view/KeyEvent;Z)Z

    .line 91
    .line 92
    .line 93
    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    goto :goto_0

    .line 95
    :catch_0
    move-exception p0

    .line 96
    const-string p1, "Error injecting key event : "

    .line 97
    .line 98
    invoke-static {p0, p1, v0}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    if-eqz v8, :cond_3

    .line 102
    .line 103
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    const/4 v2, 0x4

    .line 108
    const/4 v3, 0x1

    .line 109
    const/4 v1, 0x5

    .line 110
    const-string v5, "RemoteInjectionService"

    .line 111
    .line 112
    const-string v6, "Remotely injecting a keystroke event into the UI succeeded"

    .line 113
    .line 114
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    const/4 v2, 0x4

    .line 123
    const/4 v3, 0x0

    .line 124
    const/4 v1, 0x5

    .line 125
    const-string v5, "RemoteInjectionService"

    .line 126
    .line 127
    const-string v6, "Remotely injecting a keystroke event into the UI failed"

    .line 128
    .line 129
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    :goto_1
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 133
    .line 134
    .line 135
    return v8
.end method

.method public final injectKeyEventDex(Landroid/view/KeyEvent;Z)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "INJECT_KEY_EVENT_DEX"

    .line 3
    .line 4
    invoke-static {v0, v1}, Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;->enforceCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const-string p1, "RemoteInjection"

    .line 18
    .line 19
    const-string p2, "Error injecting Key event in dex screen"

    .line 20
    .line 21
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    return p0
.end method

.method public final injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "INJECT_POINTER_EVENT"

    .line 3
    .line 4
    invoke-static {v0, v1}, Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;->enforceCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    .line 13
    .line 14
    move-result v8

    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v9

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteInjectionDisabled(I)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const-string v2, "RemoteInjection"

    .line 24
    .line 25
    const/4 v11, 0x0

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    const-string p0, "Remote Control is disabled, couldnt inject pointer event"

    .line 29
    .line 30
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    const/4 v3, 0x4

    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v2, 0x5

    .line 40
    const-string v6, "RemoteInjectionService"

    .line 41
    .line 42
    const-string v7, "Remotely injecting a pointer (touch) event into the UI failed"

    .line 43
    .line 44
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    return v11

    .line 51
    :cond_0
    :try_start_0
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    const/4 v1, 0x2

    .line 67
    and-int/2addr p1, v1

    .line 68
    if-nez p1, :cond_1

    .line 69
    .line 70
    const/16 p1, 0x1002

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 73
    .line 74
    .line 75
    :cond_1
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p2, :cond_2

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    const/4 v1, 0x1

    .line 83
    :goto_0
    invoke-virtual {p1, p0, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 84
    .line 85
    .line 86
    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_1

    .line 88
    :catch_0
    move-exception p0

    .line 89
    const-string p1, "Error injecting trackball event : "

    .line 90
    .line 91
    invoke-static {p0, p1, v2}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_1
    if-eqz v11, :cond_3

    .line 95
    .line 96
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    const/4 v3, 0x4

    .line 101
    const/4 v4, 0x1

    .line 102
    const/4 v2, 0x5

    .line 103
    const-string v6, "RemoteInjectionService"

    .line 104
    .line 105
    const-string v7, "Remotely injecting a pointer (touch) event into the UI succeeded"

    .line 106
    .line 107
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    const/4 v3, 0x4

    .line 116
    const/4 v4, 0x0

    .line 117
    const/4 v2, 0x5

    .line 118
    const-string v6, "RemoteInjectionService"

    .line 119
    .line 120
    const-string v7, "Remotely injecting a pointer (touch) event into the UI failed"

    .line 121
    .line 122
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 123
    .line 124
    .line 125
    :goto_2
    if-eqz v0, :cond_4

    .line 126
    .line 127
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 128
    .line 129
    .line 130
    :cond_4
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 131
    .line 132
    .line 133
    return v11
.end method

.method public final injectPointerEventDex(Landroid/view/MotionEvent;Z)Z
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "INJECT_POINTER_EVENT_DEX"

    .line 3
    .line 4
    invoke-static {v0, v1}, Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;->enforceCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    .line 13
    .line 14
    move-result v8

    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v9

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteInjectionDisabled(I)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const-string v2, "RemoteInjection"

    .line 24
    .line 25
    const/4 v11, 0x0

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    const-string p0, "Remote Control is disabled, couldnt inject pointer event"

    .line 29
    .line 30
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    const/4 v3, 0x4

    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v2, 0x5

    .line 40
    const-string v6, "RemoteInjectionService"

    .line 41
    .line 42
    const-string v7, "Remotely injecting a pointer (touch) event into the UI failed"

    .line 43
    .line 44
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    return v11

    .line 51
    :cond_0
    const/4 v1, 0x2

    .line 52
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    const/4 v4, 0x1

    .line 60
    if-nez v3, :cond_1

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eq v3, v1, :cond_1

    .line 67
    .line 68
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception p0

    .line 73
    goto :goto_2

    .line 74
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    const/16 p1, 0x2002

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 85
    .line 86
    .line 87
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-eqz p2, :cond_2

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    move v1, v4

    .line 95
    :goto_1
    invoke-virtual {p1, p0, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 96
    .line 97
    .line 98
    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_3

    .line 100
    :goto_2
    const-string p1, "Error injecting pointer event in dex screen : "

    .line 101
    .line 102
    invoke-static {p0, p1, v2}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :goto_3
    if-eqz v11, :cond_3

    .line 106
    .line 107
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    const/4 v3, 0x4

    .line 112
    const/4 v4, 0x1

    .line 113
    const/4 v2, 0x5

    .line 114
    const-string v6, "RemoteInjectionService"

    .line 115
    .line 116
    const-string v7, "Remotely injecting a pointer (touch) event into the UI succeeded"

    .line 117
    .line 118
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    const/4 v3, 0x4

    .line 127
    const/4 v4, 0x0

    .line 128
    const/4 v2, 0x5

    .line 129
    const-string v6, "RemoteInjectionService"

    .line 130
    .line 131
    const-string v7, "Remotely injecting a pointer (touch) event into the UI failed"

    .line 132
    .line 133
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 134
    .line 135
    .line 136
    :goto_4
    if-eqz v0, :cond_4

    .line 137
    .line 138
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 139
    .line 140
    .line 141
    :cond_4
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 142
    .line 143
    .line 144
    return v11
.end method

.method public final injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "INJECT_TRACKBALL_EVENT"

    .line 3
    .line 4
    invoke-static {v0, v1}, Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;->enforceCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    .line 13
    .line 14
    move-result v8

    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v9

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteInjectionDisabled(I)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const-string v2, "RemoteInjection"

    .line 24
    .line 25
    const/4 v11, 0x0

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    const-string p0, "Remote Control is disabled, couldnt inject track ball event"

    .line 29
    .line 30
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    const/4 v3, 0x4

    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v2, 0x5

    .line 40
    const-string v6, "RemoteInjectionService"

    .line 41
    .line 42
    const-string v7, "Remotely injecting a trackball event into the UI failed"

    .line 43
    .line 44
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    return v11

    .line 51
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    and-int/lit8 p1, p1, 0x4

    .line 64
    .line 65
    if-nez p1, :cond_1

    .line 66
    .line 67
    const p1, 0x10004

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 71
    .line 72
    .line 73
    :cond_1
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p2, :cond_2

    .line 78
    .line 79
    const/4 p2, 0x2

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    const/4 p2, 0x1

    .line 82
    :goto_0
    invoke-virtual {p1, p0, p2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 83
    .line 84
    .line 85
    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_1

    .line 87
    :catch_0
    move-exception p0

    .line 88
    const-string p1, "Error injecting trackball event : "

    .line 89
    .line 90
    invoke-static {p0, p1, v2}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :goto_1
    if-eqz v11, :cond_3

    .line 94
    .line 95
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    const/4 v3, 0x4

    .line 100
    const/4 v4, 0x1

    .line 101
    const/4 v2, 0x5

    .line 102
    const-string v6, "RemoteInjectionService"

    .line 103
    .line 104
    const-string v7, "Remotely injecting a trackball event into the UI succeeded"

    .line 105
    .line 106
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    const/4 v3, 0x4

    .line 115
    const/4 v4, 0x0

    .line 116
    const/4 v2, 0x5

    .line 117
    const-string v6, "RemoteInjectionService"

    .line 118
    .line 119
    const-string v7, "Remotely injecting a trackball event into the UI failed"

    .line 120
    .line 121
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 122
    .line 123
    .line 124
    :goto_2
    if-eqz v0, :cond_4

    .line 125
    .line 126
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 127
    .line 128
    .line 129
    :cond_4
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 130
    .line 131
    .line 132
    return v11
.end method

.method public final isRemoteControlAllowed(I)Z
    .locals 3

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "RESTRICTION"

    const-string v2, "allowRemoteControl"

    .line 2
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    move v0, p1

    goto :goto_0

    .line 4
    :catch_0
    const-string p0, "RemoteInjection"

    const-string p1, "RemoteInjection.isRemoteControlAllowed() exception : "

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0
.end method

.method public final isRemoteControlAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 5
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlAllowed(I)Z

    move-result p0

    return p0
.end method

.method public final isRemoteControlDisabled(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isUsingKnoxRemoteScreen()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mKnoxRemoteScreenSessionOwnerUid:I

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlDisabledInternal(II)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public final isRemoteControlDisabledInternal(II)Z
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    if-ne p1, p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteControlDisabled:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    :try_start_0
    sget-object p2, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 19
    .line 20
    const-class v2, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 21
    .line 22
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 27
    .line 28
    check-cast p2, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(I)Z

    .line 34
    .line 35
    .line 36
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    const/4 v2, 0x0

    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    move p1, v2

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Ljava/lang/Boolean;

    .line 53
    .line 54
    if-nez p0, :cond_3

    .line 55
    .line 56
    return v2

    .line 57
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    return p0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    .line 65
    .line 66
    throw p0
.end method

.method public final isRemoteInjectionDisabled(I)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    const/4 v4, 0x1

    .line 11
    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 20
    .line 21
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 22
    .line 23
    invoke-virtual {p0, v3, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlDisabledInternal(II)Z

    .line 24
    .line 25
    .line 26
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    .line 29
    .line 30
    return p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    :try_start_1
    const-string p0, "RemoteInjection"

    .line 34
    .line 35
    const-string p1, "Failed to get top activity user id"

    .line 36
    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    return v2

    .line 44
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method public final isUsingKnoxRemoteScreen()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mKnoxRemoteScreenSessionOwnerUid:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-eq p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public final notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminRemoved(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteControlDisabled:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlAllowed(I)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    xor-int/lit8 p0, p0, 0x1

    .line 16
    .line 17
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final systemReady()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;-><init>(Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string/jumbo v3, "desktopmode"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v5, 0x4

    .line 28
    if-ne v2, v5, :cond_0

    .line 29
    .line 30
    move v2, v4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v2, 0x0

    .line 33
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    move v5, v4

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v5, 0x0

    .line 42
    :goto_1
    if-eqz v2, :cond_2

    .line 43
    .line 44
    if-eqz v5, :cond_2

    .line 45
    .line 46
    move v6, v4

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/4 v6, 0x0

    .line 49
    :goto_2
    const/4 v7, 0x2

    .line 50
    if-eqz v6, :cond_3

    .line 51
    .line 52
    iget-object v8, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    const-string/jumbo v9, "display"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    check-cast v8, Landroid/hardware/display/DisplayManager;

    .line 62
    .line 63
    invoke-virtual {v8, v7}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    goto :goto_3

    .line 68
    :cond_3
    iget-object v8, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mWindowManager:Landroid/view/WindowManager;

    .line 69
    .line 70
    if-nez v8, :cond_4

    .line 71
    .line 72
    iget-object v8, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mInjector:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

    .line 73
    .line 74
    iget-object v8, v8, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    const-string/jumbo v9, "window"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    check-cast v8, Landroid/view/WindowManager;

    .line 84
    .line 85
    iput-object v8, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mWindowManager:Landroid/view/WindowManager;

    .line 86
    .line 87
    :cond_4
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    invoke-virtual {v0, v9}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->updateCurrentDisplayDimensions(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 99
    .line 100
    .line 101
    move-result v15

    .line 102
    new-array v9, v15, [Landroid/view/MotionEvent$PointerCoords;

    .line 103
    .line 104
    new-array v14, v15, [Landroid/view/MotionEvent$PointerProperties;

    .line 105
    .line 106
    const/4 v10, 0x0

    .line 107
    :goto_4
    if-ge v10, v15, :cond_13

    .line 108
    .line 109
    new-instance v11, Landroid/view/MotionEvent$PointerCoords;

    .line 110
    .line 111
    invoke-direct {v11}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 112
    .line 113
    .line 114
    aput-object v11, v9, v10

    .line 115
    .line 116
    new-instance v11, Landroid/view/MotionEvent$PointerProperties;

    .line 117
    .line 118
    invoke-direct {v11}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 119
    .line 120
    .line 121
    aput-object v11, v14, v10

    .line 122
    .line 123
    aget-object v11, v9, v10

    .line 124
    .line 125
    invoke-virtual {v1, v10, v11}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 126
    .line 127
    .line 128
    aget-object v11, v14, v10

    .line 129
    .line 130
    invoke-virtual {v1, v10, v11}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 131
    .line 132
    .line 133
    aget-object v11, v14, v10

    .line 134
    .line 135
    iput v4, v11, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 136
    .line 137
    if-nez v10, :cond_5

    .line 138
    .line 139
    if-eqz v6, :cond_5

    .line 140
    .line 141
    const/4 v12, 0x3

    .line 142
    iput v12, v11, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 143
    .line 144
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isUsingKnoxRemoteScreen()Z

    .line 145
    .line 146
    .line 147
    move-result v11

    .line 148
    if-eqz v11, :cond_12

    .line 149
    .line 150
    const-string v11, "RemoteInjection"

    .line 151
    .line 152
    if-eqz v6, :cond_a

    .line 153
    .line 154
    iget v12, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenWidth:I

    .line 155
    .line 156
    if-eqz v12, :cond_8

    .line 157
    .line 158
    iget v12, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenHeight:I

    .line 159
    .line 160
    if-nez v12, :cond_6

    .line 161
    .line 162
    goto :goto_6

    .line 163
    :cond_6
    invoke-static {v8}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    .line 164
    .line 165
    .line 166
    move-result v12

    .line 167
    if-eqz v12, :cond_7

    .line 168
    .line 169
    iget v12, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenWidth:I

    .line 170
    .line 171
    :goto_5
    int-to-float v12, v12

    .line 172
    goto :goto_7

    .line 173
    :cond_7
    iget v12, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenHeight:I

    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_8
    :goto_6
    invoke-static {v8}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    .line 177
    .line 178
    .line 179
    move-result v12

    .line 180
    if-eqz v12, :cond_9

    .line 181
    .line 182
    iget v12, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_9
    iget v12, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    .line 186
    .line 187
    goto :goto_5

    .line 188
    :goto_7
    new-instance v13, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string/jumbo v3, "getRemoteWidthForDex() : "

    .line 191
    .line 192
    .line 193
    invoke-direct {v13, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    goto :goto_a

    .line 207
    :cond_a
    invoke-static {v8}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    if-eqz v3, :cond_b

    .line 212
    .line 213
    iget v3, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    .line 214
    .line 215
    :goto_8
    int-to-float v3, v3

    .line 216
    move v12, v3

    .line 217
    goto :goto_9

    .line 218
    :cond_b
    iget v3, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    .line 219
    .line 220
    goto :goto_8

    .line 221
    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    const-string/jumbo v13, "getRemoteWidth() : "

    .line 224
    .line 225
    .line 226
    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    :goto_a
    if-eqz v6, :cond_10

    .line 240
    .line 241
    iget v3, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenWidth:I

    .line 242
    .line 243
    if-eqz v3, :cond_e

    .line 244
    .line 245
    iget v3, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenHeight:I

    .line 246
    .line 247
    if-nez v3, :cond_c

    .line 248
    .line 249
    goto :goto_c

    .line 250
    :cond_c
    invoke-static {v8}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-eqz v3, :cond_d

    .line 255
    .line 256
    iget v3, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenHeight:I

    .line 257
    .line 258
    :goto_b
    int-to-float v3, v3

    .line 259
    goto :goto_d

    .line 260
    :cond_d
    iget v3, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenWidth:I

    .line 261
    .line 262
    goto :goto_b

    .line 263
    :cond_e
    :goto_c
    invoke-static {v8}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    if-eqz v3, :cond_f

    .line 268
    .line 269
    iget v3, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    .line 270
    .line 271
    goto :goto_b

    .line 272
    :cond_f
    iget v3, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    .line 273
    .line 274
    goto :goto_b

    .line 275
    :goto_d
    new-instance v13, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    const-string/jumbo v4, "getRemoteHeightForDex() : "

    .line 278
    .line 279
    .line 280
    invoke-direct {v13, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    goto :goto_10

    .line 294
    :cond_10
    invoke-static {v8}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    if-eqz v3, :cond_11

    .line 299
    .line 300
    iget v3, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    .line 301
    .line 302
    :goto_e
    int-to-float v3, v3

    .line 303
    goto :goto_f

    .line 304
    :cond_11
    iget v3, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    .line 305
    .line 306
    goto :goto_e

    .line 307
    :goto_f
    new-instance v4, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    const-string/jumbo v13, "getRemoteHeight() : "

    .line 310
    .line 311
    .line 312
    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    :goto_10
    aget-object v4, v9, v10

    .line 326
    .line 327
    iget v11, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 328
    .line 329
    iget v13, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    .line 330
    .line 331
    int-to-float v13, v13

    .line 332
    div-float/2addr v13, v12

    .line 333
    mul-float/2addr v13, v11

    .line 334
    iput v13, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 335
    .line 336
    iget v11, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 337
    .line 338
    iget v12, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    .line 339
    .line 340
    int-to-float v12, v12

    .line 341
    div-float/2addr v12, v3

    .line 342
    mul-float/2addr v12, v11

    .line 343
    iput v12, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 344
    .line 345
    :cond_12
    add-int/lit8 v10, v10, 0x1

    .line 346
    .line 347
    const/4 v4, 0x1

    .line 348
    goto/16 :goto_4

    .line 349
    .line 350
    :cond_13
    if-nez v5, :cond_14

    .line 351
    .line 352
    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    .line 353
    .line 354
    .line 355
    move-result v3

    .line 356
    move/from16 v25, v3

    .line 357
    .line 358
    goto :goto_11

    .line 359
    :cond_14
    if-eqz v2, :cond_15

    .line 360
    .line 361
    move/from16 v25, v7

    .line 362
    .line 363
    goto :goto_11

    .line 364
    :cond_15
    const/16 v25, 0x0

    .line 365
    .line 366
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 367
    .line 368
    .line 369
    move-result-wide v10

    .line 370
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 371
    .line 372
    .line 373
    move-result-wide v12

    .line 374
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    move-object v2, v14

    .line 379
    move v14, v0

    .line 380
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    .line 381
    .line 382
    .line 383
    move-result v18

    .line 384
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 385
    .line 386
    .line 387
    move-result v19

    .line 388
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    .line 389
    .line 390
    .line 391
    move-result v20

    .line 392
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    .line 393
    .line 394
    .line 395
    move-result v21

    .line 396
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 397
    .line 398
    .line 399
    move-result v22

    .line 400
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    .line 401
    .line 402
    .line 403
    move-result v23

    .line 404
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    .line 405
    .line 406
    .line 407
    move-result v24

    .line 408
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    .line 409
    .line 410
    .line 411
    move-result v26

    .line 412
    move-object/from16 v16, v2

    .line 413
    .line 414
    move-object/from16 v17, v9

    .line 415
    .line 416
    invoke-static/range {v10 .. v26}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    return-object v0
.end method

.method public final updateCurrentDisplayDimensions(I)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string/jumbo v1, "display"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mWindowManager:Landroid/view/WindowManager;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mInjector:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const-string/jumbo v1, "window"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/view/WindowManager;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mWindowManager:Landroid/view/WindowManager;

    .line 38
    .line 39
    :cond_1
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :goto_0
    new-instance v1, Landroid/graphics/Point;

    .line 44
    .line 45
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 46
    .line 47
    .line 48
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_FLEXIBLE_DUAL_MODE:Z

    .line 49
    .line 50
    const-string v3, "RemoteInjection"

    .line 51
    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-interface {v2, p1, v1}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catch_0
    const-string/jumbo p1, "getInitialDisplaySize() exception!!"

    .line 63
    .line 64
    .line 65
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :goto_1
    invoke-static {v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    iget p1, v1, Landroid/graphics/Point;->x:I

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    iget p1, v1, Landroid/graphics/Point;->y:I

    .line 78
    .line 79
    :goto_2
    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    .line 80
    .line 81
    invoke-static {v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    iget p1, v1, Landroid/graphics/Point;->y:I

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_3
    iget p1, v1, Landroid/graphics/Point;->x:I

    .line 91
    .line 92
    :goto_3
    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 96
    .line 97
    .line 98
    iget p1, v1, Landroid/graphics/Point;->x:I

    .line 99
    .line 100
    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    .line 101
    .line 102
    iget p1, v1, Landroid/graphics/Point;->y:I

    .line 103
    .line 104
    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    .line 105
    .line 106
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string/jumbo v0, "mCurrentDisplayWidth : "

    .line 109
    .line 110
    .line 111
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v0, ", mCurrentDisplayHeight : "

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    .line 125
    .line 126
    invoke-static {p1, p0, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public final updateDexScreenDimensions(III)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    const-string v0, "RemoteInjectionService: updateDexScreenDimensions() width : "

    .line 12
    .line 13
    const-string v1, ", height : "

    .line 14
    .line 15
    const-string v2, "RemoteInjection"

    .line 16
    .line 17
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput p3, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mKnoxRemoteScreenSessionOwnerUid:I

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isUsingKnoxRemoteScreen()Z

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    if-eqz p3, :cond_0

    .line 27
    .line 28
    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenWidth:I

    .line 29
    .line 30
    iput p2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenHeight:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x2

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->updateCurrentDisplayDimensions(I)V

    .line 35
    .line 36
    .line 37
    iget p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    .line 38
    .line 39
    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenWidth:I

    .line 40
    .line 41
    iget p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    .line 42
    .line 43
    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenHeight:I

    .line 44
    .line 45
    :goto_0
    return-void

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 47
    .line 48
    const-string p1, "Can only be called by system user"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0
.end method

.method public final updateRemoteScreenDimensionsAndCallerUid(III)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_3

    .line 10
    .line 11
    const-string v0, "RemoteInjectionService: updateRemoteScreenDimensions() width : "

    .line 12
    .line 13
    const-string v1, ", height : "

    .line 14
    .line 15
    const-string v2, ", uid "

    .line 16
    .line 17
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "RemoteInjection"

    .line 22
    .line 23
    invoke-static {v0, p3, v1}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput p3, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mKnoxRemoteScreenSessionOwnerUid:I

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isUsingKnoxRemoteScreen()Z

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    const/4 v0, 0x0

    .line 33
    if-eqz p3, :cond_0

    .line 34
    .line 35
    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    .line 36
    .line 37
    iput p2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->updateCurrentDisplayDimensions(I)V

    .line 41
    .line 42
    .line 43
    iget p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    .line 44
    .line 45
    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    .line 46
    .line 47
    iget p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    .line 48
    .line 49
    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    .line 50
    .line 51
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWatcherCallback:Lcom/samsung/android/knox/remotecontrol/IRemoteScreenWatcherCallback;

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isUsingKnoxRemoteScreen()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWatcherCallback:Lcom/samsung/android/knox/remotecontrol/IRemoteScreenWatcherCallback;

    .line 62
    .line 63
    invoke-interface {p1}, Lcom/samsung/android/knox/remotecontrol/IRemoteScreenWatcherCallback;->onRemoteScreenStart()V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :catch_0
    move-exception p1

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWatcherCallback:Lcom/samsung/android/knox/remotecontrol/IRemoteScreenWatcherCallback;

    .line 70
    .line 71
    invoke-interface {p1}, Lcom/samsung/android/knox/remotecontrol/IRemoteScreenWatcherCallback;->onRemoteScreenStop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :goto_1
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    :cond_2
    :goto_2
    iput v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenWidth:I

    .line 79
    .line 80
    iput v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mDexScreenHeight:I

    .line 81
    .line 82
    return-void

    .line 83
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 84
    .line 85
    const-string p1, "Can only be called by system user"

    .line 86
    .line 87
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0
.end method
