.class Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public static -$$Nest$monModeManagerRequestChangedLocked(Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;->this$0:Lcom/android/server/DeviceIdleController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-$$Nest$mmaybeBecomeActiveOnModeManagerEventsLocked(Lcom/android/server/DeviceIdleController;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;->this$0:Lcom/android/server/DeviceIdleController;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateQuickDozeFlagLocked()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;->this$0:Lcom/android/server/DeviceIdleController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    const-string v0, "DeviceIdleController"

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "Mode manager quick doze request: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;->this$0:Lcom/android/server/DeviceIdleController;

    .line 23
    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;->this$0:Lcom/android/server/DeviceIdleController;

    .line 26
    .line 27
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mForceModeManagerQuickDozeRequest:Z

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    iget-boolean v1, v1, Lcom/android/server/DeviceIdleController;->mModeManagerRequestedQuickDoze:Z

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eq v1, v2, :cond_0

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;->this$0:Lcom/android/server/DeviceIdleController;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iput-boolean p1, v1, Lcom/android/server/DeviceIdleController;->mModeManagerRequestedQuickDoze:Z

    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;->this$0:Lcom/android/server/DeviceIdleController;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->-$$Nest$mmaybeBecomeActiveOnModeManagerEventsLocked(Lcom/android/server/DeviceIdleController;)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;->this$0:Lcom/android/server/DeviceIdleController;

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateQuickDozeFlagLocked()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    :goto_0
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method
