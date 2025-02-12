.class public final Lcom/android/server/backup/internal/RunInitializeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    const-string p1, "Running a device init; "

    .line 2
    .line 3
    const-string v0, "android.app.backup.intent.INIT"

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p2, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 17
    .line 18
    iget-object p2, p2, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter p2

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    .line 24
    .line 25
    const-string v1, "BackupManagerService"

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, " pending"

    .line 40
    .line 41
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-lez p1, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    new-array p1, p1, [Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, [Ljava/lang/String;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 77
    .line 78
    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/UserBackupManagerService;->initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    :goto_0
    monitor-exit p2

    .line 86
    return-void

    .line 87
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    throw p0
.end method
