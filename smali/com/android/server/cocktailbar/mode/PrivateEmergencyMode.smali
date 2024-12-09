.class public final Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;
.super Lcom/android/server/cocktailbar/mode/AbsPrivateMode;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;->DEBUG:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final getDefinedCocktailType()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final getDefinedPrivateModeName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "emergencymode"

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final isEnableMode()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onBroadcastReceived(Landroid/content/Intent;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    const-string/jumbo v0, "reason"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    sget-boolean v0, Lcom/android/server/cocktailbar/mode/PrivateEmergencyMode;->DEBUG:Z

    .line 23
    .line 24
    const-string v1, "PrivateEmergencyMode"

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const-string v0, "EMERGENCY_STATE_CHANGED : reason = "

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    const/4 v0, 0x2

    .line 34
    if-ne p1, v0, :cond_1

    .line 35
    .line 36
    return v0

    .line 37
    :cond_1
    const/4 v0, 0x5

    .line 38
    if-ne p1, v0, :cond_2

    .line 39
    .line 40
    const-string/jumbo p1, "start cocktailbarservice"

    .line 41
    .line 42
    .line 43
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    new-instance p1, Landroid/content/Intent;

    .line 47
    .line 48
    const-string v0, "android.intent.action.MAIN"

    .line 49
    .line 50
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string/jumbo v0, "com.sec.android.app.launcher"

    .line 54
    .line 55
    .line 56
    const-string/jumbo v1, "com.samsung.app.honeyspace.edge.CocktailBarService"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    new-instance v0, Landroid/os/UserHandle;

    .line 65
    .line 66
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 74
    .line 75
    .line 76
    const/4 p0, 0x3

    .line 77
    return p0

    .line 78
    :cond_2
    const/4 p0, 0x1

    .line 79
    return p0

    .line 80
    :cond_3
    return v1
.end method
