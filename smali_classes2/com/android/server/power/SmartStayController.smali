.class public final Lcom/android/server/power/SmartStayController;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mClock:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

.field public final mFaceDetectRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mFaceDetected:Z

.field public final mInjector:Lcom/android/server/power/SmartStayController$Injector;

.field public final mLock:Ljava/lang/Object;

.field public final mOnFaceDetected:Ljava/lang/Runnable;

.field public final mSmartFaceCallback:Lcom/android/server/power/SmartStayController$1;

.field public final mSmartFaceManagerWrapper:Lcom/android/server/power/SmartStayController$SmartFaceManagerWrapper;

.field public mSmartStayEnabled:Z

.field public mSmartStayHandler:Landroid/os/Handler;

.field public mSmartStayHandlerThread:Landroid/os/HandlerThread;

.field public mUserActivitySummary:I

.field public mWakefulness:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Runnable;Lcom/android/server/power/SmartStayController$Injector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/server/power/SmartStayController;->mWakefulness:I

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/power/SmartStayController$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/server/power/SmartStayController$1;-><init>(Lcom/android/server/power/SmartStayController;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/power/SmartStayController;->mSmartFaceCallback:Lcom/android/server/power/SmartStayController$1;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/power/SmartStayController;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object p4, p0, Lcom/android/server/power/SmartStayController;->mInjector:Lcom/android/server/power/SmartStayController$Injector;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/android/server/power/SmartStayController;->mOnFaceDetected:Ljava/lang/Runnable;

    .line 19
    .line 20
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance p1, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/server/power/SmartStayController;->mClock:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

    .line 29
    .line 30
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance p3, Lcom/android/server/power/SmartStayController$SmartFaceManagerWrapper;

    .line 34
    .line 35
    invoke-direct {p3, p2, p1}, Lcom/android/server/power/SmartStayController$SmartFaceManagerWrapper;-><init>(Landroid/content/Context;Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;)V

    .line 36
    .line 37
    .line 38
    iput-object p3, p0, Lcom/android/server/power/SmartStayController;->mSmartFaceManagerWrapper:Lcom/android/server/power/SmartStayController$SmartFaceManagerWrapper;

    .line 39
    .line 40
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/android/server/power/SmartStayController;->mFaceDetectRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final dumpInternal(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    const-string v0, "Smart Stay:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "  USE_SMART_STAY: true"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "  mSmartStayEnabled: "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/android/server/power/SmartStayController;->mSmartStayEnabled:Z

    .line 19
    .line 20
    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/power/SmartStayController;->mSmartFaceManagerWrapper:Lcom/android/server/power/SmartStayController$SmartFaceManagerWrapper;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const-string v0, "  SmartStayDelay: 2750"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, "  mFaceDetectRequested: "

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/power/SmartStayController;->mFaceDetectRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string p0, "  PREVENT_BAD_CURRENT_CONSUMPTION: true"

    .line 57
    .line 58
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
