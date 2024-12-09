.class public final Lcom/android/server/desktopmode/TouchpadManager$2;
.super Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/desktopmode/TouchpadManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/TouchpadManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/desktopmode/TouchpadManager$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$2;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    .line 7
    .line 8
    const-string/jumbo p1, "spen_enabled"

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
    iput-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$2;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    .line 16
    .line 17
    const-string/jumbo p1, "touchpad_auto_run"

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
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/TouchpadManager$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager$2;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string/jumbo p1, "touchpad_auto_run_guide_count"

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    invoke-static {p0, p1, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :pswitch_0
    if-nez p1, :cond_2

    .line 31
    .line 32
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    const-string p1, "[DMS]TouchpadManager"

    .line 37
    .line 38
    const-string v0, "SPen Setting deleted."

    .line 39
    .line 40
    invoke-static {p1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager$2;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/android/server/desktopmode/TouchpadManager;->mIsSPenEnabled:Z

    .line 47
    .line 48
    :cond_2
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
