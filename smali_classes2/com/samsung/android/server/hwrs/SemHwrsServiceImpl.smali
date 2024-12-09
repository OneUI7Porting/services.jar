.class public final Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl;
.super Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBrReceiver:Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl$1;

.field public mCurrentUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/hwrs/PreconditionObserver;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/hwrs/AbstractSemHwrsServiceImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/server/hwrs/PreconditionObserver;)V

    .line 2
    .line 3
    .line 4
    new-instance v1, Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl$1;

    .line 5
    .line 6
    invoke-direct {v1, p0}, Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl$1;-><init>(Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl;)V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl;->mBrReceiver:Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl$1;

    .line 10
    .line 11
    const-string p0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 12
    .line 13
    invoke-static {p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    sget-object v2, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    move-object v0, p1

    .line 22
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->semRegisterReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl;->mBrReceiver:Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl$1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setCurrentUserHandle(Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/hwrs/SemHwrsServiceImpl;->mCurrentUserHandle:Landroid/os/UserHandle;

    .line 2
    .line 3
    return-void
.end method
