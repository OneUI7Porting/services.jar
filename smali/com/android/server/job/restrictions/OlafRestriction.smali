.class public final Lcom/android/server/job/restrictions/OlafRestriction;
.super Lcom/android/server/job/restrictions/JobRestriction;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mForceDisabled:Z

.field public mForceRestricted:Z

.field public mOlafOn:Z

.field public mOlafTracker:Lcom/android/server/job/restrictions/OlafRestriction$1;

.field public mOlafUid:I


# virtual methods
.method public final dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    .line 1
    const-string v0, "Olaf status: "

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafOn:Z

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafOn:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "("

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafUid:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ")"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mForceRestricted:Z

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    const-string v0, " | F"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mForceDisabled:Z

    .line 49
    .line 50
    if-eqz p0, :cond_2

    .line 51
    .line 52
    const-string p0, " | D"

    .line 53
    .line 54
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    const-string p0, ""

    .line 58
    .line 59
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public getOlafStatus()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafOn:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isJobRestricted(Lcom/android/server/job/controllers/JobStatus;I)Z
    .locals 3

    .line 1
    iget-boolean p2, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mForceDisabled:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget p2, p1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 11
    .line 12
    if-ne p2, v1, :cond_2

    .line 13
    .line 14
    const-string p2, "android"

    .line 15
    .line 16
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-nez p2, :cond_1

    .line 23
    .line 24
    invoke-static {v2}, Landroid/os/UserHandle;->isCore(I)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    :cond_1
    return v0

    .line 31
    :cond_2
    iget-boolean p2, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mForceRestricted:Z

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    if-eqz p2, :cond_3

    .line 35
    .line 36
    return v1

    .line 37
    :cond_3
    iget-boolean p2, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafOn:Z

    .line 38
    .line 39
    if-eqz p2, :cond_8

    .line 40
    .line 41
    iget p2, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafUid:I

    .line 42
    .line 43
    if-ne p2, v2, :cond_4

    .line 44
    .line 45
    return v0

    .line 46
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_5

    .line 51
    .line 52
    return v0

    .line 53
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    const/16 v0, 0x190

    .line 58
    .line 59
    if-ge p2, v0, :cond_7

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-eqz p2, :cond_6

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_6
    return v1

    .line 69
    :cond_7
    :goto_0
    iget-object p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    xor-int/2addr p0, v1

    .line 76
    return p0

    .line 77
    :cond_8
    return v0
.end method
