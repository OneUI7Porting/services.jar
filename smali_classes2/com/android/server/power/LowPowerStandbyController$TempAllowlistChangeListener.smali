.class public final Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/LowPowerStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/LowPowerStandbyController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAppAdded(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-static {p0, p1, v0}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$maddToAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onAppRemoved(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-static {p0, p1, v0}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$mremoveFromAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
