.class public final Lcom/android/server/ibs/IntelligentBatterySaverLogger;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static sInstance:Lcom/android/server/ibs/IntelligentBatterySaverLogger;


# instance fields
.field public mIBSLog:Landroid/util/LocalLog;

.field public mIsUsed:Z


# virtual methods
.method public final add(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIsUsed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIsUsed:Z

    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIBSLog:Landroid/util/LocalLog;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
