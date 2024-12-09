.class public final synthetic Lcom/android/server/battery/BattFunctions$MultiSbpController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/os/PowerManagerInternal;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/os/PowerManagerInternal;Landroid/os/IBinder;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/battery/BattFunctions$MultiSbpController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/battery/BattFunctions$MultiSbpController$$ExternalSyntheticLambda0;->f$0:Landroid/os/PowerManagerInternal;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/battery/BattFunctions$MultiSbpController$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/battery/BattFunctions$MultiSbpController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/battery/BattFunctions$MultiSbpController$$ExternalSyntheticLambda0;->f$0:Landroid/os/PowerManagerInternal;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/battery/BattFunctions$MultiSbpController$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    .line 9
    .line 10
    const-string v1, "[SS]BattFunctions"

    .line 11
    .line 12
    const-string v2, "[processBatteryConnectionChanged]disableWakeUpPrevention"

    .line 13
    .line 14
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, p0, v1}, Landroid/os/PowerManagerInternal;->disableWakeUpPrevention(Landroid/os/IBinder;Z)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/battery/BattFunctions$MultiSbpController$$ExternalSyntheticLambda0;->f$0:Landroid/os/PowerManagerInternal;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/battery/BattFunctions$MultiSbpController$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    .line 25
    .line 26
    const-string v1, "[SS]BattFunctions"

    .line 27
    .line 28
    const-string v2, "[processBatteryConnectionChanged]enableWakeUpPrevention"

    .line 29
    .line 30
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Landroid/os/PowerManagerInternal;->enableWakeUpPrevention(Landroid/os/IBinder;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
