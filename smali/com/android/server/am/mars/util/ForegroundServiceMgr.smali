.class public final Lcom/android/server/am/mars/util/ForegroundServiceMgr;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final getAccesesTimeHelper:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mGetUsingFGSTypeRunnable:Lcom/android/server/am/mars/util/ForegroundServiceMgr$$ExternalSyntheticLambda0;

.field public final mMapFGSRecord:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mProcessObserver:Lcom/android/server/am/mars/util/ForegroundServiceMgr$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mMapFGSRecord:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/am/mars/util/ForegroundServiceMgr$1;-><init>(Lcom/android/server/am/mars/util/ForegroundServiceMgr;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mProcessObserver:Lcom/android/server/am/mars/util/ForegroundServiceMgr$1;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;-><init>(Lcom/android/server/am/mars/util/ForegroundServiceMgr;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->getAccesesTimeHelper:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;

    .line 24
    .line 25
    new-instance v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/android/server/am/mars/util/ForegroundServiceMgr$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/mars/util/ForegroundServiceMgr;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mGetUsingFGSTypeRunnable:Lcom/android/server/am/mars/util/ForegroundServiceMgr$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    return-void
.end method

.method public static isFGSTarget(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-interface {v1, p0}, Landroid/content/pm/IPackageManager;->getTargetSdkVersion(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    const-string/jumbo v1, "getPackageManager() failed "

    .line 13
    .line 14
    .line 15
    const-string v2, "ForegroundServiceMgr"

    .line 16
    .line 17
    invoke-static {v1, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    move p0, v0

    .line 21
    :goto_0
    const/16 v1, 0x22

    .line 22
    .line 23
    if-lt p0, v1, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    :cond_0
    return v0
.end method

.method public static roundDownToMinute(J)J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p0, v0

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x3e8

    .line 8
    .line 9
    div-long/2addr p0, v0

    .line 10
    const-wide/16 v0, 0x3c

    .line 11
    .line 12
    div-long v0, p0, v0

    .line 13
    .line 14
    :cond_0
    return-wide v0
.end method


# virtual methods
.method public final onForegroundServiceNotificationUpdated(Ljava/lang/String;IIZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onForegroundServiceStateChanged(Ljava/lang/String;IIZ)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->isFGSTarget(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    if-eqz p3, :cond_3

    .line 6
    .line 7
    iget-object p3, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mMapFGSRecord:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    check-cast p3, Lcom/android/server/am/mars/ForegroundServiceRecord;

    .line 18
    .line 19
    if-nez p3, :cond_0

    .line 20
    .line 21
    new-instance p3, Lcom/android/server/am/mars/ForegroundServiceRecord;

    .line 22
    .line 23
    invoke-direct {p3, p1}, Lcom/android/server/am/mars/ForegroundServiceRecord;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mMapFGSRecord:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_0
    if-eqz p4, :cond_1

    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide p0

    .line 41
    iput-wide p0, p3, Lcom/android/server/am/mars/ForegroundServiceRecord;->mFGSStartTime:J

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    iput-wide v0, p3, Lcom/android/server/am/mars/ForegroundServiceRecord;->mFGSEndTime:J

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->getAccesesTimeHelper:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    const-string/jumbo p3, "appops"

    .line 56
    .line 57
    .line 58
    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    invoke-static {p3}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    iput-object p3, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 67
    .line 68
    iget-object p3, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;->visitor:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;

    .line 69
    .line 70
    iput p2, p3, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;->filterUid:I

    .line 71
    .line 72
    iput-object p1, p3, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;->filterPackageName:Ljava/lang/String;

    .line 73
    .line 74
    iget-object p3, p3, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;->accessTimePerOp:Landroid/util/ArrayMap;

    .line 75
    .line 76
    invoke-virtual {p3}, Landroid/util/ArrayMap;->clear()V

    .line 77
    .line 78
    .line 79
    iget-object p3, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 80
    .line 81
    sget-object p4, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 82
    .line 83
    if-eqz p3, :cond_2

    .line 84
    .line 85
    new-instance p3, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$$ExternalSyntheticLambda0;

    .line 86
    .line 87
    invoke-direct {p3, p0, p2, p1}, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sget-boolean p1, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 91
    .line 92
    iget-object p1, p4, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 93
    .line 94
    const-wide/16 v0, 0x0

    .line 95
    .line 96
    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    .line 98
    .line 99
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;->this$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mGetUsingFGSTypeRunnable:Lcom/android/server/am/mars/util/ForegroundServiceMgr$$ExternalSyntheticLambda0;

    .line 102
    .line 103
    sget-boolean p1, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 104
    .line 105
    iget-object p1, p4, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 106
    .line 107
    const-wide/16 p2, 0x3e8

    .line 108
    .line 109
    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    .line 111
    .line 112
    :cond_3
    :goto_0
    return-void
.end method
