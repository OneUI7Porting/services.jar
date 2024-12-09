.class public final Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mBackupManagerMonitorDumpsysUtils:Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;

.field public mMonitor:Landroid/app/backup/IBackupManagerMonitor;


# direct methods
.method public constructor <init>(Landroid/app/backup/IBackupManagerMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 3
    new-instance p1, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;

    invoke-direct {p1}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mBackupManagerMonitorDumpsysUtils:Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;

    return-void
.end method

.method public constructor <init>(Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 6
    iput-object p2, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mBackupManagerMonitorDumpsysUtils:Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;

    return-void
.end method

.method public static putMonitoringExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final monitorAgentLoggingResults(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 2
    .line 3
    const-string v1, "BackupManagerService"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "backup manager monitor is null unable to send event"

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v2, Lcom/android/internal/infra/AndroidFuture;

    .line 31
    .line 32
    invoke-direct {v2}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-interface {p2, v0}, Landroid/app/IBackupAgent;->getLoggerResults(Lcom/android/internal/infra/AndroidFuture;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p2, v2}, Landroid/app/IBackupAgent;->getOperationType(Lcom/android/internal/infra/AndroidFuture;)V

    .line 39
    .line 40
    .line 41
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 42
    .line 43
    const-wide/16 v3, 0x1f4

    .line 44
    .line 45
    invoke-virtual {v0, v3, v4, p2}, Lcom/android/internal/infra/AndroidFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Ljava/util/List;

    .line 50
    .line 51
    invoke-virtual {v2, v3, v4, p2}, Lcom/android/internal/infra/AndroidFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    new-instance v2, Landroid/os/Bundle;

    .line 62
    .line 63
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v3, "android.app.backup.extra.LOG_AGENT_LOGGING_RESULTS"

    .line 67
    .line 68
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 69
    .line 70
    .line 71
    const-string v0, "android.app.backup.extra.OPERATION_TYPE"

    .line 72
    .line 73
    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    const/16 p2, 0x34

    .line 77
    .line 78
    const/4 v0, 0x2

    .line 79
    invoke-virtual {p0, p2, p1, v0, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :catch_0
    move-exception p0

    .line 84
    goto :goto_0

    .line 85
    :catch_1
    move-exception p0

    .line 86
    goto :goto_1

    .line 87
    :goto_0
    const-string p1, "Failed to retrieve logging results from agent"

    .line 88
    .line 89
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :goto_1
    const-string p1, "Timeout while waiting to retrieve logging results from agent"

    .line 94
    .line 95
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    .line 97
    .line 98
    :goto_2
    return-void
.end method

.method public final monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    .locals 4

    .line 1
    const-string v0, "BackupManagerService"

    .line 2
    .line 3
    const-string v1, "android.app.backup.extra.OPERATION_TYPE"

    .line 4
    .line 5
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "android.app.backup.extra.LOG_EVENT_ID"

    .line 11
    .line 12
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    const-string p1, "android.app.backup.extra.LOG_EVENT_CATEGORY"

    .line 16
    .line 17
    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    const-string p1, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    .line 23
    .line 24
    iget-object p3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string p1, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    .line 30
    .line 31
    iget p3, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 32
    .line 33
    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    const-string p1, "android.app.backup.extra.LOG_EVENT_PACKAGE_FULL_VERSION"

    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 39
    .line 40
    .line 41
    move-result-wide p2

    .line 42
    invoke-virtual {v2, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 43
    .line 44
    .line 45
    :cond_0
    if-eqz p4, :cond_1

    .line 46
    .line 47
    invoke-virtual {v2, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p4, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    const/4 p2, 0x1

    .line 61
    if-ne p1, p2, :cond_1

    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mBackupManagerMonitorDumpsysUtils:Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;

    .line 64
    .line 65
    invoke-virtual {p1, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->parseBackupManagerMonitorRestoreEventForDumpsys(Landroid/os/Bundle;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object p1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 69
    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    invoke-interface {p1, v2}, Landroid/app/backup/IBackupManagerMonitor;->onEvent(Landroid/os/Bundle;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const-string/jumbo p1, "backup manager monitor is null unable to send event"

    .line 77
    .line 78
    .line 79
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_0
    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 85
    .line 86
    const-string/jumbo p0, "backup manager monitor went away"

    .line 87
    .line 88
    .line 89
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    :goto_0
    return-void
.end method
