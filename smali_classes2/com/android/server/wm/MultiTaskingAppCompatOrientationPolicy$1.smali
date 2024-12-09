.class public final Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/wm/MultiTaskingAppCompatController$OverridesObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDumpInTask(Lcom/android/server/wm/Task;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget p0, p1, Lcom/android/server/wm/Task;->mRespectOrientationRequestOverride:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string/jumbo p0, "mRespectOrientationRequestOverride="

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string p3, "0x"

    .line 19
    .line 20
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget p1, p1, Lcom/android/server/wm/Task;->mRespectOrientationRequestOverride:I

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final onOverridesChangedIfNeededInTask(ILcom/android/server/wm/Task;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget v0, p2, Lcom/android/server/wm/Task;->mRespectOrientationRequestOverride:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mOrientationOverrides:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    .line 6
    .line 7
    invoke-virtual {v1, p1, p3}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->getRespectOrientationRequest(ILjava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p2, Lcom/android/server/wm/Task;->mRespectOrientationRequestOverride:I

    .line 12
    .line 13
    if-eqz p4, :cond_0

    .line 14
    .line 15
    if-eq v0, p1, :cond_0

    .line 16
    .line 17
    new-instance p1, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$1$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$1;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final resetUserOverrides(II)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$1;->this$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mOrientationOverrides:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mUserOverride:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 7
    .line 8
    iget v1, v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mIdentityFlag:I

    .line 9
    .line 10
    and-int/2addr p2, v1

    .line 11
    if-ne p2, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->reset(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1
.end method
