.class public final Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mPorts:Ljava/util/List;

.field public final mToken:Landroid/os/IBinder;

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/power/LowPowerStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/IBinder;ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->mToken:Landroid/os/IBinder;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->mUid:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->mPorts:Ljava/util/List;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->mToken:Landroid/os/IBinder;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/android/server/power/LowPowerStandbyController;->releaseStandbyPorts(Landroid/os/IBinder;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
