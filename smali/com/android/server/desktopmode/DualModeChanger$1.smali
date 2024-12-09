.class public final Lcom/android/server/desktopmode/DualModeChanger$1;
.super Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/desktopmode/DualModeChanger;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DualModeChanger;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/desktopmode/DualModeChanger$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger$1;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 7
    .line 8
    const-string/jumbo p1, "touchpad_enabled"

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    iput-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger$1;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 16
    .line 17
    const-string/jumbo p1, "stabilizer_mode"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final onSettingChanged(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/DualModeChanger$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$1;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DualModeChanger;->showStabilizerModeDialogIfNeeded()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$1;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadRequestedByNotification:Z

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/server/desktopmode/ModeChanger;->mUiManager:Lcom/android/server/desktopmode/UiManager;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadManager:Lcom/android/server/desktopmode/TouchpadManager;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/desktopmode/TouchpadManager;->mInternalUiCallback:Lcom/android/server/desktopmode/TouchpadManager$1;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    const/16 v2, 0x12c

    .line 32
    .line 33
    invoke-virtual {p1, v1, v2, v0}, Lcom/android/server/desktopmode/UiManager;->startActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DualModeChanger;->mTouchpadRequestedByNotification:Z

    .line 38
    .line 39
    :cond_0
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
