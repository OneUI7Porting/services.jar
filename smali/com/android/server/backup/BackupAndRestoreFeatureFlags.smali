.class public abstract Lcom/android/server/backup/BackupAndRestoreFeatureFlags;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# direct methods
.method public static getBackupTransportFutureTimeoutMillis()J
    .locals 4

    .line 1
    const-string/jumbo v0, "backup_transport_future_timeout_millis"

    .line 2
    .line 3
    .line 4
    const-wide/32 v1, 0x927c0

    .line 5
    .line 6
    .line 7
    const-string/jumbo v3, "backup_and_restore"

    .line 8
    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method
