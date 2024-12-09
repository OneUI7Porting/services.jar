.class public final Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mActivityOptedIn:Lcom/android/server/wm/ActivityRecord;

.field public mTopActivityMatchesSource:Z

.field public mTopActivityOptedIn:Z


# virtual methods
.method public final optedIn(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityOptedIn:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mActivityOptedIn:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mActivityOptedIn:Lcom/android/server/wm/ActivityRecord;

    .line 9
    .line 10
    :cond_0
    return-void
.end method
