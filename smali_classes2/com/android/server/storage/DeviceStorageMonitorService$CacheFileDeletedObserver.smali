.class public final Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;
.super Landroid/os/FileObserver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .locals 0

    .line 1
    const/16 p0, 0xabc

    .line 2
    .line 3
    invoke-static {p0, p2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method
