.class public final synthetic Lcom/android/server/wm/RemoteAnimationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mIsInputDroppedForAnimation:Z

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    iput-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mIsInputDroppedForAnimation:Z

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->updateUntrustedEmbeddingInputProtection()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method
