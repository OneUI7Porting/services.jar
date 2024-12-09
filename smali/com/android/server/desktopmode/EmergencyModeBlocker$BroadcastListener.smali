.class public final Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/EmergencyModeBlocker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string/jumbo p1, "reason"

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    sget p2, Lcom/android/server/desktopmode/EmergencyModeBlocker;->$r8$clinit:I

    .line 14
    .line 15
    const-string p2, "EMERGENCY_STATE_CHANGED reason="

    .line 16
    .line 17
    const-string v1, "[DMS]EmergencyModeBlocker"

    .line 18
    .line 19
    invoke-static {p1, p2, v1}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p2, 0x2

    .line 23
    if-eq p1, p2, :cond_2

    .line 24
    .line 25
    const/4 p2, 0x3

    .line 26
    if-eq p1, p2, :cond_2

    .line 27
    .line 28
    const/4 p2, 0x4

    .line 29
    if-eq p1, p2, :cond_2

    .line 30
    .line 31
    const/4 p2, 0x5

    .line 32
    if-eq p1, p2, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEnabledInBroadcast:Z

    .line 38
    .line 39
    const/16 p1, 0x2710

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->scheduleUpdateBlockerRegistration(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-object p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$BroadcastListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker;->mEnabledInBroadcast:Z

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->scheduleUpdateBlockerRegistration(I)V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method
