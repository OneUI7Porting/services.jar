.class public final Lcom/android/server/LogMteState$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .locals 0

    .line 1
    const/16 p0, 0x27c5

    .line 2
    .line 3
    if-ne p1, p0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsMemoryTagging()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x1

    .line 14
    :goto_0
    invoke-static {p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 24
    .line 25
    const-string p2, "Unknown tagId="

    .line 26
    .line 27
    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method