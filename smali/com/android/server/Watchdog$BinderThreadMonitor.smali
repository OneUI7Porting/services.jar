.class public final Lcom/android/server/Watchdog$BinderThreadMonitor;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# virtual methods
.method public final monitor()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/Binder;->blockUntilThreadAvailable()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
