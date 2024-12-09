.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;


# static fields
.field static final LOCAL_HBM_PATH_OF_IN_HOUSE:Ljava/lang/String; = "/sys/class/lcd/panel/local_hbm"

.field static final LOCAL_HBM_PATH_OF_JDM:Ljava/lang/String; = "/sys/class/display/display_ctrl/lhbm_mode_set"


# instance fields
.field public mCurrentLocalHbmStatus:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

.field public final mDisplayStateMonitor:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

.field public mLocalHbmModeChangeAfterScreenOn:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda1;

.field public mStartPhysicalDisplayState:I

.field public final mSysFsProvider:Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;

.field public mTouchDownDeliverAfterLhbmOn:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;

.field public final mUseInHouseSolution:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x2

    .line 5
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mStartPhysicalDisplayState:I

    .line 6
    .line 7
    sget-object p1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->LOCAL_HBM_MODE_OFF:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mCurrentLocalHbmStatus:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mSysFsProvider:Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;

    .line 12
    .line 13
    iput-boolean p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mUseInHouseSolution:Z

    .line 14
    .line 15
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mDisplayStateMonitor:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    .line 16
    .line 17
    invoke-virtual {p2, p0}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->registerStateCallback(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p2, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mBlockingTasksWhenStartPhysicalState:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p0, p2, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mBlockingTasksWhenStartPhysicalState:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method


# virtual methods
.method public final changeToNextState(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->LOCAL_HBM_MODE_OFF:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->LOCAL_HBM_MODE_ON_SOURCE_OFF:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->LOCAL_HBM_MODE_ON_SOURCE_ON:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mUseInHouseSolution:Z

    .line 8
    .line 9
    if-nez v3, :cond_1

    .line 10
    .line 11
    if-ne p1, v2, :cond_0

    .line 12
    .line 13
    move-object p1, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object p1, v0

    .line 16
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mCurrentLocalHbmStatus:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    .line 17
    .line 18
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_6

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    if-eq v4, v5, :cond_4

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    if-eq v4, v5, :cond_2

    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_2
    if-ne p1, v1, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->writeLocalHbmStatus(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    if-ne p1, v0, :cond_9

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->writeLocalHbmStatus(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->writeLocalHbmStatus(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_4
    if-ne p1, v0, :cond_5

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->writeLocalHbmStatus(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_5
    if-ne p1, v2, :cond_9

    .line 53
    .line 54
    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->writeLocalHbmStatus(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_6
    if-ne p1, v1, :cond_7

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->writeLocalHbmStatus(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_7
    if-ne p1, v2, :cond_9

    .line 65
    .line 66
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->writeLocalHbmStatus(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->writeLocalHbmStatus(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    .line 70
    .line 71
    .line 72
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v4, "LocalHbmStatus change from : "

    .line 75
    .line 76
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mCurrentLocalHbmStatus:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    .line 80
    .line 81
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v4, " to : "

    .line 85
    .line 86
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const-string v4, "FingerprintService.SemFpLhbmOpticalController"

    .line 97
    .line 98
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mCurrentLocalHbmStatus:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    .line 102
    .line 103
    if-eqz v3, :cond_8

    .line 104
    .line 105
    if-ne p1, v2, :cond_9

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_8
    if-ne p1, v1, :cond_9

    .line 109
    .line 110
    :goto_2
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mTouchDownDeliverAfterLhbmOn:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;

    .line 111
    .line 112
    if-eqz p1, :cond_9

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;->run()V

    .line 115
    .line 116
    .line 117
    const/4 p1, 0x0

    .line 118
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mTouchDownDeliverAfterLhbmOn:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;

    .line 119
    .line 120
    :cond_9
    :goto_3
    return-void
.end method

.method public final declared-synchronized handleLocalHbm(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    sget-object p1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->LOCAL_HBM_MODE_OFF:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->changeToNextState(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    .line 7
    .line 8
    .line 9
    goto :goto_1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mStartPhysicalDisplayState:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-ne v0, v1, :cond_3

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mDisplayStateMonitor:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    .line 18
    .line 19
    iget v0, v0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mPhysicalDisplayState:I

    .line 20
    .line 21
    if-ne v0, v1, :cond_3

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    if-ne p1, v0, :cond_1

    .line 25
    .line 26
    sget-object p1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->LOCAL_HBM_MODE_ON_SOURCE_OFF:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->changeToNextState(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    if-ne p1, v1, :cond_2

    .line 33
    .line 34
    sget-object p1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->LOCAL_HBM_MODE_ON_SOURCE_ON:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->changeToNextState(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mLocalHbmModeChangeAfterScreenOn:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda1;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda1;

    .line 44
    .line 45
    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;I)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mLocalHbmModeChangeAfterScreenOn:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    :goto_1
    monitor-exit p0

    .line 51
    return-void

    .line 52
    :goto_2
    monitor-exit p0

    .line 53
    throw p1
.end method

.method public final handleTouchEventInLhbm(Landroid/util/Pair;IJ)V
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v9, p2

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x1

    .line 9
    iget-boolean v3, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mUseInHouseSolution:Z

    .line 10
    .line 11
    const/4 v10, 0x2

    .line 12
    if-ne v9, v10, :cond_2

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    iput-object v4, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mTouchDownDeliverAfterLhbmOn:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    iget-object v4, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mCurrentLocalHbmStatus:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    .line 20
    .line 21
    sget-object v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->LOCAL_HBM_MODE_ON_SOURCE_ON:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    .line 22
    .line 23
    if-ne v4, v5, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v4, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mCurrentLocalHbmStatus:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    .line 27
    .line 28
    sget-object v5, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->LOCAL_HBM_MODE_ON_SOURCE_OFF:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    .line 29
    .line 30
    if-ne v4, v5, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;

    .line 34
    .line 35
    move-object v0, v7

    .line 36
    move-object/from16 v1, p0

    .line 37
    .line 38
    move-object/from16 v2, p1

    .line 39
    .line 40
    move/from16 v3, p2

    .line 41
    .line 42
    move-wide/from16 v4, p3

    .line 43
    .line 44
    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;Landroid/util/Pair;IJ)V

    .line 45
    .line 46
    .line 47
    iput-object v7, v6, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mTouchDownDeliverAfterLhbmOn:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda2;

    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    :goto_0
    int-to-byte v4, v9

    .line 51
    new-array v15, v1, [B

    .line 52
    .line 53
    aput-byte v4, v15, v0

    .line 54
    .line 55
    if-eqz v3, :cond_5

    .line 56
    .line 57
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v4, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 60
    .line 61
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v5, Ljava/lang/Integer;

    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v12

    .line 69
    if-ne v9, v10, :cond_3

    .line 70
    .line 71
    move v5, v1

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    move v5, v0

    .line 74
    :goto_1
    if-eqz v3, :cond_4

    .line 75
    .line 76
    const-class v3, Landroid/hardware/display/DisplayManagerInternal;

    .line 77
    .line 78
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Landroid/hardware/display/DisplayManagerInternal;

    .line 83
    .line 84
    if-eqz v3, :cond_4

    .line 85
    .line 86
    invoke-virtual {v3, v5}, Landroid/hardware/display/DisplayManagerInternal;->setFreezeBrightnessMode(Z)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    :cond_4
    move v14, v0

    .line 91
    move-object v11, v4

    .line 92
    check-cast v11, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 93
    .line 94
    const/16 v13, 0x2b

    .line 95
    .line 96
    const/16 v16, 0x0

    .line 97
    .line 98
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semRequest(III[B[B)I

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 105
    .line 106
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v3, Ljava/lang/Integer;

    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    move-object v3, v0

    .line 115
    check-cast v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 116
    .line 117
    const/16 v5, 0x16

    .line 118
    .line 119
    const/4 v7, 0x0

    .line 120
    const/4 v8, 0x0

    .line 121
    move/from16 v6, p2

    .line 122
    .line 123
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semRequest(III[B[B)I

    .line 124
    .line 125
    .line 126
    :goto_2
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 129
    .line 130
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semGetCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-nez v0, :cond_6

    .line 137
    .line 138
    const-wide/16 v3, 0x0

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_6
    iget-wide v3, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    .line 142
    .line 143
    :goto_3
    if-ne v9, v10, :cond_7

    .line 144
    .line 145
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 148
    .line 149
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v2, Ljava/lang/Integer;

    .line 152
    .line 153
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    new-instance v5, Landroid/hardware/biometrics/fingerprint/PointerContext;

    .line 158
    .line 159
    invoke-direct {v5}, Landroid/hardware/biometrics/fingerprint/PointerContext;-><init>()V

    .line 160
    .line 161
    .line 162
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 163
    .line 164
    invoke-virtual {v1, v3, v4, v2, v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->onPointerDown(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 165
    .line 166
    .line 167
    instance-of v0, v0, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 168
    .line 169
    if-eqz v0, :cond_8

    .line 170
    .line 171
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    long-to-int v1, v3

    .line 176
    const/16 v2, 0x10

    .line 177
    .line 178
    shr-long v2, p3, v2

    .line 179
    .line 180
    long-to-int v2, v2

    .line 181
    const-wide/32 v3, 0xffff

    .line 182
    .line 183
    .line 184
    and-long v3, p3, v3

    .line 185
    .line 186
    long-to-int v3, v3

    .line 187
    invoke-virtual {v0}, Lcom/android/server/biometrics/SemBioLoggingManager;->getFpHandler()Landroid/os/Handler;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    new-instance v5, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda1;

    .line 192
    .line 193
    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;III)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_7
    if-ne v9, v1, :cond_8

    .line 201
    .line 202
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 205
    .line 206
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v1, Ljava/lang/Integer;

    .line 209
    .line 210
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    new-instance v2, Landroid/hardware/biometrics/fingerprint/PointerContext;

    .line 215
    .line 216
    invoke-direct {v2}, Landroid/hardware/biometrics/fingerprint/PointerContext;-><init>()V

    .line 217
    .line 218
    .line 219
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 220
    .line 221
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->onPointerUp(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V

    .line 222
    .line 223
    .line 224
    :cond_8
    :goto_4
    return-void
.end method

.method public final onFinishDisplayState(III)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mUseInHouseSolution:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    if-ne p2, p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mLocalHbmModeChangeAfterScreenOn:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda1;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda1;->run()V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mLocalHbmModeChangeAfterScreenOn:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda1;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final writeLocalHbmStatus(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mUseInHouseSolution:Z

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mSysFsProvider:Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->getString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance p0, Ljava/io/File;

    .line 15
    .line 16
    const-string v0, "/sys/class/lcd/panel/local_hbm"

    .line 17
    .line 18
    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p0, p1}, Lcom/android/server/biometrics/Utils;->writeFile(Ljava/io/File;[B)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->getString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    new-instance p0, Ljava/io/File;

    .line 39
    .line 40
    const-string v0, "/sys/class/display/display_ctrl/lhbm_mode_set"

    .line 41
    .line 42
    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p0, p1}, Lcom/android/server/biometrics/Utils;->writeFile(Ljava/io/File;[B)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method
