.class public final Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    const/4 p0, -0x4

    .line 2
    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3
    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    invoke-static {p0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
