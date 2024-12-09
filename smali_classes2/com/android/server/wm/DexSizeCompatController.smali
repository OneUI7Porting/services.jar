.class public final Lcom/android/server/wm/DexSizeCompatController;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mAspectRatioScale:F

.field public mDefaultScale:F

.field public final mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x3f3851ec    # 0.72f

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/wm/DexSizeCompatController;->mDefaultScale:F

    .line 8
    .line 9
    iput v0, p0, Lcom/android/server/wm/DexSizeCompatController;->mAspectRatioScale:F

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/DexSizeCompatController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 17
    .line 18
    return-void
.end method

.method public static createCompatPolicy(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "createCompatPolicy: Display is null, task="

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p0, ", tda="

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string p1, "SizeCompatPolicy"

    .line 30
    .line 31
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    return-object p0

    .line 36
    :cond_0
    new-instance p1, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 37
    .line 38
    invoke-direct {p1, p0, v0}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V

    .line 39
    .line 40
    .line 41
    sget-object v0, Lcom/android/server/wm/SizeCompatPolicyManager$LazyHolder;->sManager:Lcom/android/server/wm/SizeCompatPolicyManager;

    .line 42
    .line 43
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/SizeCompatPolicyManager;->setCompatPolicy(Lcom/android/server/wm/Task;Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;)V

    .line 44
    .line 45
    .line 46
    return-object p1
.end method

.method public static getCompatPolicy(Lcom/android/server/wm/Task;)Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/wm/SizeCompatPolicyManager$LazyHolder;->sManager:Lcom/android/server/wm/SizeCompatPolicyManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p0, v0}, Lcom/android/server/wm/SizeCompatPolicyManager;->getCompatPolicy(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return-object p0
.end method

.method public static shouldCreateCompatPolicy(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/wm/SizeCompatPolicyManager$LazyHolder;->sManager:Lcom/android/server/wm/SizeCompatPolicyManager;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/wm/SizeCompatPolicyManager;->mLaunchPolicy:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_1
    const/4 v1, 0x1

    .line 17
    if-eqz p0, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-nez v3, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :cond_3
    :goto_0
    if-eqz p1, :cond_7

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_4

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_4
    invoke-static {p0, v2}, Lcom/android/server/wm/SizeCompatPolicyManager;->getCompatPolicy(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    if-eqz p0, :cond_5

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_5
    iget p0, v0, Lcom/android/server/wm/SizeCompatPolicyManager;->mLaunchPolicy:I

    .line 47
    .line 48
    const/4 v0, 0x2

    .line 49
    if-ne p0, v0, :cond_6

    .line 50
    .line 51
    :goto_1
    move v2, v1

    .line 52
    goto :goto_2

    .line 53
    :cond_6
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->isResizeable(Z)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_7

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-nez p0, :cond_7

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_7
    :goto_2
    return v2
.end method
