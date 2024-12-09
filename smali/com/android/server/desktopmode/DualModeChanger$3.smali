.class public final Lcom/android/server/desktopmode/DualModeChanger$3;
.super Lcom/android/server/desktopmode/UiManager$InternalUiCallback;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/desktopmode/DualModeChanger;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/DualModeChanger;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/desktopmode/DualModeChanger$3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger$3;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationComplete()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/DualModeChanger$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$3;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v0, "[DMS]DualModeChanger"

    .line 18
    .line 19
    const-string/jumbo v1, "onAnimationComplete()"

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/android/server/desktopmode/DualModeChanger;->mLoadingScreenAnimationComplete:Z

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/DualModeChanger;->scheduleStopLoadingScreenIfPossible(Z)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onClickButtonPositive()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/DualModeChanger$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "[DMS]DualModeChanger"

    .line 12
    .line 13
    const-string/jumbo v1, "onClickButtonPositive()"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$3;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    .line 22
    .line 23
    const-string/jumbo v0, "stabilizer_mode_consent"

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-static {p0, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
