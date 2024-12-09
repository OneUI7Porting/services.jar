.class public Lcom/samsung/android/hardware/display/AfterimageCompensationService;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final mAFPC_KEYS:[Ljava/lang/String;


# instance fields
.field public AfcStateCondition:Z

.field public AfcThreadAODCondition:Z

.field public AfcThreadCondition:Z

.field public AfcThreadTerminateCondition:Z

.field public AfpcPeriodCount:I

.field public AfpcPeriodCount_sub:I

.field public final AfpcPeriodMax:I

.field public AodBrightness:I

.field public final DEBUG:Z

.field public final effNbdiTh:[F

.field public final effNbdiTh_V3:[F

.field public final effNbdiTh_V4:[F

.field public final effNbdiTh_V5:[F

.field public final effNbdiTh_V6:[F

.field public final effNbdiTh_V7:[F

.field public final effNbdiTh_V9:[F

.field public isRunningCameraApp:Z

.field public mAfcThread:Ljava/lang/Thread;

.field public final mAfcType:I

.field public final mAfpcJndRef:[F

.field public final mAfpcJndRefV2:[F

.field public final mAfpcPanelNumber_main:I

.field public final mAfpcSize:I

.field public mApplyCount:I

.field public mApplyCount_sub:I

.field public final mApplyScaleEffect:I

.field public mApplyValue:F

.field public mApplyValue_sub:F

.field public mAvgLum:D

.field public mAvgLum_sub:D

.field public final mContext:Landroid/content/Context;

.field public mEffAvgLum:D

.field public mEffAvgLum_sub:D

.field public mEffMaxBDI:D

.field public mEffMaxBDI_sub:D

.field public mEffNBDI:D

.field public mEffNBDI_sub:D

.field public mLuminance:I

.field public mLuminance_sub:I

.field public mMaxBDI:D

.field public mMaxBDI_sub:D

.field public mNBDI:D

.field public mNBDI_sub:D

.field public mSemHqmManager:Landroid/os/SemHqmManager;

.field public final mThreadAFPC:Z

.field public final mThreadSleepTime:J

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadAODCondition:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadCondition:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount_sub:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetDEBUG(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->DEBUG:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fgeteffNbdiTh(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh:[F

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgeteffNbdiTh_V3(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V3:[F

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgeteffNbdiTh_V5(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V5:[F

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgeteffNbdiTh_V7(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V7:[F

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgeteffNbdiTh_V9(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V9:[F

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetisRunningCameraApp(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->isRunningCameraApp:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAfpcPanelNumber_main(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcPanelNumber_main:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmApplyValue_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue_sub:F

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmAvgLum_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum_sub:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEffMaxBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI_sub:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI_sub:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmNBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI_sub:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmThreadAFPC(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThreadSleepTime(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmApplyCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount_sub:I

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmApplyValue_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue_sub:F

    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum:D

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAvgLum_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum_sub:D

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum:D

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEffAvgLum_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum_sub:D

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI:D

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEffMaxBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI_sub:D

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI:D

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEffNBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI_sub:D

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLuminance(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLuminance_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance_sub:I

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI:D

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMaxBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI_sub:D

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI:D

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI_sub:D

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic -$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static -$$Nest$mgetBrightness(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "NumberFormatException : "

    .line 5
    .line 6
    new-instance v1, Ljava/io/File;

    .line 7
    .line 8
    const-string v2, "/sys/class/lcd/panel/brt_avg"

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    :try_start_0
    invoke-static {v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iput v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 31
    .line 32
    if-ltz v1, :cond_0

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    goto :goto_1

    .line 36
    :catch_0
    move-exception p0

    .line 37
    goto :goto_0

    .line 38
    :catch_1
    move-exception p0

    .line 39
    :try_start_2
    const-string v1, "AfterimageCompensationService"

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :cond_0
    :goto_1
    return v3
.end method

.method public static -$$Nest$mgetBrightness_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "NumberFormatException : "

    .line 5
    .line 6
    new-instance v1, Ljava/io/File;

    .line 7
    .line 8
    const-string v2, "/sys/class/lcd/panel1/brt_avg"

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    :try_start_0
    invoke-static {v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iput v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance_sub:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 31
    .line 32
    if-ltz v1, :cond_0

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    goto :goto_1

    .line 36
    :catch_0
    move-exception p0

    .line 37
    goto :goto_0

    .line 38
    :catch_1
    move-exception p0

    .line 39
    :try_start_2
    const-string v1, "AfterimageCompensationService"

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :cond_0
    :goto_1
    return v3
.end method

.method public static -$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iget-wide v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum:D

    .line 16
    .line 17
    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget-wide v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI:D

    .line 22
    .line 23
    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    iget-wide v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI:D

    .line 28
    .line 29
    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    iget-wide v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum:D

    .line 34
    .line 35
    invoke-static {v7, v8}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    iget-wide v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI:D

    .line 40
    .line 41
    invoke-static {v8, v9}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    iget-wide v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI:D

    .line 46
    .line 47
    invoke-static {v9, v10}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount_sub:I

    .line 52
    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue_sub:F

    .line 58
    .line 59
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v11

    .line 63
    iget-wide v12, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum_sub:D

    .line 64
    .line 65
    invoke-static {v12, v13}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v12

    .line 69
    iget-wide v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI_sub:D

    .line 70
    .line 71
    invoke-static {v13, v14}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v13

    .line 75
    iget-wide v14, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI_sub:D

    .line 76
    .line 77
    invoke-static {v14, v15}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v14

    .line 81
    move-object v0, v14

    .line 82
    iget-wide v14, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum_sub:D

    .line 83
    .line 84
    invoke-static {v14, v15}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v15

    .line 88
    move-object/from16 v16, v15

    .line 89
    .line 90
    iget-wide v14, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI_sub:D

    .line 91
    .line 92
    invoke-static {v14, v15}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v17

    .line 96
    iget-wide v14, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI_sub:D

    .line 97
    .line 98
    invoke-static {v14, v15}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v18

    .line 102
    move-object v14, v0

    .line 103
    move-object/from16 v15, v16

    .line 104
    .line 105
    move-object/from16 v16, v17

    .line 106
    .line 107
    move-object/from16 v17, v18

    .line 108
    .line 109
    filled-new-array/range {v2 .. v17}, [Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    sget-object v2, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAFPC_KEYS:[Ljava/lang/String;

    .line 114
    .line 115
    const/4 v3, 0x0

    .line 116
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 117
    .line 118
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 119
    .line 120
    .line 121
    const/4 v3, 0x0

    .line 122
    :goto_0
    const/16 v5, 0x10

    .line 123
    .line 124
    if-ge v3, v5, :cond_0

    .line 125
    .line 126
    :try_start_1
    aget-object v5, v2, v3

    .line 127
    .line 128
    aget-object v6, v0, v3

    .line 129
    .line 130
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    .line 132
    .line 133
    add-int/lit8 v3, v3, 0x1

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    move-object v3, v4

    .line 138
    goto :goto_1

    .line 139
    :catch_1
    move-exception v0

    .line 140
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 141
    .line 142
    .line 143
    move-object v4, v3

    .line 144
    :cond_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    const-string v2, "\\{"

    .line 149
    .line 150
    const-string v3, ""

    .line 151
    .line 152
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    const-string v2, "\\}"

    .line 157
    .line 158
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v12

    .line 162
    iget-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->DEBUG:Z

    .line 163
    .line 164
    const-string v2, "AfterimageCompensationService"

    .line 165
    .line 166
    if-eqz v0, :cond_1

    .line 167
    .line 168
    const-string v0, "customDataSet : "

    .line 169
    .line 170
    invoke-static {v0, v12, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    :cond_1
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 174
    .line 175
    if-eqz v0, :cond_2

    .line 176
    .line 177
    const-string/jumbo v0, "sendBroadcastToHWParam() mSemHqmManager.sendHWParamToHQM"

    .line 178
    .line 179
    .line 180
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    iget-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 184
    .line 185
    const-string v9, "0.0"

    .line 186
    .line 187
    const-string/jumbo v10, "sec"

    .line 188
    .line 189
    .line 190
    const/4 v5, 0x0

    .line 191
    const-string v6, "Display"

    .line 192
    .line 193
    const-string v7, "DIQE"

    .line 194
    .line 195
    const-string/jumbo v8, "sm"

    .line 196
    .line 197
    .line 198
    const-string v11, ""

    .line 199
    .line 200
    const-string v13, ""

    .line 201
    .line 202
    invoke-virtual/range {v4 .. v13}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 203
    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_2
    const-string/jumbo v0, "sendBroadcastToHWParam() mSemHqmManager is null"

    .line 207
    .line 208
    .line 209
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    :goto_2
    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeDataEvaluate()F
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataEvaluate()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataRead(IIIZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataRead(IIIZ)I

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadAvgLum()D
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadAvgLum()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadAvgLumSub()D
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadAvgLumSub()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadEffAvgLum()D
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffAvgLum()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadEffAvgLumSub()D
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffAvgLumSub()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadEffMaxBDI()D
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffMaxBDI()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadEffMaxBDISub()D
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffMaxBDISub()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadEffNBDI()D
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffNBDI()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadEffNBDISub()D
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffNBDISub()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadMaxBDI()D
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadMaxBDI()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadMaxBDISub()D
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadMaxBDISub()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadNBDI()D
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadNBDI()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadNBDISub()D
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadNBDISub()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadSub(IIIZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadSub(IIIZ)I

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeDataSave(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataSave(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataSaveSub(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataSaveSub(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataTerminate(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataTerminate(I)I

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeDataTerminateSub(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataTerminateSub(I)I

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeDataUpdate(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataUpdate(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataUpdateSub(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataUpdateSub(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataWriteV2(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataWriteV2(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static constructor <clinit>()V
    .locals 16

    .line 1
    const-string v14, "EffMaxBDI_sub"

    .line 2
    .line 3
    const-string v15, "EffNBDI_sub"

    .line 4
    .line 5
    const-string v0, "ApplyCount"

    .line 6
    .line 7
    const-string v1, "JND"

    .line 8
    .line 9
    const-string v2, "AvgLum"

    .line 10
    .line 11
    const-string v3, "MaxBDI"

    .line 12
    .line 13
    const-string v4, "NBDI"

    .line 14
    .line 15
    const-string v5, "EffAvgLum"

    .line 16
    .line 17
    const-string v6, "EffMaxBDI"

    .line 18
    .line 19
    const-string v7, "EffNBDI"

    .line 20
    .line 21
    const-string v8, "ApplyCount_sub"

    .line 22
    .line 23
    const-string v9, "JND_sub"

    .line 24
    .line 25
    const-string v10, "AvgLum_sub"

    .line 26
    .line 27
    const-string v11, "MaxBDI_sub"

    .line 28
    .line 29
    const-string v12, "NBDI_sub"

    .line 30
    .line 31
    const-string v13, "EffAvgLum_sub"

    .line 32
    .line 33
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAFPC_KEYS:[Ljava/lang/String;

    .line 38
    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 32

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "/efs/afc/poc_data"

    .line 6
    .line 7
    const-string v3, "/efs/afc/diff_data"

    .line 8
    .line 9
    const-string v4, "/efs/afc/time_data"

    .line 10
    .line 11
    const-string v5, "/efs/afc/org.vec"

    .line 12
    .line 13
    const-string v6, "/efs/afc/rewrited"

    .line 14
    .line 15
    const-string v7, " "

    .line 16
    .line 17
    const-string v8, "NumberFormatException : "

    .line 18
    .line 19
    const-string v9, "/efs/afc/apply_count"

    .line 20
    .line 21
    const-string v10, "AfterimageCompensationService"

    .line 22
    .line 23
    const-string v11, "afpcDataWrite - str : "

    .line 24
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v12, "eng"

    .line 29
    .line 30
    sget-object v13, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v12

    .line 36
    iput-boolean v12, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->DEBUG:Z

    .line 37
    .line 38
    const/4 v12, 0x0

    .line 39
    iput-object v12, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    .line 40
    .line 41
    const/4 v13, 0x0

    .line 42
    iput-boolean v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    .line 43
    .line 44
    const/4 v14, 0x1

    .line 45
    iput-boolean v14, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadCondition:Z

    .line 46
    .line 47
    iput-boolean v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadAODCondition:Z

    .line 48
    .line 49
    iput-boolean v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadTerminateCondition:Z

    .line 50
    .line 51
    iput-boolean v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    .line 52
    .line 53
    iput-boolean v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->isRunningCameraApp:Z

    .line 54
    .line 55
    iput v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AodBrightness:I

    .line 56
    .line 57
    iput v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    .line 58
    .line 59
    const/4 v15, 0x0

    .line 60
    iput v15, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    .line 61
    .line 62
    iput v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount_sub:I

    .line 63
    .line 64
    iput v15, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue_sub:F

    .line 65
    .line 66
    iput v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I

    .line 67
    .line 68
    iput v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance_sub:I

    .line 69
    .line 70
    iput v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I

    .line 71
    .line 72
    iput v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount_sub:I

    .line 73
    .line 74
    const-wide/16 v14, 0x0

    .line 75
    .line 76
    iput-wide v14, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    .line 77
    .line 78
    iput v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodMax:I

    .line 79
    .line 80
    iput v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    .line 81
    .line 82
    iput v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcPanelNumber_main:I

    .line 83
    .line 84
    iput v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize:I

    .line 85
    .line 86
    const/16 v14, 0xb4

    .line 87
    .line 88
    iput v14, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    .line 89
    .line 90
    const/4 v14, 0x2

    .line 91
    new-array v15, v14, [F

    .line 92
    .line 93
    fill-array-data v15, :array_0

    .line 94
    .line 95
    .line 96
    iput-object v15, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRef:[F

    .line 97
    .line 98
    const/4 v15, 0x5

    .line 99
    new-array v15, v15, [F

    .line 100
    .line 101
    fill-array-data v15, :array_1

    .line 102
    .line 103
    .line 104
    iput-object v15, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRefV2:[F

    .line 105
    .line 106
    const/16 v15, 0x14

    .line 107
    .line 108
    new-array v15, v15, [F

    .line 109
    .line 110
    fill-array-data v15, :array_2

    .line 111
    .line 112
    .line 113
    iput-object v15, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh:[F

    .line 114
    .line 115
    const/16 v15, 0x1e

    .line 116
    .line 117
    new-array v13, v15, [F

    .line 118
    .line 119
    fill-array-data v13, :array_3

    .line 120
    .line 121
    .line 122
    iput-object v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V3:[F

    .line 123
    .line 124
    new-array v13, v15, [F

    .line 125
    .line 126
    fill-array-data v13, :array_4

    .line 127
    .line 128
    .line 129
    iput-object v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V4:[F

    .line 130
    .line 131
    const/16 v13, 0x32

    .line 132
    .line 133
    new-array v13, v13, [F

    .line 134
    .line 135
    fill-array-data v13, :array_5

    .line 136
    .line 137
    .line 138
    iput-object v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V5:[F

    .line 139
    .line 140
    const/16 v13, 0x64

    .line 141
    .line 142
    new-array v15, v13, [F

    .line 143
    .line 144
    fill-array-data v15, :array_6

    .line 145
    .line 146
    .line 147
    iput-object v15, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V6:[F

    .line 148
    .line 149
    new-array v15, v13, [F

    .line 150
    .line 151
    fill-array-data v15, :array_7

    .line 152
    .line 153
    .line 154
    iput-object v15, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V7:[F

    .line 155
    .line 156
    new-array v15, v13, [F

    .line 157
    .line 158
    fill-array-data v15, :array_8

    .line 159
    .line 160
    .line 161
    iput-object v15, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V9:[F

    .line 162
    .line 163
    const-wide/16 v13, 0x0

    .line 164
    .line 165
    iput-wide v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum:D

    .line 166
    .line 167
    iput-wide v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI:D

    .line 168
    .line 169
    iput-wide v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI:D

    .line 170
    .line 171
    iput-wide v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum:D

    .line 172
    .line 173
    iput-wide v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI:D

    .line 174
    .line 175
    iput-wide v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI:D

    .line 176
    .line 177
    iput-wide v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum_sub:D

    .line 178
    .line 179
    iput-wide v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI_sub:D

    .line 180
    .line 181
    iput-wide v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI_sub:D

    .line 182
    .line 183
    iput-wide v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum_sub:D

    .line 184
    .line 185
    iput-wide v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI_sub:D

    .line 186
    .line 187
    iput-wide v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI_sub:D

    .line 188
    .line 189
    iput-object v12, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 190
    .line 191
    iput-object v12, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mWindowManager:Landroid/view/WindowManager;

    .line 192
    .line 193
    iput-object v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    .line 194
    .line 195
    const-string v13, "android.intent.action.BOOT_COMPLETED"

    .line 196
    .line 197
    const-string v14, "android.intent.action.SCREEN_ON"

    .line 198
    .line 199
    const-string v12, "android.intent.action.SCREEN_OFF"

    .line 200
    .line 201
    const-string v15, "android.intent.action.ACTION_SHUTDOWN"

    .line 202
    .line 203
    move-object/from16 v16, v11

    .line 204
    .line 205
    const-string v11, "com.sec.android.app.server.power.DISPLAY_ON_TIME"

    .line 206
    .line 207
    invoke-static {v13, v14, v12, v15, v11}, Lcom/android/server/VcnManagementService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 208
    .line 209
    .line 210
    move-result-object v11

    .line 211
    const-string v12, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 212
    .line 213
    invoke-virtual {v11, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    new-instance v12, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;

    .line 217
    .line 218
    invoke-direct {v12, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 219
    .line 220
    .line 221
    const/4 v13, 0x2

    .line 222
    invoke-virtual {v0, v12, v11, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 223
    .line 224
    .line 225
    new-instance v11, Ljava/io/File;

    .line 226
    .line 227
    const-string v12, "/efs/afc"

    .line 228
    .line 229
    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    .line 233
    .line 234
    .line 235
    move-result v12

    .line 236
    if-nez v12, :cond_0

    .line 237
    .line 238
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 239
    .line 240
    .line 241
    :cond_0
    new-instance v11, Ljava/io/File;

    .line 242
    .line 243
    const-string v12, "/efs/afc1"

    .line 244
    .line 245
    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    .line 249
    .line 250
    .line 251
    move-result v12

    .line 252
    if-nez v12, :cond_1

    .line 253
    .line 254
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 255
    .line 256
    .line 257
    :cond_1
    new-instance v11, Ljava/io/File;

    .line 258
    .line 259
    const-string v12, "/sys/class/lcd/panel/copr_roi"

    .line 260
    .line 261
    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    .line 265
    .line 266
    .line 267
    new-instance v11, Ljava/io/File;

    .line 268
    .line 269
    const-string v12, "/sys/class/lcd/panel/brt_avg"

    .line 270
    .line 271
    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    .line 275
    .line 276
    .line 277
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 278
    .line 279
    .line 280
    move-result-object v11

    .line 281
    const v12, 0x10e000b

    .line 282
    .line 283
    .line 284
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    .line 285
    .line 286
    .line 287
    move-result v11

    .line 288
    iput v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    .line 289
    .line 290
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 291
    .line 292
    .line 293
    move-result-object v12

    .line 294
    const v13, 0x10e000e

    .line 295
    .line 296
    .line 297
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    .line 298
    .line 299
    .line 300
    move-result v12

    .line 301
    iput v12, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcPanelNumber_main:I

    .line 302
    .line 303
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 304
    .line 305
    .line 306
    move-result-object v13

    .line 307
    const v14, 0x10e000f

    .line 308
    .line 309
    .line 310
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    .line 311
    .line 312
    .line 313
    move-result v13

    .line 314
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 315
    .line 316
    .line 317
    move-result-object v14

    .line 318
    const v15, 0x10e0010

    .line 319
    .line 320
    .line 321
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    .line 322
    .line 323
    .line 324
    move-result v14

    .line 325
    iput v14, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize:I

    .line 326
    .line 327
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 328
    .line 329
    .line 330
    move-result-object v15

    .line 331
    const v0, 0x10e000c

    .line 332
    .line 333
    .line 334
    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 335
    .line 336
    .line 337
    move-result v15

    .line 338
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    move/from16 v17, v15

    .line 343
    .line 344
    const v15, 0x10e0012

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getInteger(I)I

    .line 348
    .line 349
    .line 350
    move-result v15

    .line 351
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    move/from16 v18, v15

    .line 356
    .line 357
    const v15, 0x10e0011

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getInteger(I)I

    .line 361
    .line 362
    .line 363
    move-result v15

    .line 364
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    move/from16 v19, v15

    .line 369
    .line 370
    const v15, 0x10e000d

    .line 371
    .line 372
    .line 373
    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getInteger(I)I

    .line 374
    .line 375
    .line 376
    move-result v15

    .line 377
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    move/from16 v20, v15

    .line 382
    .line 383
    const v15, 0x10e0013

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getInteger(I)I

    .line 387
    .line 388
    .line 389
    move-result v15

    .line 390
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    move/from16 v21, v15

    .line 395
    .line 396
    const v15, 0x107004d

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 400
    .line 401
    .line 402
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    const v15, 0x1070043

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 410
    .line 411
    .line 412
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    const v15, 0x107004c

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 420
    .line 421
    .line 422
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    const v15, 0x1070085

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 430
    .line 431
    .line 432
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    const v15, 0x1070044

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 440
    .line 441
    .line 442
    const/4 v15, 0x2

    .line 443
    if-lt v11, v15, :cond_3

    .line 444
    .line 445
    move-object/from16 v26, v7

    .line 446
    .line 447
    move-object/from16 v25, v8

    .line 448
    .line 449
    move-object/from16 v27, v9

    .line 450
    .line 451
    move/from16 v8, v17

    .line 452
    .line 453
    move/from16 v7, v18

    .line 454
    .line 455
    move/from16 v9, v19

    .line 456
    .line 457
    const/4 v15, 0x1

    .line 458
    move-object/from16 v17, v2

    .line 459
    .line 460
    move-object/from16 v18, v3

    .line 461
    .line 462
    move-object/from16 v19, v4

    .line 463
    .line 464
    move/from16 v2, v20

    .line 465
    .line 466
    move/from16 v3, v21

    .line 467
    .line 468
    const/4 v4, 0x4

    .line 469
    iput-boolean v15, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    .line 470
    .line 471
    if-lt v11, v4, :cond_2

    .line 472
    .line 473
    move-object/from16 v28, v5

    .line 474
    .line 475
    const-wide/16 v4, 0x7530

    .line 476
    .line 477
    iput-wide v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    .line 478
    .line 479
    const/16 v0, 0xb40

    .line 480
    .line 481
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodMax:I

    .line 482
    .line 483
    goto :goto_0

    .line 484
    :cond_2
    move-object/from16 v28, v5

    .line 485
    .line 486
    const-wide/32 v4, 0xea60

    .line 487
    .line 488
    .line 489
    iput-wide v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    .line 490
    .line 491
    const/16 v0, 0x5a0

    .line 492
    .line 493
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodMax:I

    .line 494
    .line 495
    goto :goto_0

    .line 496
    :cond_3
    move-object/from16 v28, v5

    .line 497
    .line 498
    move-object/from16 v26, v7

    .line 499
    .line 500
    move-object/from16 v25, v8

    .line 501
    .line 502
    move-object/from16 v27, v9

    .line 503
    .line 504
    move/from16 v8, v17

    .line 505
    .line 506
    move/from16 v7, v18

    .line 507
    .line 508
    move/from16 v9, v19

    .line 509
    .line 510
    move-object/from16 v17, v2

    .line 511
    .line 512
    move-object/from16 v18, v3

    .line 513
    .line 514
    move-object/from16 v19, v4

    .line 515
    .line 516
    move/from16 v2, v20

    .line 517
    .line 518
    move/from16 v3, v21

    .line 519
    .line 520
    const/4 v4, 0x1

    .line 521
    if-ne v11, v4, :cond_4

    .line 522
    .line 523
    const-wide/16 v4, 0x2710

    .line 524
    .line 525
    iput-wide v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    .line 526
    .line 527
    :cond_4
    :goto_0
    const-string v0, "mAfcType : "

    .line 528
    .line 529
    const-string v4, ", mThreadAFPC : "

    .line 530
    .line 531
    invoke-static {v11, v0, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    iget-boolean v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    .line 536
    .line 537
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    const-string v4, ", mThreadSleepTime : "

    .line 541
    .line 542
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    iget-wide v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    .line 546
    .line 547
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    const-string v4, ", AfpcPeriodMax : "

    .line 551
    .line 552
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    iget v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodMax:I

    .line 556
    .line 557
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    .line 566
    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    .line 568
    .line 569
    const-string v4, "mAfpcPanelNumber_main : "

    .line 570
    .line 571
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    const-string v4, ", mAfpcSize : "

    .line 578
    .line 579
    const-string v5, ", mAfpcHeight : "

    .line 580
    .line 581
    invoke-static {v14, v8, v4, v5, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 582
    .line 583
    .line 584
    const-string v4, ", mAfpcWidth : "

    .line 585
    .line 586
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    .line 598
    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    .line 600
    .line 601
    const-string v4, "mAfpcPanelNumber_sub : "

    .line 602
    .line 603
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    const-string v4, ", mAfpcSize_sub : "

    .line 607
    .line 608
    const-string v5, ", mAfpcHeight_sub : "

    .line 609
    .line 610
    invoke-static {v13, v9, v4, v5, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    const-string v4, ", mAfpcWidth_sub : "

    .line 617
    .line 618
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    .line 630
    .line 631
    iget-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    .line 632
    .line 633
    if-eqz v0, :cond_39

    .line 634
    .line 635
    const-string v0, "/sys/class/lcd/panel1/cell_id"

    .line 636
    .line 637
    const-string v4, "/sys/class/lcd/panel/cell_id"

    .line 638
    .line 639
    const-string v5, "EFS_PANEL_INFO_SUB : "

    .line 640
    .line 641
    const-string v15, "EFS_PANEL_INFO : "

    .line 642
    .line 643
    move/from16 v29, v3

    .line 644
    .line 645
    const-string/jumbo v3, "update_cell_id() function start"

    .line 646
    .line 647
    .line 648
    invoke-static {v10, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    .line 650
    .line 651
    :try_start_0
    new-instance v3, Ljava/io/File;

    .line 652
    .line 653
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 657
    .line 658
    .line 659
    move-result v3

    .line 660
    if-eqz v3, :cond_5

    .line 661
    .line 662
    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    goto :goto_1

    .line 667
    :catch_0
    move-exception v0

    .line 668
    const/4 v3, 0x0

    .line 669
    goto :goto_3

    .line 670
    :cond_5
    const/4 v3, 0x0

    .line 671
    :goto_1
    :try_start_1
    new-instance v4, Ljava/io/File;

    .line 672
    .line 673
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 677
    .line 678
    .line 679
    move-result v4

    .line 680
    if-eqz v4, :cond_6

    .line 681
    .line 682
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 686
    goto :goto_2

    .line 687
    :catch_1
    move-exception v0

    .line 688
    goto :goto_3

    .line 689
    :cond_6
    const/4 v0, 0x0

    .line 690
    :goto_2
    move-object v4, v3

    .line 691
    move-object v3, v0

    .line 692
    goto :goto_4

    .line 693
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 694
    .line 695
    .line 696
    move-object v4, v3

    .line 697
    const/4 v3, 0x0

    .line 698
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 699
    .line 700
    move/from16 v30, v2

    .line 701
    .line 702
    const-string v2, "USER_PANEL_INFO : "

    .line 703
    .line 704
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    .line 709
    .line 710
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v0

    .line 714
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    .line 716
    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    .line 718
    .line 719
    const-string v2, "USER_PANEL_INFO_SUB : "

    .line 720
    .line 721
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 728
    .line 729
    .line 730
    move-result-object v0

    .line 731
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    .line 733
    .line 734
    new-instance v0, Ljava/io/File;

    .line 735
    .line 736
    const-string v2, "/efs/afc/cell_id"

    .line 737
    .line 738
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 742
    .line 743
    .line 744
    move-result v0

    .line 745
    if-eqz v0, :cond_1a

    .line 746
    .line 747
    move/from16 v31, v9

    .line 748
    .line 749
    :try_start_2
    invoke-static {v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 753
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 754
    .line 755
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    .line 760
    .line 761
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v0

    .line 765
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 766
    .line 767
    .line 768
    goto :goto_6

    .line 769
    :catch_2
    move-exception v0

    .line 770
    goto :goto_5

    .line 771
    :catch_3
    move-exception v0

    .line 772
    const/4 v9, 0x0

    .line 773
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 774
    .line 775
    .line 776
    :goto_6
    if-eqz v9, :cond_18

    .line 777
    .line 778
    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 779
    .line 780
    .line 781
    move-result v0

    .line 782
    if-nez v0, :cond_18

    .line 783
    .line 784
    const-string v0, "EFS_PANEL_INFO , USER_PANEL_INFO Diff O"

    .line 785
    .line 786
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    .line 788
    .line 789
    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 790
    .line 791
    .line 792
    move-result v0

    .line 793
    if-eqz v0, :cond_7

    .line 794
    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    .line 796
    .line 797
    const-string v2, "fileWriteString success_1 USER_PANEL_INFO : "

    .line 798
    .line 799
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    const-string v2, " , EFS_PANEL_INFO : "

    .line 806
    .line 807
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    .line 809
    .line 810
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    .line 812
    .line 813
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    .line 819
    .line 820
    :cond_7
    const-string v0, "/efs/afc/afc_data"

    .line 821
    .line 822
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 823
    .line 824
    .line 825
    move-result v2

    .line 826
    if-eqz v2, :cond_8

    .line 827
    .line 828
    new-instance v2, Ljava/io/File;

    .line 829
    .line 830
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 831
    .line 832
    .line 833
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 834
    .line 835
    .line 836
    move-result v0

    .line 837
    if-eqz v0, :cond_8

    .line 838
    .line 839
    const-string v0, "AFC_REG_DATA.delete() success"

    .line 840
    .line 841
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    .line 843
    .line 844
    :cond_8
    const-string v0, "/efs/afc/logging_data"

    .line 845
    .line 846
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 847
    .line 848
    .line 849
    move-result v2

    .line 850
    if-eqz v2, :cond_9

    .line 851
    .line 852
    new-instance v2, Ljava/io/File;

    .line 853
    .line 854
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 858
    .line 859
    .line 860
    move-result v0

    .line 861
    if-eqz v0, :cond_9

    .line 862
    .line 863
    const-string v0, "AFC_LOGGING_DATA.delete() success"

    .line 864
    .line 865
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    .line 867
    .line 868
    :cond_9
    invoke-static {v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 869
    .line 870
    .line 871
    move-result v0

    .line 872
    if-eqz v0, :cond_a

    .line 873
    .line 874
    new-instance v0, Ljava/io/File;

    .line 875
    .line 876
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 877
    .line 878
    .line 879
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 880
    .line 881
    .line 882
    move-result v0

    .line 883
    if-eqz v0, :cond_a

    .line 884
    .line 885
    const-string v0, "MCA_REWRITED.delete() success"

    .line 886
    .line 887
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    .line 889
    .line 890
    :cond_a
    const-string v0, "/efs/afc/original.vec"

    .line 891
    .line 892
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 893
    .line 894
    .line 895
    move-result v2

    .line 896
    if-eqz v2, :cond_b

    .line 897
    .line 898
    new-instance v2, Ljava/io/File;

    .line 899
    .line 900
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 901
    .line 902
    .line 903
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 904
    .line 905
    .line 906
    move-result v0

    .line 907
    if-eqz v0, :cond_b

    .line 908
    .line 909
    const-string v0, "MCA_ORG_VEC.delete() success"

    .line 910
    .line 911
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    .line 913
    .line 914
    :cond_b
    invoke-static/range {v28 .. v28}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 915
    .line 916
    .line 917
    move-result v0

    .line 918
    if-eqz v0, :cond_c

    .line 919
    .line 920
    new-instance v0, Ljava/io/File;

    .line 921
    .line 922
    move-object/from16 v15, v28

    .line 923
    .line 924
    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 925
    .line 926
    .line 927
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 928
    .line 929
    .line 930
    move-result v0

    .line 931
    if-eqz v0, :cond_d

    .line 932
    .line 933
    const-string v0, "AFC_ORIGINAL_VEC.delete() success"

    .line 934
    .line 935
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    .line 937
    .line 938
    goto :goto_7

    .line 939
    :cond_c
    move-object/from16 v15, v28

    .line 940
    .line 941
    :cond_d
    :goto_7
    invoke-static/range {v19 .. v19}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 942
    .line 943
    .line 944
    move-result v0

    .line 945
    if-eqz v0, :cond_e

    .line 946
    .line 947
    new-instance v0, Ljava/io/File;

    .line 948
    .line 949
    move-object/from16 v2, v19

    .line 950
    .line 951
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 952
    .line 953
    .line 954
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 955
    .line 956
    .line 957
    move-result v0

    .line 958
    if-eqz v0, :cond_f

    .line 959
    .line 960
    const-string v0, "AFC_TIME_DATA.delete() success"

    .line 961
    .line 962
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    .line 964
    .line 965
    goto :goto_8

    .line 966
    :cond_e
    move-object/from16 v2, v19

    .line 967
    .line 968
    :cond_f
    :goto_8
    invoke-static/range {v18 .. v18}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 969
    .line 970
    .line 971
    move-result v0

    .line 972
    if-eqz v0, :cond_10

    .line 973
    .line 974
    new-instance v0, Ljava/io/File;

    .line 975
    .line 976
    move-object/from16 v4, v18

    .line 977
    .line 978
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 979
    .line 980
    .line 981
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 982
    .line 983
    .line 984
    move-result v0

    .line 985
    if-eqz v0, :cond_11

    .line 986
    .line 987
    const-string v0, "AFC_DIFF_DATA.delete() success"

    .line 988
    .line 989
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    .line 991
    .line 992
    goto :goto_9

    .line 993
    :cond_10
    move-object/from16 v4, v18

    .line 994
    .line 995
    :cond_11
    :goto_9
    invoke-static/range {v17 .. v17}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 996
    .line 997
    .line 998
    move-result v0

    .line 999
    if-eqz v0, :cond_12

    .line 1000
    .line 1001
    new-instance v0, Ljava/io/File;

    .line 1002
    .line 1003
    move-object/from16 v9, v17

    .line 1004
    .line 1005
    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1009
    .line 1010
    .line 1011
    move-result v0

    .line 1012
    if-eqz v0, :cond_13

    .line 1013
    .line 1014
    const-string v0, "AFC_POC_DATA.delete() success"

    .line 1015
    .line 1016
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    .line 1018
    .line 1019
    goto :goto_a

    .line 1020
    :cond_12
    move-object/from16 v9, v17

    .line 1021
    .line 1022
    :cond_13
    :goto_a
    invoke-static/range {v27 .. v27}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 1023
    .line 1024
    .line 1025
    move-result v0

    .line 1026
    if-eqz v0, :cond_14

    .line 1027
    .line 1028
    new-instance v0, Ljava/io/File;

    .line 1029
    .line 1030
    move-object/from16 v28, v15

    .line 1031
    .line 1032
    move-object/from16 v15, v27

    .line 1033
    .line 1034
    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1038
    .line 1039
    .line 1040
    move-result v0

    .line 1041
    if-eqz v0, :cond_15

    .line 1042
    .line 1043
    const-string v0, "AFC_APPLY_COUNT.delete() success"

    .line 1044
    .line 1045
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    .line 1047
    .line 1048
    goto :goto_b

    .line 1049
    :cond_14
    move-object/from16 v28, v15

    .line 1050
    .line 1051
    move-object/from16 v15, v27

    .line 1052
    .line 1053
    :cond_15
    :goto_b
    const-string v0, "/efs/afc/mdnie_block"

    .line 1054
    .line 1055
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 1056
    .line 1057
    .line 1058
    move-result v17

    .line 1059
    if-eqz v17, :cond_17

    .line 1060
    .line 1061
    move-object/from16 v19, v2

    .line 1062
    .line 1063
    new-instance v2, Ljava/io/File;

    .line 1064
    .line 1065
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1069
    .line 1070
    .line 1071
    move-result v0

    .line 1072
    if-eqz v0, :cond_16

    .line 1073
    .line 1074
    const-string v0, "AFC_MDNIE_BLOCK.delete() success"

    .line 1075
    .line 1076
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    .line 1078
    .line 1079
    :cond_16
    move-object/from16 v18, v4

    .line 1080
    .line 1081
    move/from16 v27, v13

    .line 1082
    .line 1083
    move-object/from16 v17, v19

    .line 1084
    .line 1085
    :goto_c
    move-object v13, v9

    .line 1086
    goto :goto_d

    .line 1087
    :cond_17
    move-object/from16 v17, v2

    .line 1088
    .line 1089
    move-object/from16 v18, v4

    .line 1090
    .line 1091
    move/from16 v27, v13

    .line 1092
    .line 1093
    goto :goto_c

    .line 1094
    :cond_18
    move-object/from16 v15, v27

    .line 1095
    .line 1096
    move/from16 v27, v13

    .line 1097
    .line 1098
    move-object/from16 v13, v17

    .line 1099
    .line 1100
    move-object/from16 v17, v19

    .line 1101
    .line 1102
    if-nez v9, :cond_19

    .line 1103
    .line 1104
    if-eqz v4, :cond_19

    .line 1105
    .line 1106
    const-string v0, "EFS_PANEL_INFO value is NULL"

    .line 1107
    .line 1108
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    .line 1110
    .line 1111
    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1112
    .line 1113
    .line 1114
    const-string v0, "UPDATE EFS_PANEL_INFO : "

    .line 1115
    .line 1116
    invoke-static {v0, v9, v10}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    .line 1118
    .line 1119
    goto :goto_d

    .line 1120
    :cond_19
    const-string v0, "EFS_PANEL_INFO , USER_PANEL_INFO Diff X"

    .line 1121
    .line 1122
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    .line 1124
    .line 1125
    goto :goto_d

    .line 1126
    :cond_1a
    move/from16 v31, v9

    .line 1127
    .line 1128
    move-object/from16 v15, v27

    .line 1129
    .line 1130
    move/from16 v27, v13

    .line 1131
    .line 1132
    move-object/from16 v13, v17

    .line 1133
    .line 1134
    move-object/from16 v17, v19

    .line 1135
    .line 1136
    invoke-static {v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 1137
    .line 1138
    .line 1139
    move-result v0

    .line 1140
    if-nez v0, :cond_1b

    .line 1141
    .line 1142
    if-eqz v4, :cond_1b

    .line 1143
    .line 1144
    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1145
    .line 1146
    .line 1147
    move-result v0

    .line 1148
    if-eqz v0, :cond_1b

    .line 1149
    .line 1150
    const-string v0, "fileWriteString success_2 USER_PANEL_INFO : "

    .line 1151
    .line 1152
    const-string v2, " , EFS_PANEL_INFO : null"

    .line 1153
    .line 1154
    invoke-static {v0, v4, v2, v10}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    .line 1156
    .line 1157
    :cond_1b
    :goto_d
    const-string v2, "/efs/afc1/cell_id"

    .line 1158
    .line 1159
    invoke-static {v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 1160
    .line 1161
    .line 1162
    move-result v0

    .line 1163
    if-eqz v0, :cond_23

    .line 1164
    .line 1165
    :try_start_4
    invoke-static {v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 1169
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1170
    .line 1171
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1172
    .line 1173
    .line 1174
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    .line 1176
    .line 1177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v0

    .line 1181
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 1182
    .line 1183
    .line 1184
    goto :goto_f

    .line 1185
    :catch_4
    move-exception v0

    .line 1186
    goto :goto_e

    .line 1187
    :catch_5
    move-exception v0

    .line 1188
    const/4 v4, 0x0

    .line 1189
    :goto_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1190
    .line 1191
    .line 1192
    :goto_f
    if-eqz v4, :cond_21

    .line 1193
    .line 1194
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1195
    .line 1196
    .line 1197
    move-result v0

    .line 1198
    if-nez v0, :cond_21

    .line 1199
    .line 1200
    const-string v0, "EFS_PANEL_INFO_SUB , USER_PANEL_INFO_SUB Diff O"

    .line 1201
    .line 1202
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    .line 1204
    .line 1205
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1206
    .line 1207
    .line 1208
    move-result v0

    .line 1209
    if-eqz v0, :cond_1c

    .line 1210
    .line 1211
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1212
    .line 1213
    const-string v2, "fileWriteString success_1 USER_PANEL_INFO_SUB : "

    .line 1214
    .line 1215
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1216
    .line 1217
    .line 1218
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    .line 1220
    .line 1221
    const-string v2, " , EFS_PANEL_INFO_SUB : "

    .line 1222
    .line 1223
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    .line 1225
    .line 1226
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    .line 1228
    .line 1229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v0

    .line 1233
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    .line 1235
    .line 1236
    :cond_1c
    const-string v0, "/efs/afc1/time_data"

    .line 1237
    .line 1238
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 1239
    .line 1240
    .line 1241
    move-result v2

    .line 1242
    if-eqz v2, :cond_1d

    .line 1243
    .line 1244
    new-instance v2, Ljava/io/File;

    .line 1245
    .line 1246
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1247
    .line 1248
    .line 1249
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1250
    .line 1251
    .line 1252
    move-result v0

    .line 1253
    if-eqz v0, :cond_1d

    .line 1254
    .line 1255
    const-string v0, "AFC_TIME_DATA_SUB.delete() success"

    .line 1256
    .line 1257
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    .line 1259
    .line 1260
    :cond_1d
    const-string v0, "/efs/afc1/diff_data"

    .line 1261
    .line 1262
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 1263
    .line 1264
    .line 1265
    move-result v2

    .line 1266
    if-eqz v2, :cond_1e

    .line 1267
    .line 1268
    new-instance v2, Ljava/io/File;

    .line 1269
    .line 1270
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1271
    .line 1272
    .line 1273
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1274
    .line 1275
    .line 1276
    move-result v0

    .line 1277
    if-eqz v0, :cond_1e

    .line 1278
    .line 1279
    const-string v0, "AFC_DIFF_DATA_SUB.delete() success"

    .line 1280
    .line 1281
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    .line 1283
    .line 1284
    :cond_1e
    const-string v0, "/efs/afc1/poc_data"

    .line 1285
    .line 1286
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 1287
    .line 1288
    .line 1289
    move-result v2

    .line 1290
    if-eqz v2, :cond_1f

    .line 1291
    .line 1292
    new-instance v2, Ljava/io/File;

    .line 1293
    .line 1294
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1295
    .line 1296
    .line 1297
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1298
    .line 1299
    .line 1300
    move-result v0

    .line 1301
    if-eqz v0, :cond_1f

    .line 1302
    .line 1303
    const-string v0, "AFC_POC_DATA_SUB.delete() success"

    .line 1304
    .line 1305
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    .line 1307
    .line 1308
    :cond_1f
    const-string v0, "/efs/afc1/apply_count"

    .line 1309
    .line 1310
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 1311
    .line 1312
    .line 1313
    move-result v2

    .line 1314
    if-eqz v2, :cond_20

    .line 1315
    .line 1316
    new-instance v2, Ljava/io/File;

    .line 1317
    .line 1318
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1319
    .line 1320
    .line 1321
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1322
    .line 1323
    .line 1324
    move-result v0

    .line 1325
    if-eqz v0, :cond_20

    .line 1326
    .line 1327
    const-string v0, "AFC_APPLY_COUNT_SUB.delete() success"

    .line 1328
    .line 1329
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    .line 1331
    .line 1332
    :cond_20
    const-string v0, "/efs/afc1/mdnie_block"

    .line 1333
    .line 1334
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 1335
    .line 1336
    .line 1337
    move-result v2

    .line 1338
    if-eqz v2, :cond_24

    .line 1339
    .line 1340
    new-instance v2, Ljava/io/File;

    .line 1341
    .line 1342
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1343
    .line 1344
    .line 1345
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1346
    .line 1347
    .line 1348
    move-result v0

    .line 1349
    if-eqz v0, :cond_24

    .line 1350
    .line 1351
    const-string v0, "AFC_MDNIE_BLOCK_SUB.delete() success"

    .line 1352
    .line 1353
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    .line 1355
    .line 1356
    goto :goto_10

    .line 1357
    :cond_21
    if-nez v4, :cond_22

    .line 1358
    .line 1359
    if-eqz v3, :cond_22

    .line 1360
    .line 1361
    const-string v0, "EFS_PANEL_INFO_SUB value is NULL"

    .line 1362
    .line 1363
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    .line 1365
    .line 1366
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1367
    .line 1368
    .line 1369
    const-string v0, "UPDATE EFS_PANEL_INFO_SUB : "

    .line 1370
    .line 1371
    invoke-static {v0, v4, v10}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    .line 1373
    .line 1374
    goto :goto_10

    .line 1375
    :cond_22
    const-string v0, "EFS_PANEL_INFO_SUB , USER_PANEL_INFO_SUB Diff X"

    .line 1376
    .line 1377
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    .line 1379
    .line 1380
    goto :goto_10

    .line 1381
    :cond_23
    invoke-static {v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 1382
    .line 1383
    .line 1384
    move-result v0

    .line 1385
    if-nez v0, :cond_24

    .line 1386
    .line 1387
    if-eqz v3, :cond_24

    .line 1388
    .line 1389
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1390
    .line 1391
    .line 1392
    move-result v0

    .line 1393
    if-eqz v0, :cond_24

    .line 1394
    .line 1395
    const-string v0, "fileWriteString success_3 USER_PANEL_INFO_SUB : "

    .line 1396
    .line 1397
    const-string v2, " , EFS_PANEL_INFO_SUB : null"

    .line 1398
    .line 1399
    invoke-static {v0, v3, v2, v10}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    .line 1401
    .line 1402
    :cond_24
    :goto_10
    const-string/jumbo v0, "update_cell_id() function end"

    .line 1403
    .line 1404
    .line 1405
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    .line 1407
    .line 1408
    new-instance v0, Ljava/io/File;

    .line 1409
    .line 1410
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1411
    .line 1412
    .line 1413
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 1414
    .line 1415
    .line 1416
    new-instance v0, Ljava/io/File;

    .line 1417
    .line 1418
    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1419
    .line 1420
    .line 1421
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 1422
    .line 1423
    .line 1424
    move-result v22

    .line 1425
    invoke-static/range {v17 .. v17}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 1426
    .line 1427
    .line 1428
    move-result v23

    .line 1429
    invoke-static/range {v18 .. v18}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 1430
    .line 1431
    .line 1432
    move-result v24

    .line 1433
    const-string v0, "/efs/afc1/poc_data"

    .line 1434
    .line 1435
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 1436
    .line 1437
    .line 1438
    move-result v2

    .line 1439
    const-string v0, "/efs/afc1/time_data"

    .line 1440
    .line 1441
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 1442
    .line 1443
    .line 1444
    move-result v3

    .line 1445
    const-string v0, "/efs/afc1/diff_data"

    .line 1446
    .line 1447
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 1448
    .line 1449
    .line 1450
    move-result v4

    .line 1451
    move/from16 v17, v11

    .line 1452
    .line 1453
    move/from16 v18, v12

    .line 1454
    .line 1455
    move/from16 v19, v14

    .line 1456
    .line 1457
    move/from16 v20, v8

    .line 1458
    .line 1459
    move/from16 v21, v7

    .line 1460
    .line 1461
    invoke-static/range {v17 .. v24}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataInit(IIIIIIII)I

    .line 1462
    .line 1463
    .line 1464
    move-result v0

    .line 1465
    if-nez v0, :cond_27

    .line 1466
    .line 1467
    invoke-static {v15}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 1468
    .line 1469
    .line 1470
    move-result v0

    .line 1471
    if-eqz v0, :cond_26

    .line 1472
    .line 1473
    :try_start_6
    invoke-static {v15}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v0

    .line 1477
    if-eqz v0, :cond_26

    .line 1478
    .line 1479
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c

    .line 1483
    move-object/from16 v5, v26

    .line 1484
    .line 1485
    :try_start_7
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b

    .line 1489
    :try_start_8
    array-length v7, v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 1490
    const/4 v8, 0x2

    .line 1491
    if-ne v7, v8, :cond_25

    .line 1492
    .line 1493
    move-object/from16 v9, v28

    .line 1494
    .line 1495
    const/4 v7, 0x0

    .line 1496
    :try_start_9
    aget-object v13, v0, v7

    .line 1497
    .line 1498
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1499
    .line 1500
    .line 1501
    move-result-object v7

    .line 1502
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1503
    .line 1504
    .line 1505
    move-result v7

    .line 1506
    iput v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    .line 1507
    .line 1508
    const/4 v7, 0x1

    .line 1509
    aget-object v0, v0, v7

    .line 1510
    .line 1511
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v0

    .line 1515
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1516
    .line 1517
    .line 1518
    move-result v0

    .line 1519
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    .line 1520
    .line 1521
    goto :goto_12

    .line 1522
    :catch_6
    move-exception v0

    .line 1523
    :goto_11
    move-object/from16 v13, v25

    .line 1524
    .line 1525
    goto :goto_15

    .line 1526
    :catch_7
    move-exception v0

    .line 1527
    goto :goto_13

    .line 1528
    :cond_25
    move-object/from16 v9, v28

    .line 1529
    .line 1530
    const/4 v7, 0x0

    .line 1531
    iput v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    .line 1532
    .line 1533
    const/4 v7, 0x0

    .line 1534
    iput v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 1535
    .line 1536
    :goto_12
    move-object/from16 v13, v25

    .line 1537
    .line 1538
    goto :goto_16

    .line 1539
    :catch_8
    move-exception v0

    .line 1540
    move-object/from16 v9, v28

    .line 1541
    .line 1542
    goto :goto_11

    .line 1543
    :catch_9
    move-exception v0

    .line 1544
    move-object/from16 v9, v28

    .line 1545
    .line 1546
    :goto_13
    :try_start_a
    new-instance v7, Ljava/lang/StringBuilder;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 1547
    .line 1548
    move-object/from16 v13, v25

    .line 1549
    .line 1550
    :try_start_b
    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1551
    .line 1552
    .line 1553
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1554
    .line 1555
    .line 1556
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v0

    .line 1560
    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 1561
    .line 1562
    .line 1563
    goto :goto_16

    .line 1564
    :catch_a
    move-exception v0

    .line 1565
    goto :goto_15

    .line 1566
    :catch_b
    move-exception v0

    .line 1567
    move-object/from16 v13, v25

    .line 1568
    .line 1569
    :goto_14
    move-object/from16 v9, v28

    .line 1570
    .line 1571
    goto :goto_15

    .line 1572
    :catch_c
    move-exception v0

    .line 1573
    move-object/from16 v13, v25

    .line 1574
    .line 1575
    move-object/from16 v5, v26

    .line 1576
    .line 1577
    goto :goto_14

    .line 1578
    :goto_15
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1579
    .line 1580
    .line 1581
    goto :goto_16

    .line 1582
    :cond_26
    move-object/from16 v13, v25

    .line 1583
    .line 1584
    move-object/from16 v5, v26

    .line 1585
    .line 1586
    move-object/from16 v9, v28

    .line 1587
    .line 1588
    :goto_16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1589
    .line 1590
    const-string/jumbo v7, "processApplyData_main() mApplyCount : "

    .line 1591
    .line 1592
    .line 1593
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1594
    .line 1595
    .line 1596
    iget v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    .line 1597
    .line 1598
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1599
    .line 1600
    .line 1601
    const-string v7, " , mApplyValue : "

    .line 1602
    .line 1603
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1604
    .line 1605
    .line 1606
    iget v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    .line 1607
    .line 1608
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1609
    .line 1610
    .line 1611
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1612
    .line 1613
    .line 1614
    move-result-object v0

    .line 1615
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    .line 1617
    .line 1618
    const/4 v7, 0x1

    .line 1619
    goto :goto_17

    .line 1620
    :cond_27
    move-object/from16 v13, v25

    .line 1621
    .line 1622
    move-object/from16 v5, v26

    .line 1623
    .line 1624
    move-object/from16 v9, v28

    .line 1625
    .line 1626
    const/4 v7, 0x0

    .line 1627
    :goto_17
    move/from16 v17, v11

    .line 1628
    .line 1629
    move/from16 v18, v27

    .line 1630
    .line 1631
    move/from16 v19, v31

    .line 1632
    .line 1633
    move/from16 v20, v30

    .line 1634
    .line 1635
    move/from16 v21, v29

    .line 1636
    .line 1637
    move/from16 v22, v2

    .line 1638
    .line 1639
    move/from16 v23, v3

    .line 1640
    .line 1641
    move/from16 v24, v4

    .line 1642
    .line 1643
    invoke-static/range {v17 .. v24}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataInitSub(IIIIIIII)I

    .line 1644
    .line 1645
    .line 1646
    move-result v0

    .line 1647
    if-nez v0, :cond_2a

    .line 1648
    .line 1649
    const-string v0, "/efs/afc1/apply_count"

    .line 1650
    .line 1651
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 1652
    .line 1653
    .line 1654
    move-result v2

    .line 1655
    if-eqz v2, :cond_29

    .line 1656
    .line 1657
    :try_start_c
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 1658
    .line 1659
    .line 1660
    move-result-object v0

    .line 1661
    if-eqz v0, :cond_29

    .line 1662
    .line 1663
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1664
    .line 1665
    .line 1666
    move-result-object v0

    .line 1667
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1668
    .line 1669
    .line 1670
    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    .line 1671
    :try_start_d
    array-length v2, v0

    .line 1672
    const/4 v3, 0x2

    .line 1673
    if-ne v2, v3, :cond_28

    .line 1674
    .line 1675
    const/4 v2, 0x0

    .line 1676
    aget-object v4, v0, v2

    .line 1677
    .line 1678
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1679
    .line 1680
    .line 1681
    move-result-object v2

    .line 1682
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1683
    .line 1684
    .line 1685
    move-result v2

    .line 1686
    iput v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount_sub:I

    .line 1687
    .line 1688
    const/4 v2, 0x1

    .line 1689
    aget-object v0, v0, v2

    .line 1690
    .line 1691
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1692
    .line 1693
    .line 1694
    move-result-object v0

    .line 1695
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1696
    .line 1697
    .line 1698
    move-result v0

    .line 1699
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue_sub:F
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d

    .line 1700
    .line 1701
    goto :goto_1a

    .line 1702
    :catch_d
    move-exception v0

    .line 1703
    const/4 v2, 0x0

    .line 1704
    goto :goto_19

    .line 1705
    :catch_e
    move-exception v0

    .line 1706
    const/4 v2, 0x0

    .line 1707
    goto :goto_18

    .line 1708
    :cond_28
    const/4 v2, 0x0

    .line 1709
    :try_start_e
    iput v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount_sub:I

    .line 1710
    .line 1711
    const/4 v4, 0x0

    .line 1712
    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue_sub:F
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_10
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f

    .line 1713
    .line 1714
    goto :goto_1b

    .line 1715
    :catch_f
    move-exception v0

    .line 1716
    goto :goto_19

    .line 1717
    :catch_10
    move-exception v0

    .line 1718
    :goto_18
    :try_start_f
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1719
    .line 1720
    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1721
    .line 1722
    .line 1723
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1724
    .line 1725
    .line 1726
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1727
    .line 1728
    .line 1729
    move-result-object v0

    .line 1730
    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_f

    .line 1731
    .line 1732
    .line 1733
    goto :goto_1b

    .line 1734
    :goto_19
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1735
    .line 1736
    .line 1737
    goto :goto_1b

    .line 1738
    :cond_29
    :goto_1a
    const/4 v2, 0x0

    .line 1739
    :goto_1b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1740
    .line 1741
    const-string/jumbo v4, "processApplyData_sub() mApplyCount_sub : "

    .line 1742
    .line 1743
    .line 1744
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1745
    .line 1746
    .line 1747
    iget v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount_sub:I

    .line 1748
    .line 1749
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1750
    .line 1751
    .line 1752
    const-string v4, " , mApplyValue_sub : "

    .line 1753
    .line 1754
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1755
    .line 1756
    .line 1757
    iget v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue_sub:F

    .line 1758
    .line 1759
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1760
    .line 1761
    .line 1762
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1763
    .line 1764
    .line 1765
    move-result-object v0

    .line 1766
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    .line 1768
    .line 1769
    const/4 v0, 0x1

    .line 1770
    goto :goto_1c

    .line 1771
    :cond_2a
    const/4 v2, 0x0

    .line 1772
    move v0, v2

    .line 1773
    :goto_1c
    if-nez v7, :cond_2c

    .line 1774
    .line 1775
    if-eqz v0, :cond_2b

    .line 1776
    .line 1777
    goto :goto_1d

    .line 1778
    :cond_2b
    const-string v0, "mAFPC init Failed"

    .line 1779
    .line 1780
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    .line 1782
    .line 1783
    goto/16 :goto_20

    .line 1784
    .line 1785
    :cond_2c
    :goto_1d
    const/4 v0, 0x3

    .line 1786
    if-lez v11, :cond_30

    .line 1787
    .line 1788
    const v4, 0x3d0f7

    .line 1789
    .line 1790
    .line 1791
    if-le v12, v4, :cond_2e

    .line 1792
    .line 1793
    if-eq v11, v0, :cond_2d

    .line 1794
    .line 1795
    const/4 v2, 0x1

    .line 1796
    :cond_2d
    invoke-static {v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeMdnieBlockVerify(Z)I

    .line 1797
    .line 1798
    .line 1799
    move-result v2

    .line 1800
    const-string v4, "mAFPC_MdnieBlockVerify verify block! result = "

    .line 1801
    .line 1802
    invoke-static {v2, v4, v10}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 1803
    .line 1804
    .line 1805
    goto :goto_1e

    .line 1806
    :cond_2e
    const-string v4, "mAFPC_MdnieBlockVerify not support this model : main panel number : "

    .line 1807
    .line 1808
    const-string v7, " is lower? "

    .line 1809
    .line 1810
    invoke-static {v12, v4, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1811
    .line 1812
    .line 1813
    move-result-object v4

    .line 1814
    const v7, 0x3d0f5

    .line 1815
    .line 1816
    .line 1817
    if-ge v12, v7, :cond_2f

    .line 1818
    .line 1819
    const/4 v2, 0x1

    .line 1820
    :cond_2f
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1821
    .line 1822
    .line 1823
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1824
    .line 1825
    .line 1826
    move-result-object v2

    .line 1827
    invoke-static {v10, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    .line 1829
    .line 1830
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1831
    .line 1832
    const-string v4, "mAFPC_MdnieBlockVerify not support this model : Supported Version is 35, current OS version : "

    .line 1833
    .line 1834
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1835
    .line 1836
    .line 1837
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1838
    .line 1839
    invoke-static {v2, v4, v10}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 1840
    .line 1841
    .line 1842
    :cond_30
    :goto_1e
    if-ne v11, v0, :cond_31

    .line 1843
    .line 1844
    const v0, 0x30da5

    .line 1845
    .line 1846
    .line 1847
    if-lt v12, v0, :cond_31

    .line 1848
    .line 1849
    const v0, 0x30da7

    .line 1850
    .line 1851
    .line 1852
    if-gt v12, v0, :cond_31

    .line 1853
    .line 1854
    const-string v0, "/efs/afc/mdnie_block"

    .line 1855
    .line 1856
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 1857
    .line 1858
    .line 1859
    move-result v0

    .line 1860
    const/4 v2, 0x1

    .line 1861
    if-ne v0, v2, :cond_31

    .line 1862
    .line 1863
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    .line 1864
    .line 1865
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataApply(I)I

    .line 1866
    .line 1867
    .line 1868
    :cond_31
    const v2, 0x2e6fa

    .line 1869
    .line 1870
    .line 1871
    const v4, 0x2e6f9

    .line 1872
    .line 1873
    .line 1874
    if-eq v12, v4, :cond_32

    .line 1875
    .line 1876
    if-ne v12, v2, :cond_33

    .line 1877
    .line 1878
    :cond_32
    const/16 v7, 0x64

    .line 1879
    .line 1880
    iput v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    .line 1881
    .line 1882
    :cond_33
    const-string v7, "7 0 "

    .line 1883
    .line 1884
    const-string v8, "/dev/poc"

    .line 1885
    .line 1886
    const-string v12, "/sys/class/lcd/panel/poc"

    .line 1887
    .line 1888
    const-string v3, "/cache/recovery/poc.vec"

    .line 1889
    .line 1890
    const/4 v2, 0x4

    .line 1891
    if-ne v11, v2, :cond_35

    .line 1892
    .line 1893
    invoke-static {v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 1894
    .line 1895
    .line 1896
    move-result v0

    .line 1897
    if-eqz v0, :cond_35

    .line 1898
    .line 1899
    invoke-static {v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 1900
    .line 1901
    .line 1902
    move-result v0

    .line 1903
    if-eqz v0, :cond_35

    .line 1904
    .line 1905
    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 1906
    .line 1907
    .line 1908
    move-result v0

    .line 1909
    if-eqz v0, :cond_35

    .line 1910
    .line 1911
    const-string v0, "AFPC_V2 Update"

    .line 1912
    .line 1913
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    .line 1915
    .line 1916
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1917
    .line 1918
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1919
    .line 1920
    .line 1921
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1922
    .line 1923
    .line 1924
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1925
    .line 1926
    .line 1927
    move-result-object v0

    .line 1928
    invoke-virtual {v1, v12, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1929
    .line 1930
    .line 1931
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileCopy()V

    .line 1932
    .line 1933
    .line 1934
    new-instance v0, Ljava/io/File;

    .line 1935
    .line 1936
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1937
    .line 1938
    .line 1939
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1940
    .line 1941
    .line 1942
    move-result v0

    .line 1943
    if-eqz v0, :cond_34

    .line 1944
    .line 1945
    const-string v0, "AFPC_V2 Update RECOVERY_POC  delete"

    .line 1946
    .line 1947
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    .line 1949
    .line 1950
    :cond_34
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    .line 1951
    .line 1952
    const/4 v2, 0x1

    .line 1953
    add-int/2addr v0, v2

    .line 1954
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    .line 1955
    .line 1956
    :try_start_10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1957
    .line 1958
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1959
    .line 1960
    .line 1961
    iget v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    .line 1962
    .line 1963
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1964
    .line 1965
    .line 1966
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1967
    .line 1968
    .line 1969
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1970
    .line 1971
    const-string v5, "%.2f"

    .line 1972
    .line 1973
    iget v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    .line 1974
    .line 1975
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1976
    .line 1977
    .line 1978
    move-result-object v11

    .line 1979
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 1980
    .line 1981
    .line 1982
    move-result-object v11

    .line 1983
    invoke-static {v2, v5, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1984
    .line 1985
    .line 1986
    move-result-object v2

    .line 1987
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1988
    .line 1989
    .line 1990
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1991
    .line 1992
    .line 1993
    move-result-object v0

    .line 1994
    invoke-virtual {v1, v15, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1995
    .line 1996
    .line 1997
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1998
    .line 1999
    move-object/from16 v5, v16

    .line 2000
    .line 2001
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2002
    .line 2003
    .line 2004
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2005
    .line 2006
    .line 2007
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2008
    .line 2009
    .line 2010
    move-result-object v0

    .line 2011
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_11

    .line 2012
    .line 2013
    .line 2014
    goto :goto_1f

    .line 2015
    :catch_11
    move-exception v0

    .line 2016
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2017
    .line 2018
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2019
    .line 2020
    .line 2021
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2022
    .line 2023
    .line 2024
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2025
    .line 2026
    .line 2027
    move-result-object v0

    .line 2028
    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    .line 2030
    .line 2031
    const/4 v2, 0x0

    .line 2032
    iput v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    .line 2033
    .line 2034
    :cond_35
    :goto_1f
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    .line 2035
    .line 2036
    const/4 v2, 0x2

    .line 2037
    if-ne v0, v2, :cond_38

    .line 2038
    .line 2039
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcPanelNumber_main:I

    .line 2040
    .line 2041
    const v2, 0x2e695

    .line 2042
    .line 2043
    .line 2044
    if-lt v0, v2, :cond_36

    .line 2045
    .line 2046
    const v2, 0x2e697

    .line 2047
    .line 2048
    .line 2049
    if-le v0, v2, :cond_37

    .line 2050
    .line 2051
    :cond_36
    if-lt v0, v4, :cond_38

    .line 2052
    .line 2053
    const v2, 0x2e6fa

    .line 2054
    .line 2055
    .line 2056
    if-gt v0, v2, :cond_38

    .line 2057
    .line 2058
    :cond_37
    invoke-static {v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 2059
    .line 2060
    .line 2061
    move-result v0

    .line 2062
    if-eqz v0, :cond_38

    .line 2063
    .line 2064
    invoke-static {v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 2065
    .line 2066
    .line 2067
    move-result v0

    .line 2068
    if-eqz v0, :cond_38

    .line 2069
    .line 2070
    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 2071
    .line 2072
    .line 2073
    move-result v0

    .line 2074
    if-eqz v0, :cond_38

    .line 2075
    .line 2076
    const-string v0, "FOTA AFPC"

    .line 2077
    .line 2078
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    .line 2080
    .line 2081
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2082
    .line 2083
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2084
    .line 2085
    .line 2086
    iget v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize:I

    .line 2087
    .line 2088
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2089
    .line 2090
    .line 2091
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2092
    .line 2093
    .line 2094
    move-result-object v0

    .line 2095
    invoke-virtual {v1, v12, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2096
    .line 2097
    .line 2098
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileCopy()V

    .line 2099
    .line 2100
    .line 2101
    new-instance v0, Ljava/io/File;

    .line 2102
    .line 2103
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2104
    .line 2105
    .line 2106
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2107
    .line 2108
    .line 2109
    move-result v0

    .line 2110
    if-eqz v0, :cond_38

    .line 2111
    .line 2112
    const-string v0, "FOTA AFPC RECOVERY_POC  delete"

    .line 2113
    .line 2114
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    .line 2116
    .line 2117
    :cond_38
    new-instance v0, Ljava/io/File;

    .line 2118
    .line 2119
    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2120
    .line 2121
    .line 2122
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 2123
    .line 2124
    .line 2125
    new-instance v0, Ljava/io/File;

    .line 2126
    .line 2127
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2128
    .line 2129
    .line 2130
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 2131
    .line 2132
    .line 2133
    move-result v0

    .line 2134
    if-nez v0, :cond_39

    .line 2135
    .line 2136
    const/4 v2, 0x1

    .line 2137
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    .line 2138
    .line 2139
    :cond_39
    :goto_20
    const-string v0, "AfterimageCompensationService Init Success"

    .line 2140
    .line 2141
    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    .line 2143
    .line 2144
    return-void

    .line 2145
    :array_0
    .array-data 4
        0x40e00000    # 7.0f
        0x41300000    # 11.0f
    .end array-data

    .line 2146
    .line 2147
    .line 2148
    .line 2149
    .line 2150
    .line 2151
    .line 2152
    .line 2153
    :array_1
    .array-data 4
        0x40400000    # 3.0f
        0x40a00000    # 5.0f
        0x40e00000    # 7.0f
        0x41100000    # 9.0f
        0x41300000    # 11.0f
    .end array-data

    .line 2154
    .line 2155
    .line 2156
    .line 2157
    .line 2158
    .line 2159
    .line 2160
    .line 2161
    .line 2162
    .line 2163
    .line 2164
    .line 2165
    .line 2166
    .line 2167
    :array_2
    .array-data 4
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
    .end array-data

    .line 2168
    .line 2169
    .line 2170
    .line 2171
    .line 2172
    .line 2173
    .line 2174
    .line 2175
    .line 2176
    .line 2177
    .line 2178
    .line 2179
    .line 2180
    .line 2181
    .line 2182
    .line 2183
    .line 2184
    .line 2185
    .line 2186
    .line 2187
    .line 2188
    .line 2189
    .line 2190
    .line 2191
    .line 2192
    .line 2193
    .line 2194
    .line 2195
    .line 2196
    .line 2197
    .line 2198
    .line 2199
    .line 2200
    .line 2201
    .line 2202
    .line 2203
    .line 2204
    .line 2205
    .line 2206
    .line 2207
    .line 2208
    .line 2209
    .line 2210
    .line 2211
    :array_3
    .array-data 4
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
    .end array-data

    .line 2212
    .line 2213
    .line 2214
    .line 2215
    .line 2216
    .line 2217
    .line 2218
    .line 2219
    .line 2220
    .line 2221
    .line 2222
    .line 2223
    .line 2224
    .line 2225
    .line 2226
    .line 2227
    .line 2228
    .line 2229
    .line 2230
    .line 2231
    .line 2232
    .line 2233
    .line 2234
    .line 2235
    .line 2236
    .line 2237
    .line 2238
    .line 2239
    .line 2240
    .line 2241
    .line 2242
    .line 2243
    .line 2244
    .line 2245
    .line 2246
    .line 2247
    .line 2248
    .line 2249
    .line 2250
    .line 2251
    .line 2252
    .line 2253
    .line 2254
    .line 2255
    .line 2256
    .line 2257
    .line 2258
    .line 2259
    .line 2260
    .line 2261
    .line 2262
    .line 2263
    .line 2264
    .line 2265
    .line 2266
    .line 2267
    .line 2268
    .line 2269
    .line 2270
    .line 2271
    .line 2272
    .line 2273
    .line 2274
    .line 2275
    :array_4
    .array-data 4
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
    .end array-data

    .line 2276
    .line 2277
    .line 2278
    .line 2279
    .line 2280
    .line 2281
    .line 2282
    .line 2283
    .line 2284
    .line 2285
    .line 2286
    .line 2287
    .line 2288
    .line 2289
    .line 2290
    .line 2291
    .line 2292
    .line 2293
    .line 2294
    .line 2295
    .line 2296
    .line 2297
    .line 2298
    .line 2299
    .line 2300
    .line 2301
    .line 2302
    .line 2303
    .line 2304
    .line 2305
    .line 2306
    .line 2307
    .line 2308
    .line 2309
    .line 2310
    .line 2311
    .line 2312
    .line 2313
    .line 2314
    .line 2315
    .line 2316
    .line 2317
    .line 2318
    .line 2319
    .line 2320
    .line 2321
    .line 2322
    .line 2323
    .line 2324
    .line 2325
    .line 2326
    .line 2327
    .line 2328
    .line 2329
    .line 2330
    .line 2331
    .line 2332
    .line 2333
    .line 2334
    .line 2335
    .line 2336
    .line 2337
    .line 2338
    .line 2339
    :array_5
    .array-data 4
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
    .end array-data

    .line 2340
    .line 2341
    .line 2342
    .line 2343
    .line 2344
    .line 2345
    .line 2346
    .line 2347
    .line 2348
    .line 2349
    .line 2350
    .line 2351
    .line 2352
    .line 2353
    .line 2354
    .line 2355
    .line 2356
    .line 2357
    .line 2358
    .line 2359
    .line 2360
    .line 2361
    .line 2362
    .line 2363
    .line 2364
    .line 2365
    .line 2366
    .line 2367
    .line 2368
    .line 2369
    .line 2370
    .line 2371
    .line 2372
    .line 2373
    .line 2374
    .line 2375
    .line 2376
    .line 2377
    .line 2378
    .line 2379
    .line 2380
    .line 2381
    .line 2382
    .line 2383
    .line 2384
    .line 2385
    .line 2386
    .line 2387
    .line 2388
    .line 2389
    .line 2390
    .line 2391
    .line 2392
    .line 2393
    .line 2394
    .line 2395
    .line 2396
    .line 2397
    .line 2398
    .line 2399
    .line 2400
    .line 2401
    .line 2402
    .line 2403
    .line 2404
    .line 2405
    .line 2406
    .line 2407
    .line 2408
    .line 2409
    .line 2410
    .line 2411
    .line 2412
    .line 2413
    .line 2414
    .line 2415
    .line 2416
    .line 2417
    .line 2418
    .line 2419
    .line 2420
    .line 2421
    .line 2422
    .line 2423
    .line 2424
    .line 2425
    .line 2426
    .line 2427
    .line 2428
    .line 2429
    .line 2430
    .line 2431
    .line 2432
    .line 2433
    .line 2434
    .line 2435
    .line 2436
    .line 2437
    .line 2438
    .line 2439
    .line 2440
    .line 2441
    .line 2442
    .line 2443
    :array_6
    .array-data 4
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
    .end array-data

    .line 2444
    .line 2445
    .line 2446
    .line 2447
    .line 2448
    .line 2449
    .line 2450
    .line 2451
    .line 2452
    .line 2453
    .line 2454
    .line 2455
    .line 2456
    .line 2457
    .line 2458
    .line 2459
    .line 2460
    .line 2461
    .line 2462
    .line 2463
    .line 2464
    .line 2465
    .line 2466
    .line 2467
    .line 2468
    .line 2469
    .line 2470
    .line 2471
    .line 2472
    .line 2473
    .line 2474
    .line 2475
    .line 2476
    .line 2477
    .line 2478
    .line 2479
    .line 2480
    .line 2481
    .line 2482
    .line 2483
    .line 2484
    .line 2485
    .line 2486
    .line 2487
    .line 2488
    .line 2489
    .line 2490
    .line 2491
    .line 2492
    .line 2493
    .line 2494
    .line 2495
    .line 2496
    .line 2497
    .line 2498
    .line 2499
    .line 2500
    .line 2501
    .line 2502
    .line 2503
    .line 2504
    .line 2505
    .line 2506
    .line 2507
    .line 2508
    .line 2509
    .line 2510
    .line 2511
    .line 2512
    .line 2513
    .line 2514
    .line 2515
    .line 2516
    .line 2517
    .line 2518
    .line 2519
    .line 2520
    .line 2521
    .line 2522
    .line 2523
    .line 2524
    .line 2525
    .line 2526
    .line 2527
    .line 2528
    .line 2529
    .line 2530
    .line 2531
    .line 2532
    .line 2533
    .line 2534
    .line 2535
    .line 2536
    .line 2537
    .line 2538
    .line 2539
    .line 2540
    .line 2541
    .line 2542
    .line 2543
    .line 2544
    .line 2545
    .line 2546
    .line 2547
    .line 2548
    .line 2549
    .line 2550
    .line 2551
    .line 2552
    .line 2553
    .line 2554
    .line 2555
    .line 2556
    .line 2557
    .line 2558
    .line 2559
    .line 2560
    .line 2561
    .line 2562
    .line 2563
    .line 2564
    .line 2565
    .line 2566
    .line 2567
    .line 2568
    .line 2569
    .line 2570
    .line 2571
    .line 2572
    .line 2573
    .line 2574
    .line 2575
    .line 2576
    .line 2577
    .line 2578
    .line 2579
    .line 2580
    .line 2581
    .line 2582
    .line 2583
    .line 2584
    .line 2585
    .line 2586
    .line 2587
    .line 2588
    .line 2589
    .line 2590
    .line 2591
    .line 2592
    .line 2593
    .line 2594
    .line 2595
    .line 2596
    .line 2597
    .line 2598
    .line 2599
    .line 2600
    .line 2601
    .line 2602
    .line 2603
    .line 2604
    .line 2605
    .line 2606
    .line 2607
    .line 2608
    .line 2609
    .line 2610
    .line 2611
    .line 2612
    .line 2613
    .line 2614
    .line 2615
    .line 2616
    .line 2617
    .line 2618
    .line 2619
    .line 2620
    .line 2621
    .line 2622
    .line 2623
    .line 2624
    .line 2625
    .line 2626
    .line 2627
    .line 2628
    .line 2629
    .line 2630
    .line 2631
    .line 2632
    .line 2633
    .line 2634
    .line 2635
    .line 2636
    .line 2637
    .line 2638
    .line 2639
    .line 2640
    .line 2641
    .line 2642
    .line 2643
    .line 2644
    .line 2645
    .line 2646
    .line 2647
    :array_7
    .array-data 4
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
    .end array-data

    .line 2648
    .line 2649
    .line 2650
    .line 2651
    .line 2652
    .line 2653
    .line 2654
    .line 2655
    .line 2656
    .line 2657
    .line 2658
    .line 2659
    .line 2660
    .line 2661
    .line 2662
    .line 2663
    .line 2664
    .line 2665
    .line 2666
    .line 2667
    .line 2668
    .line 2669
    .line 2670
    .line 2671
    .line 2672
    .line 2673
    .line 2674
    .line 2675
    .line 2676
    .line 2677
    .line 2678
    .line 2679
    .line 2680
    .line 2681
    .line 2682
    .line 2683
    .line 2684
    .line 2685
    .line 2686
    .line 2687
    .line 2688
    .line 2689
    .line 2690
    .line 2691
    .line 2692
    .line 2693
    .line 2694
    .line 2695
    .line 2696
    .line 2697
    .line 2698
    .line 2699
    .line 2700
    .line 2701
    .line 2702
    .line 2703
    .line 2704
    .line 2705
    .line 2706
    .line 2707
    .line 2708
    .line 2709
    .line 2710
    .line 2711
    .line 2712
    .line 2713
    .line 2714
    .line 2715
    .line 2716
    .line 2717
    .line 2718
    .line 2719
    .line 2720
    .line 2721
    .line 2722
    .line 2723
    .line 2724
    .line 2725
    .line 2726
    .line 2727
    .line 2728
    .line 2729
    .line 2730
    .line 2731
    .line 2732
    .line 2733
    .line 2734
    .line 2735
    .line 2736
    .line 2737
    .line 2738
    .line 2739
    .line 2740
    .line 2741
    .line 2742
    .line 2743
    .line 2744
    .line 2745
    .line 2746
    .line 2747
    .line 2748
    .line 2749
    .line 2750
    .line 2751
    .line 2752
    .line 2753
    .line 2754
    .line 2755
    .line 2756
    .line 2757
    .line 2758
    .line 2759
    .line 2760
    .line 2761
    .line 2762
    .line 2763
    .line 2764
    .line 2765
    .line 2766
    .line 2767
    .line 2768
    .line 2769
    .line 2770
    .line 2771
    .line 2772
    .line 2773
    .line 2774
    .line 2775
    .line 2776
    .line 2777
    .line 2778
    .line 2779
    .line 2780
    .line 2781
    .line 2782
    .line 2783
    .line 2784
    .line 2785
    .line 2786
    .line 2787
    .line 2788
    .line 2789
    .line 2790
    .line 2791
    .line 2792
    .line 2793
    .line 2794
    .line 2795
    .line 2796
    .line 2797
    .line 2798
    .line 2799
    .line 2800
    .line 2801
    .line 2802
    .line 2803
    .line 2804
    .line 2805
    .line 2806
    .line 2807
    .line 2808
    .line 2809
    .line 2810
    .line 2811
    .line 2812
    .line 2813
    .line 2814
    .line 2815
    .line 2816
    .line 2817
    .line 2818
    .line 2819
    .line 2820
    .line 2821
    .line 2822
    .line 2823
    .line 2824
    .line 2825
    .line 2826
    .line 2827
    .line 2828
    .line 2829
    .line 2830
    .line 2831
    .line 2832
    .line 2833
    .line 2834
    .line 2835
    .line 2836
    .line 2837
    .line 2838
    .line 2839
    .line 2840
    .line 2841
    .line 2842
    .line 2843
    .line 2844
    .line 2845
    .line 2846
    .line 2847
    .line 2848
    .line 2849
    .line 2850
    .line 2851
    :array_8
    .array-data 4
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
    .end array-data
.end method

.method public static fileCopy()V
    .locals 10

    .line 1
    const-string v0, "/cache/recovery/poc.vec"

    .line 2
    .line 3
    const-string v1, "/dev/poc"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    .line 7
    .line 8
    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 9
    .line 10
    .line 11
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 14
    .line 15
    .line 16
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 17
    .line 18
    .line 19
    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    .line 25
    .line 26
    .line 27
    move-result-wide v7

    .line 28
    const-wide/16 v5, 0x0

    .line 29
    .line 30
    move-object v4, v1

    .line 31
    move-object v9, v2

    .line 32
    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 33
    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    :try_start_4
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_3

    .line 53
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :catchall_0
    move-exception v4

    .line 58
    goto :goto_4

    .line 59
    :catch_1
    move-exception v4

    .line 60
    goto :goto_2

    .line 61
    :catchall_1
    move-exception v4

    .line 62
    move-object v1, v2

    .line 63
    goto :goto_4

    .line 64
    :catch_2
    move-exception v4

    .line 65
    move-object v1, v2

    .line 66
    goto :goto_2

    .line 67
    :catchall_2
    move-exception v4

    .line 68
    move-object v0, v2

    .line 69
    move-object v1, v0

    .line 70
    goto :goto_4

    .line 71
    :catch_3
    move-exception v4

    .line 72
    move-object v0, v2

    .line 73
    move-object v1, v0

    .line 74
    goto :goto_2

    .line 75
    :catchall_3
    move-exception v4

    .line 76
    move-object v0, v2

    .line 77
    move-object v1, v0

    .line 78
    move-object v3, v1

    .line 79
    goto :goto_4

    .line 80
    :catch_4
    move-exception v4

    .line 81
    move-object v0, v2

    .line 82
    move-object v1, v0

    .line 83
    move-object v3, v1

    .line 84
    :goto_2
    :try_start_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 85
    .line 86
    .line 87
    if-eqz v2, :cond_1

    .line 88
    .line 89
    :try_start_6
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 90
    .line 91
    .line 92
    :cond_1
    if-eqz v1, :cond_2

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 95
    .line 96
    .line 97
    :cond_2
    if-eqz v3, :cond_3

    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 100
    .line 101
    .line 102
    :cond_3
    if-eqz v0, :cond_4

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 105
    .line 106
    .line 107
    :cond_4
    :goto_3
    return-void

    .line 108
    :goto_4
    if-eqz v2, :cond_5

    .line 109
    .line 110
    :try_start_7
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 111
    .line 112
    .line 113
    goto :goto_5

    .line 114
    :catch_5
    move-exception v0

    .line 115
    goto :goto_6

    .line 116
    :cond_5
    :goto_5
    if-eqz v1, :cond_6

    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 119
    .line 120
    .line 121
    :cond_6
    if-eqz v3, :cond_7

    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 124
    .line 125
    .line 126
    :cond_7
    if-eqz v0, :cond_8

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 129
    .line 130
    .line 131
    goto :goto_7

    .line 132
    :goto_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 133
    .line 134
    .line 135
    :cond_8
    :goto_7
    throw v4
.end method

.method public static getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "File Close error"

    .line 2
    .line 3
    const-string v1, "AfterimageCompensationService"

    .line 4
    .line 5
    const/16 v2, 0x80

    .line 6
    .line 7
    new-array v3, v2, [B

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    move v5, v4

    .line 11
    :goto_0
    if-ge v5, v2, :cond_0

    .line 12
    .line 13
    aput-byte v4, v3, v5

    .line 14
    .line 15
    add-int/lit8 v5, v5, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    .line 20
    .line 21
    new-instance v6, Ljava/io/File;

    .line 22
    .line 23
    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    .line 28
    .line 29
    :try_start_1
    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    new-instance v6, Ljava/lang/String;

    .line 36
    .line 37
    add-int/lit8 p0, p0, -0x1

    .line 38
    .line 39
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 40
    .line 41
    invoke-direct {v6, v3, v4, p0, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 42
    .line 43
    .line 44
    move-object v2, v6

    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    move-object v2, v5

    .line 48
    goto :goto_6

    .line 49
    :catch_0
    move-exception p0

    .line 50
    move-object v3, v2

    .line 51
    move-object v2, v5

    .line 52
    goto :goto_2

    .line 53
    :catch_1
    move-exception p0

    .line 54
    move-object v3, v2

    .line 55
    move-object v2, v5

    .line 56
    goto :goto_4

    .line 57
    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    .line 60
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 61
    .line 62
    .line 63
    goto :goto_5

    .line 64
    :catch_2
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    goto :goto_5

    .line 68
    :catchall_1
    move-exception p0

    .line 69
    goto :goto_6

    .line 70
    :catch_3
    move-exception p0

    .line 71
    move-object v3, v2

    .line 72
    goto :goto_2

    .line 73
    :catch_4
    move-exception p0

    .line 74
    move-object v3, v2

    .line 75
    goto :goto_4

    .line 76
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v5, "IOException : "

    .line 85
    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 97
    .line 98
    .line 99
    if-eqz v2, :cond_2

    .line 100
    .line 101
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :catch_5
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    :cond_2
    :goto_3
    move-object v2, v3

    .line 109
    goto :goto_5

    .line 110
    :goto_4
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v5, "FileNotFoundException : "

    .line 116
    .line 117
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 128
    .line 129
    .line 130
    if-eqz v2, :cond_2

    .line 131
    .line 132
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :goto_5
    return-object v2

    .line 137
    :goto_6
    if-eqz v2, :cond_3

    .line 138
    .line 139
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 140
    .line 141
    .line 142
    goto :goto_7

    .line 143
    :catch_6
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    :cond_3
    :goto_7
    throw p0
.end method

.method private static native nativeDataApply(I)I
.end method

.method private static native nativeDataEvaluate()F
.end method

.method private static native nativeDataInit(IIIIIIII)I
.end method

.method private static native nativeDataInitSub(IIIIIIII)I
.end method

.method private static native nativeDataOff()I
.end method

.method private static native nativeDataRead(IIIZ)I
.end method

.method private static native nativeDataReadAvgLum()D
.end method

.method private static native nativeDataReadAvgLumSub()D
.end method

.method private static native nativeDataReadEffAvgLum()D
.end method

.method private static native nativeDataReadEffAvgLumSub()D
.end method

.method private static native nativeDataReadEffMaxBDI()D
.end method

.method private static native nativeDataReadEffMaxBDISub()D
.end method

.method private static native nativeDataReadEffNBDI()D
.end method

.method private static native nativeDataReadEffNBDISub()D
.end method

.method private static native nativeDataReadMaxBDI()D
.end method

.method private static native nativeDataReadMaxBDISub()D
.end method

.method private static native nativeDataReadNBDI()D
.end method

.method private static native nativeDataReadNBDISub()D
.end method

.method private static native nativeDataReadSub(IIIZ)I
.end method

.method private static native nativeDataSave(I)I
.end method

.method private static native nativeDataSaveSub(I)I
.end method

.method private static native nativeDataTerminate(I)I
.end method

.method private static native nativeDataTerminateSub(I)I
.end method

.method private static native nativeDataUpdate(I)I
.end method

.method private static native nativeDataUpdateSub(I)I
.end method

.method private static native nativeDataVerify()I
.end method

.method private static native nativeDataWrite(I)I
.end method

.method private static native nativeDataWriteV2(I)I
.end method

.method private static native nativeMdnieBlockVerify(Z)I
.end method

.method public static readStrFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "FileReader Close IOException : "

    .line 2
    .line 3
    const-string v1, "BufferedReader Close IOException : "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    .line 7
    .line 8
    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    .line 10
    .line 11
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    .line 12
    .line 13
    invoke-direct {p0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    .line 15
    .line 16
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 26
    .line 27
    new-instance v5, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v4, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 47
    .line 48
    .line 49
    goto/16 :goto_6

    .line 50
    .line 51
    :catch_1
    move-exception p0

    .line 52
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 53
    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_1
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_6

    .line 74
    .line 75
    :catchall_0
    move-exception v2

    .line 76
    goto/16 :goto_7

    .line 77
    .line 78
    :catch_2
    move-exception v4

    .line 79
    goto :goto_2

    .line 80
    :catch_3
    move-exception v4

    .line 81
    goto :goto_4

    .line 82
    :catchall_1
    move-exception p0

    .line 83
    move-object v6, v2

    .line 84
    move-object v2, p0

    .line 85
    move-object p0, v6

    .line 86
    goto/16 :goto_7

    .line 87
    .line 88
    :catch_4
    move-exception v4

    .line 89
    move-object p0, v2

    .line 90
    goto :goto_2

    .line 91
    :catch_5
    move-exception v4

    .line 92
    move-object p0, v2

    .line 93
    goto :goto_4

    .line 94
    :catchall_2
    move-exception p0

    .line 95
    move-object v3, v2

    .line 96
    move-object v2, p0

    .line 97
    move-object p0, v3

    .line 98
    goto/16 :goto_7

    .line 99
    .line 100
    :catch_6
    move-exception v4

    .line 101
    move-object p0, v2

    .line 102
    move-object v3, p0

    .line 103
    goto :goto_2

    .line 104
    :catch_7
    move-exception v4

    .line 105
    move-object p0, v2

    .line 106
    move-object v3, p0

    .line 107
    goto :goto_4

    .line 108
    :goto_2
    :try_start_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 109
    .line 110
    .line 111
    if-eqz p0, :cond_0

    .line 112
    .line 113
    :try_start_6
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :catch_8
    move-exception p0

    .line 118
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 119
    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {v4, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :cond_0
    :goto_3
    if-eqz v3, :cond_2

    .line 140
    .line 141
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    .line 142
    .line 143
    .line 144
    goto :goto_6

    .line 145
    :catch_9
    move-exception p0

    .line 146
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 147
    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :goto_4
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 155
    .line 156
    .line 157
    if-eqz p0, :cond_1

    .line 158
    .line 159
    :try_start_9
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    .line 160
    .line 161
    .line 162
    goto :goto_5

    .line 163
    :catch_a
    move-exception p0

    .line 164
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 165
    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-virtual {v4, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :cond_1
    :goto_5
    if-eqz v3, :cond_2

    .line 186
    .line 187
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    .line 188
    .line 189
    .line 190
    goto :goto_6

    .line 191
    :catch_b
    move-exception p0

    .line 192
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 193
    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    goto/16 :goto_1

    .line 200
    .line 201
    :cond_2
    :goto_6
    return-object v2

    .line 202
    :goto_7
    if-eqz p0, :cond_3

    .line 203
    .line 204
    :try_start_b
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c

    .line 205
    .line 206
    .line 207
    goto :goto_8

    .line 208
    :catch_c
    move-exception p0

    .line 209
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 210
    .line 211
    new-instance v5, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    invoke-virtual {v4, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    :cond_3
    :goto_8
    if-eqz v3, :cond_4

    .line 231
    .line 232
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    .line 233
    .line 234
    .line 235
    goto :goto_9

    .line 236
    :catch_d
    move-exception p0

    .line 237
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 238
    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    :cond_4
    :goto_9
    throw v2
.end method


# virtual methods
.method public final afpcDataApply()Z
    .locals 3

    .line 1
    const-string v0, "afpcDataApply()"

    .line 2
    .line 3
    const-string v1, "AfterimageCompensationService"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    .line 10
    .line 11
    if-eq v2, v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x5

    .line 14
    if-lt v2, v0, :cond_2

    .line 15
    .line 16
    :cond_0
    const-string v0, "/efs/afc/mdnie_block"

    .line 17
    .line 18
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    .line 25
    .line 26
    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataApply(I)I

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_1
    const-string p0, "afpcDataApply - AFC_MDNIE_BLOCK not exist"

    .line 32
    .line 33
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_2
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method public final afpcDataOff()Z
    .locals 2

    .line 1
    const-string v0, "AfterimageCompensationService"

    .line 2
    .line 3
    const-string v1, "afpcDataOff()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x5

    .line 14
    if-lt p0, v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataOff()I

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public final afpcDataVerify()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "afpcDataVerify() - "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize:I

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v0, "AfterimageCompensationService"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataVerify()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_0

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public final afpcDataWrite()Z
    .locals 7

    .line 1
    const-string v0, "afpcDataWrite - str : "

    .line 2
    .line 3
    const-string v1, "AfterimageCompensationService"

    .line 4
    .line 5
    const-string v2, "afpcDataWrite()"

    .line 6
    .line 7
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    if-ne v2, v3, :cond_0

    .line 14
    .line 15
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    .line 24
    .line 25
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRef:[F

    .line 26
    .line 27
    array-length v4, v3

    .line 28
    if-ge v2, v4, :cond_0

    .line 29
    .line 30
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataEvaluate()F

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 35
    .line 36
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v5, "%.2f"

    .line 45
    .line 46
    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    iput v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    .line 55
    .line 56
    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    .line 57
    .line 58
    aget v3, v3, v6

    .line 59
    .line 60
    cmpl-float v2, v2, v3

    .line 61
    .line 62
    if-ltz v2, :cond_0

    .line 63
    .line 64
    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    .line 65
    .line 66
    invoke-static {v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataWrite(I)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_0

    .line 71
    .line 72
    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    .line 73
    .line 74
    const/4 v3, 0x1

    .line 75
    add-int/2addr v2, v3

    .line 76
    iput v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    .line 77
    .line 78
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    .line 84
    .line 85
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v6, " "

    .line 89
    .line 90
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    .line 94
    .line 95
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    const-string v4, "/efs/afc/apply_count"

    .line 115
    .line 116
    invoke-virtual {p0, v4, v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v4, "NumberFormatException : "

    .line 139
    .line 140
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    const/4 v0, 0x0

    .line 154
    iput v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    .line 155
    .line 156
    :goto_0
    return v3

    .line 157
    :cond_0
    const/4 p0, 0x0

    .line 158
    return p0
.end method

.method public final fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "fileWriteString : file not found : "

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->DEBUG:Z

    .line 4
    .line 5
    const-string v1, "AfterimageCompensationService"

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "fileWriteString : "

    .line 12
    .line 13
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, "  value : "

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    const/4 v2, 0x0

    .line 36
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    .line 37
    .line 38
    new-instance v4, Ljava/io/File;

    .line 39
    .line 40
    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 44
    .line 45
    .line 46
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x1

    .line 57
    return p0

    .line 58
    :catch_0
    move-exception p1

    .line 59
    move-object v2, v3

    .line 60
    goto :goto_0

    .line 61
    :catch_1
    move-exception p1

    .line 62
    goto :goto_0

    .line 63
    :catch_2
    :try_start_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 68
    .line 69
    .line 70
    return p0

    .line 71
    :goto_0
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catch_3
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    .line 81
    .line 82
    :goto_1
    return p0
.end method
