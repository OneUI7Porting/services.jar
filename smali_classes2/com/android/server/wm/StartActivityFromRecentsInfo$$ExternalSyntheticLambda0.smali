.class public final synthetic Lcom/android/server/wm/StartActivityFromRecentsInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/StartActivityFromRecentsInfo;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/StartActivityFromRecentsInfo;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/StartActivityFromRecentsInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/StartActivityFromRecentsInfo;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/StartActivityFromRecentsInfo$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/StartActivityFromRecentsInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/StartActivityFromRecentsInfo;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/StartActivityFromRecentsInfo$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    iput-boolean v3, v2, Lcom/android/server/wm/DexController;->mStartFromRecentInfo:Z

    .line 13
    .line 14
    iget-object v2, v0, Lcom/android/server/wm/DexRestartAppInfo;->mReusedTask:Lcom/android/server/wm/Task;

    .line 15
    .line 16
    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/wm/DexRestartAppInfo;->mOptions:Landroid/app/ActivityOptions;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    :catch_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 28
    .line 29
    iput-boolean v1, p0, Lcom/android/server/wm/DexController;->mStartFromRecentInfo:Z

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    .line 34
    .line 35
    iput-boolean v1, p0, Lcom/android/server/wm/DexController;->mStartFromRecentInfo:Z

    .line 36
    .line 37
    throw v0

    .line 38
    :goto_0
    return-void
.end method
