.class public final Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final isAllowed(Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isSystemReady()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsExternalDisplayConnected:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-boolean v0, p1, Lcom/android/server/desktopmode/StateManager$InternalState;->mEmergencyModeEnabled:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-static {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misBlockerRegistered(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misBlockerRegistered(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->isPackagesAvailable()Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    :cond_2
    :goto_0
    return v1

    .line 42
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DesktopModeService$PhonePreconditionChecker;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DesktopModeService;->isSystemReady()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    invoke-static {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeService;->-$$Nest$misBlockerRegistered(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/StateManager$InternalState;Z)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/android/server/desktopmode/StateManager$InternalState;->isPackagesAvailable()Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_3

    .line 61
    .line 62
    const/4 p0, 0x1

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    const/4 p0, 0x0

    .line 65
    :goto_1
    return p0

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method