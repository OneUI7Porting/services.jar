.class public final Lcom/android/server/UiModeManagerService$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mNightModeValue:I


# virtual methods
.method public final set(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 2
    .line 3
    invoke-static {}, Landroid/app/Flags;->enableNightModeBinderCache()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/app/UiModeManager;->invalidateNightModeCache()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
