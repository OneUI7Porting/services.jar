.class public final Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;

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
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const/4 v0, 0x1

    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    const-string p1, "ExynosDisplaySolutionManagerService"

    .line 15
    .line 16
    const-string p2, "ACTION_BOOT_COMPLETED"

    .line 17
    .line 18
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;

    .line 22
    .line 23
    iput-boolean v0, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mBootCompleted:Z

    .line 24
    .line 25
    iget-boolean p2, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mTuneEnableSetting:Z

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    iget-object p1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/android/server/display/exynos/ExynosDisplayTune;->enableTuneTimer(Z)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;

    .line 35
    .line 36
    iget-boolean p2, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mAtcEnableSetting:Z

    .line 37
    .line 38
    if-eqz p2, :cond_4

    .line 39
    .line 40
    iget-object p1, p1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATC(Z)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_2

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;

    .line 62
    .line 63
    iget-boolean p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mAtcEnableSetting:Z

    .line 64
    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 74
    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-eqz p2, :cond_3

    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService$ScreenBroadcastReceiver;->this$0:Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;

    .line 82
    .line 83
    iget-boolean p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mAtcEnableSetting:Z

    .line 84
    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerService;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 88
    .line 89
    const/4 p1, 0x0

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    const-string p0, "android.intent.action.USER_PRESENT"

    .line 95
    .line 96
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    :cond_4
    :goto_0
    return-void
.end method
