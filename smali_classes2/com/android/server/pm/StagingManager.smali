.class public final Lcom/android/server/pm/StagingManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mBootCompleted:Ljava/util/concurrent/CompletableFuture;

.field public final mContext:Landroid/content/Context;

.field public final mFailedPackageNames:Ljava/util/List;

.field public final mFailureReason:Ljava/lang/String;

.field public final mFailureReasonFile:Ljava/io/File;

.field public mNativeFailureReason:Ljava/lang/String;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mStagedApexObservers:Ljava/util/List;

.field public final mStagedSessions:Landroid/util/SparseArray;

.field public final mSuccessfulStagedSessionIds:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/ApexManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/io/File;

    .line 5
    .line 6
    const-string v1, "/metadata/staged-install/failure_reason.txt"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailureReasonFile:Ljava/io/File;

    .line 12
    .line 13
    new-instance v1, Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    .line 19
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    .line 26
    .line 27
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    .line 33
    .line 34
    new-instance v1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    .line 40
    .line 41
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/android/server/pm/StagingManager;->mBootCompleted:Ljava/util/concurrent/CompletableFuture;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    iput-object p2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 51
    .line 52
    const-string/jumbo p2, "power"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Landroid/os/PowerManager;

    .line 60
    .line 61
    iput-object p1, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_0

    .line 68
    .line 69
    :try_start_0
    new-instance p1, Ljava/io/BufferedReader;

    .line 70
    .line 71
    new-instance p2, Ljava/io/FileReader;

    .line 72
    .line 73
    invoke-direct {p2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    :try_start_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    iput-object p2, p0, Lcom/android/server/pm/StagingManager;->mFailureReason:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .line 85
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catchall_1
    move-exception p1

    .line 95
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 99
    :catch_0
    :cond_0
    :goto_1
    return-void
.end method

.method public static extractApexSessions(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    check-cast p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 11
    .line 12
    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->getChildSessions()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 35
    .line 36
    check-cast v1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->containsApexSession()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :cond_2
    return-object v0
.end method


# virtual methods
.method public final abortCheckpoint(Ljava/lang/String;ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 2
    .line 3
    const-string v1, "StagingManager"

    .line 4
    .line 5
    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    :try_start_0
    new-instance p2, Ljava/io/BufferedWriter;

    .line 13
    .line 14
    new-instance p3, Ljava/io/FileWriter;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mFailureReasonFile:Ljava/io/File;

    .line 17
    .line 18
    invoke-direct {p3, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p2, p3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    :try_start_1
    invoke-virtual {p2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    :try_start_2
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :catch_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    :try_start_3
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_1
    move-exception p2

    .line 39
    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 43
    :goto_1
    :try_start_5
    const-string p2, "Failed to save failure reason: "

    .line 44
    .line 45
    invoke-static {v1, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->revertActiveSessions()Z

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string p2, "abort-staged-install"

    .line 59
    .line 60
    const/4 p3, 0x0

    .line 61
    invoke-interface {p1, p2, p3}, Landroid/os/storage/IStorageManager;->abortChanges(Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :catch_1
    move-exception p1

    .line 66
    const-string p2, "Failed to abort checkpoint"

    .line 67
    .line 68
    invoke-static {v1, p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->revertActiveSessions()Z

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    .line 78
    .line 79
    const/4 p1, 0x0

    .line 80
    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    :goto_3
    return-void
.end method

.method public final abortSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    .line 5
    .line 6
    check-cast p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 9
    .line 10
    iget p1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public commitSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->createSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 2
    .line 3
    .line 4
    check-cast p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isSessionReady()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->containsApexSession()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/pm/StagingManager;->notifyStagedApexObservers()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public createSession(Lcom/android/server/pm/StagingManager$StagedSession;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    .line 5
    .line 6
    move-object v1, p1

    .line 7
    check-cast v1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 10
    .line 11
    iget v1, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 12
    .line 13
    invoke-virtual {p0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final getReasonForRevert()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailureReason:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "Session reverted due to crashing native process: "

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_1
    const-string p0, ""

    .line 36
    .line 37
    return-object p0
.end method

.method public getStagedApexInfos(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/Map;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    move v2, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v0

    .line 8
    :goto_0
    const-string v3, "Session is null"

    .line 9
    .line 10
    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    check-cast p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 14
    .line 15
    iget-object v2, p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    xor-int/2addr v1, v2

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v3, p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 28
    .line 29
    iget v4, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 30
    .line 31
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v4, " session has parent session"

    .line 35
    .line 36
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->containsApexSession()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    iget v4, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 56
    .line 57
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v4, " session does not contain apex"

    .line 61
    .line 62
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isSessionReady()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_5

    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_1

    .line 83
    .line 84
    goto/16 :goto_6

    .line 85
    .line 86
    :cond_1
    new-instance v1, Landroid/apex/ApexSessionParams;

    .line 87
    .line 88
    invoke-direct {v1}, Landroid/apex/ApexSessionParams;-><init>()V

    .line 89
    .line 90
    .line 91
    iget v2, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 92
    .line 93
    iput v2, v1, Landroid/apex/ApexSessionParams;->sessionId:I

    .line 94
    .line 95
    new-instance v2, Landroid/util/IntArray;

    .line 96
    .line 97
    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    .line 98
    .line 99
    .line 100
    iget-object v3, p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 101
    .line 102
    iget-object v3, v3, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 103
    .line 104
    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 105
    .line 106
    if-eqz v3, :cond_3

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->getChildSessions()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_3

    .line 121
    .line 122
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    check-cast v3, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 127
    .line 128
    check-cast v3, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 129
    .line 130
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isApexSession()Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-eqz v4, :cond_2

    .line 135
    .line 136
    iget-object v3, v3, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 137
    .line 138
    iget v3, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 139
    .line 140
    invoke-virtual {v2, v3}, Landroid/util/IntArray;->add(I)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_3
    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    iput-object p1, v1, Landroid/apex/ApexSessionParams;->childSessionIds:[I

    .line 149
    .line 150
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 151
    .line 152
    check-cast p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    .line 153
    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    const-string p1, "ApexManager"

    .line 158
    .line 159
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-interface {p0, v1}, Landroid/apex/IApexService;->getStagedApexInfos(Landroid/apex/ApexSessionParams;)[Landroid/apex/ApexInfo;

    .line 164
    .line 165
    .line 166
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    goto :goto_3

    .line 168
    :catch_0
    move-exception p0

    .line 169
    goto :goto_2

    .line 170
    :catch_1
    move-exception p0

    .line 171
    goto :goto_5

    .line 172
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string v2, "Failed to collect staged apex infos"

    .line 175
    .line 176
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-static {p0, v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    new-array p0, v0, [Landroid/apex/ApexInfo;

    .line 183
    .line 184
    :goto_3
    new-instance p1, Landroid/util/ArrayMap;

    .line 185
    .line 186
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 187
    .line 188
    .line 189
    array-length v1, p0

    .line 190
    :goto_4
    if-ge v0, v1, :cond_4

    .line 191
    .line 192
    aget-object v2, p0, v0

    .line 193
    .line 194
    iget-object v3, v2, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {p1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    add-int/lit8 v0, v0, 0x1

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_4
    return-object p1

    .line 203
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    const-string v1, "Unable to contact apexservice"

    .line 206
    .line 207
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    new-instance p1, Ljava/lang/RuntimeException;

    .line 225
    .line 226
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 227
    .line 228
    .line 229
    throw p1

    .line 230
    :cond_5
    :goto_6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    return-object p0
.end method

.method public final getStagedApexModuleNames()Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v2, v3, :cond_2

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 25
    .line 26
    check-cast v3, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isSessionReady()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    iget-object v4, v3, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_1

    .line 41
    .line 42
    iget-object v4, v3, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 43
    .line 44
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->containsApexSession()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/server/pm/StagingManager;->getStagedApexInfos(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/Map;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_2

    .line 71
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    monitor-exit v1

    .line 75
    return-object v0

    .line 76
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p0
.end method

.method public final notifyStagedApexObservers()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    .line 5
    .line 6
    check-cast v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/content/pm/IStagedApexObserver;

    .line 23
    .line 24
    new-instance v3, Landroid/content/pm/ApexStagedEvent;

    .line 25
    .line 26
    invoke-direct {v3}, Landroid/content/pm/ApexStagedEvent;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/pm/StagingManager;->getStagedApexModuleNames()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const/4 v5, 0x0

    .line 34
    new-array v5, v5, [Ljava/lang/String;

    .line 35
    .line 36
    check-cast v4, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, [Ljava/lang/String;

    .line 43
    .line 44
    iput-object v4, v3, Landroid/content/pm/ApexStagedEvent;->stagedApexModuleNames:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    :try_start_1
    invoke-interface {v2, v3}, Landroid/content/pm/IStagedApexObserver;->onApexStaged(Landroid/content/pm/ApexStagedEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception v2

    .line 53
    :try_start_2
    const-string v3, "StagingManager"

    .line 54
    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v5, "Failed to contact the observer "

    .line 61
    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    monitor-exit v0

    .line 81
    return-void

    .line 82
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    throw p0
.end method

.method public onBootCompletedBroadcastReceived()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mBootCompleted:Ljava/util/concurrent/CompletableFuture;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, v2, p0}, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onInstallationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageManagerException;ZZ)V
    .locals 2

    .line 1
    iget v0, p2, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, "Failed to install sessionId: "

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 20
    .line 21
    iget v1, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, " Error: "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/StagingManager;->abortCheckpoint(Ljava/lang/String;ZZ)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->containsApexSession()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_0

    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/android/server/pm/ApexManager;->revertActiveSessions()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    const-string p2, "StagingManager"

    .line 59
    .line 60
    if-nez p1, :cond_1

    .line 61
    .line 62
    const-string p0, "Failed to abort APEXd session"

    .line 63
    .line 64
    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const-string p1, "Successfully aborted apexd session. Rebooting device in order to revert to the previous state of APEXd."

    .line 69
    .line 70
    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    .line 74
    .line 75
    const/4 p1, 0x0

    .line 76
    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :goto_0
    return-void
.end method

.method public final resumeSession(Lcom/android/server/pm/StagingManager$StagedSession;ZZ)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "StagingManager"

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v3, "Resuming session "

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    move-object/from16 v3, p1

    .line 13
    .line 14
    check-cast v3, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 15
    .line 16
    iget-object v4, v3, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 17
    .line 18
    iget v4, v4, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 19
    .line 20
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->containsApexSession()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    if-nez p3, :cond_1

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "Reverting back to safe state. Marking "

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, v3, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 46
    .line 47
    iget v2, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 48
    .line 49
    const-string v4, " as failed."

    .line 50
    .line 51
    invoke-static {v2, v1, v4}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/StagingManager;->getReasonForRevert()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_0

    .line 64
    .line 65
    const-string v2, " Reason for revert: "

    .line 66
    .line 67
    invoke-static {v1, v2, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    :cond_0
    const-string v0, "StagingManager"

    .line 72
    .line 73
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    const/16 v0, -0x6e

    .line 77
    .line 78
    invoke-virtual {v3, v0, v1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_1
    if-eqz v1, :cond_13

    .line 83
    .line 84
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/StagingManager;->extractApexSessions(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    const/16 v5, -0x80

    .line 95
    .line 96
    const/4 v6, 0x0

    .line 97
    const/4 v7, 0x0

    .line 98
    if-eqz v4, :cond_2

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_6

    .line 110
    .line 111
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    check-cast v4, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 116
    .line 117
    check-cast v4, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 118
    .line 119
    iget-object v4, v4, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 120
    .line 121
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    iget-object v8, v0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 126
    .line 127
    check-cast v8, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    .line 128
    .line 129
    iget-object v9, v8, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    .line 130
    .line 131
    monitor-enter v9

    .line 132
    :try_start_0
    iget-object v10, v8, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    .line 133
    .line 134
    if-eqz v10, :cond_3

    .line 135
    .line 136
    const/4 v10, 0x1

    .line 137
    goto :goto_1

    .line 138
    :cond_3
    move v10, v7

    .line 139
    :goto_1
    const-string v11, "APEX packages have not been scanned"

    .line 140
    .line 141
    invoke-static {v10, v11}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object v10, v8, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    .line 145
    .line 146
    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v10

    .line 150
    check-cast v10, Ljava/lang/String;

    .line 151
    .line 152
    if-nez v10, :cond_4

    .line 153
    .line 154
    monitor-exit v9

    .line 155
    move-object v8, v6

    .line 156
    goto :goto_2

    .line 157
    :catchall_0
    move-exception v0

    .line 158
    goto :goto_3

    .line 159
    :cond_4
    iget-object v8, v8, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mErrorWithApkInApex:Ljava/util/Map;

    .line 160
    .line 161
    check-cast v8, Landroid/util/ArrayMap;

    .line 162
    .line 163
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    check-cast v8, Ljava/lang/String;

    .line 168
    .line 169
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :goto_2
    if-nez v8, :cond_5

    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_5
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 174
    .line 175
    const-string v1, "Failed to install apk-in-apex of "

    .line 176
    .line 177
    const-string v2, " : "

    .line 178
    .line 179
    invoke-static {v1, v4, v2, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-direct {v0, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw v0

    .line 187
    :goto_3
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    throw v0

    .line 189
    :cond_6
    :goto_4
    iget-object v2, v3, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 190
    .line 191
    iget-object v2, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 192
    .line 193
    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 194
    .line 195
    if-nez v2, :cond_7

    .line 196
    .line 197
    goto/16 :goto_7

    .line 198
    .line 199
    :cond_7
    new-instance v2, Landroid/util/ArraySet;

    .line 200
    .line 201
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->getChildSessions()Ljava/util/List;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    :cond_8
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    if-eqz v8, :cond_9

    .line 217
    .line 218
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    check-cast v8, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 223
    .line 224
    check-cast v8, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 225
    .line 226
    invoke-virtual {v8}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->isApexSession()Z

    .line 227
    .line 228
    .line 229
    move-result v9

    .line 230
    if-nez v9, :cond_8

    .line 231
    .line 232
    iget-object v8, v8, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 233
    .line 234
    invoke-virtual {v8}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v8

    .line 238
    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    goto :goto_5

    .line 242
    :cond_9
    invoke-static {v3}, Lcom/android/server/pm/StagingManager;->extractApexSessions(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/List;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    check-cast v4, Ljava/util/ArrayList;

    .line 247
    .line 248
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 253
    .line 254
    .line 255
    move-result v8

    .line 256
    if-eqz v8, :cond_c

    .line 257
    .line 258
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v8

    .line 262
    check-cast v8, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 263
    .line 264
    check-cast v8, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 265
    .line 266
    iget-object v9, v8, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 267
    .line 268
    invoke-virtual {v9}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v9

    .line 272
    iget-object v10, v0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 273
    .line 274
    invoke-virtual {v10, v9}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    .line 275
    .line 276
    .line 277
    move-result-object v10

    .line 278
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 279
    .line 280
    .line 281
    move-result-object v10

    .line 282
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 283
    .line 284
    .line 285
    move-result v11

    .line 286
    if-eqz v11, :cond_a

    .line 287
    .line 288
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v11

    .line 292
    check-cast v11, Ljava/lang/String;

    .line 293
    .line 294
    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v12

    .line 298
    if-eqz v12, :cond_b

    .line 299
    .line 300
    goto :goto_6

    .line 301
    :cond_b
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 302
    .line 303
    const-string v1, "Package: "

    .line 304
    .line 305
    const-string v2, " in session: "

    .line 306
    .line 307
    invoke-static {v1, v9, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    iget-object v2, v8, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 312
    .line 313
    iget v2, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 314
    .line 315
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string v2, " has duplicate apk-in-apex: "

    .line 319
    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 331
    .line 332
    .line 333
    throw v0

    .line 334
    :cond_c
    :goto_7
    iget-object v2, v3, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 335
    .line 336
    iget-object v2, v2, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 337
    .line 338
    iget v4, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 339
    .line 340
    const/high16 v5, 0x40000

    .line 341
    .line 342
    and-int/2addr v4, v5

    .line 343
    if-nez v4, :cond_d

    .line 344
    .line 345
    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 346
    .line 347
    const/4 v4, 0x5

    .line 348
    if-ne v2, v4, :cond_12

    .line 349
    .line 350
    :cond_d
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/StagingManager;->extractApexSessions(Lcom/android/server/pm/StagingManager$StagedSession;)Ljava/util/List;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    check-cast v2, Ljava/util/ArrayList;

    .line 355
    .line 356
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 357
    .line 358
    .line 359
    move-result v4

    .line 360
    if-eqz v4, :cond_e

    .line 361
    .line 362
    goto/16 :goto_b

    .line 363
    .line 364
    :cond_e
    const-class v4, Lcom/android/server/pm/UserManagerInternal;

    .line 365
    .line 366
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v4

    .line 370
    check-cast v4, Lcom/android/server/pm/UserManagerInternal;

    .line 371
    .line 372
    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 373
    .line 374
    .line 375
    move-result-object v4

    .line 376
    const-class v5, Lcom/android/server/rollback/RollbackManagerInternal;

    .line 377
    .line 378
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v5

    .line 382
    check-cast v5, Lcom/android/server/rollback/RollbackManagerInternal;

    .line 383
    .line 384
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 385
    .line 386
    .line 387
    move-result v6

    .line 388
    move v8, v7

    .line 389
    :goto_8
    if-ge v8, v6, :cond_12

    .line 390
    .line 391
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v9

    .line 395
    check-cast v9, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 396
    .line 397
    check-cast v9, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 398
    .line 399
    iget-object v9, v9, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 400
    .line 401
    invoke-virtual {v9}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v9

    .line 405
    invoke-static {v4}, Landroid/os/UserHandle;->toUserHandles([I)Ljava/util/List;

    .line 406
    .line 407
    .line 408
    move-result-object v10

    .line 409
    move-object/from16 v19, v5

    .line 410
    .line 411
    check-cast v19, Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 412
    .line 413
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 414
    .line 415
    .line 416
    invoke-static {v10}, Landroid/os/UserHandle;->fromUserHandles(Ljava/util/List;)[I

    .line 417
    .line 418
    .line 419
    move-result-object v12

    .line 420
    const/4 v13, 0x0

    .line 421
    const-wide/16 v14, 0x0

    .line 422
    .line 423
    const/16 v16, 0x0

    .line 424
    .line 425
    const/16 v17, 0x0

    .line 426
    .line 427
    move-object/from16 v10, v19

    .line 428
    .line 429
    move-object v11, v9

    .line 430
    invoke-virtual/range {v10 .. v17}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->snapshotAndRestoreUserData(Ljava/lang/String;[IIJLjava/lang/String;I)V

    .line 431
    .line 432
    .line 433
    iget-object v10, v0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 434
    .line 435
    invoke-virtual {v10, v9}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    .line 436
    .line 437
    .line 438
    move-result-object v9

    .line 439
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 440
    .line 441
    .line 442
    move-result v10

    .line 443
    move v15, v7

    .line 444
    :goto_9
    if-ge v15, v10, :cond_11

    .line 445
    .line 446
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v11

    .line 450
    move-object v12, v11

    .line 451
    check-cast v12, Ljava/lang/String;

    .line 452
    .line 453
    const-class v11, Landroid/content/pm/PackageManagerInternal;

    .line 454
    .line 455
    invoke-static {v11}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v11

    .line 459
    check-cast v11, Landroid/content/pm/PackageManagerInternal;

    .line 460
    .line 461
    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 462
    .line 463
    .line 464
    move-result-object v13

    .line 465
    if-nez v13, :cond_10

    .line 466
    .line 467
    new-instance v11, Ljava/lang/StringBuilder;

    .line 468
    .line 469
    const-string v13, "Could not find package: "

    .line 470
    .line 471
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    const-string v12, "for snapshotting/restoring user data."

    .line 478
    .line 479
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v11

    .line 486
    const-string v12, "StagingManager"

    .line 487
    .line 488
    invoke-static {v12, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    .line 490
    .line 491
    :cond_f
    move/from16 v21, v15

    .line 492
    .line 493
    goto :goto_a

    .line 494
    :cond_10
    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 495
    .line 496
    .line 497
    move-result-object v11

    .line 498
    if-eqz v11, :cond_f

    .line 499
    .line 500
    move-object v13, v11

    .line 501
    check-cast v13, Lcom/android/server/pm/PackageSetting;

    .line 502
    .line 503
    iget v14, v13, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 504
    .line 505
    invoke-interface {v11, v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 506
    .line 507
    .line 508
    move-result-object v16

    .line 509
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    .line 510
    .line 511
    .line 512
    move-result-wide v16

    .line 513
    invoke-static {v11, v4}, Lcom/android/server/pm/pkg/PackageStateUtils;->queryInstalledUsers(Lcom/android/server/pm/pkg/PackageStateInternal;[I)[I

    .line 514
    .line 515
    .line 516
    move-result-object v11

    .line 517
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getSeInfo()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v18

    .line 521
    invoke-static {v11}, Landroid/os/UserHandle;->toUserHandles([I)Ljava/util/List;

    .line 522
    .line 523
    .line 524
    move-result-object v11

    .line 525
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 526
    .line 527
    .line 528
    invoke-static {v11}, Landroid/os/UserHandle;->fromUserHandles(Ljava/util/List;)[I

    .line 529
    .line 530
    .line 531
    move-result-object v13

    .line 532
    const/16 v20, 0x0

    .line 533
    .line 534
    move-object/from16 v11, v19

    .line 535
    .line 536
    move/from16 v21, v15

    .line 537
    .line 538
    move-wide/from16 v15, v16

    .line 539
    .line 540
    move-object/from16 v17, v18

    .line 541
    .line 542
    move/from16 v18, v20

    .line 543
    .line 544
    invoke-virtual/range {v11 .. v18}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->snapshotAndRestoreUserData(Ljava/lang/String;[IIJLjava/lang/String;I)V

    .line 545
    .line 546
    .line 547
    :goto_a
    add-int/lit8 v15, v21, 0x1

    .line 548
    .line 549
    goto :goto_9

    .line 550
    :cond_11
    add-int/lit8 v8, v8, 0x1

    .line 551
    .line 552
    goto/16 :goto_8

    .line 553
    .line 554
    :cond_12
    :goto_b
    const-string v2, "StagingManager"

    .line 555
    .line 556
    new-instance v4, Ljava/lang/StringBuilder;

    .line 557
    .line 558
    const-string v5, "APEX packages in session "

    .line 559
    .line 560
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    iget-object v5, v3, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 564
    .line 565
    iget v5, v5, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 566
    .line 567
    const-string v6, " were successfully activated. Proceeding with APK packages, if any"

    .line 568
    .line 569
    invoke-static {v4, v5, v6, v2}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    :cond_13
    const-string v2, "StagingManager"

    .line 573
    .line 574
    new-instance v4, Ljava/lang/StringBuilder;

    .line 575
    .line 576
    const-string v5, "Installing APK packages in session "

    .line 577
    .line 578
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    iget-object v5, v3, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 582
    .line 583
    iget v5, v5, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 584
    .line 585
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v4

    .line 592
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    .line 594
    .line 595
    new-instance v2, Landroid/util/TimingsTraceLog;

    .line 596
    .line 597
    const-string v4, "StagingManagerTiming"

    .line 598
    .line 599
    const-wide/32 v5, 0x40000

    .line 600
    .line 601
    .line 602
    invoke-direct {v2, v4, v5, v6}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 603
    .line 604
    .line 605
    const-string v4, "installApksInSession"

    .line 606
    .line 607
    invoke-virtual {v2, v4}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    :try_start_2
    move-object/from16 v4, p1

    .line 611
    .line 612
    check-cast v4, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 613
    .line 614
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->installSession()Ljava/util/concurrent/CompletableFuture;

    .line 615
    .line 616
    .line 617
    move-result-object v4

    .line 618
    invoke-virtual {v4}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0

    .line 619
    .line 620
    .line 621
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 622
    .line 623
    .line 624
    if-eqz v1, :cond_15

    .line 625
    .line 626
    if-eqz p2, :cond_14

    .line 627
    .line 628
    iget-object v1, v0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    .line 629
    .line 630
    monitor-enter v1

    .line 631
    :try_start_3
    iget-object v0, v0, Lcom/android/server/pm/StagingManager;->mSuccessfulStagedSessionIds:Ljava/util/List;

    .line 632
    .line 633
    move-object/from16 v2, p1

    .line 634
    .line 635
    check-cast v2, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 636
    .line 637
    iget-object v2, v2, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 638
    .line 639
    iget v2, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 640
    .line 641
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 642
    .line 643
    .line 644
    move-result-object v2

    .line 645
    check-cast v0, Ljava/util/ArrayList;

    .line 646
    .line 647
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    .line 649
    .line 650
    monitor-exit v1

    .line 651
    goto :goto_c

    .line 652
    :catchall_1
    move-exception v0

    .line 653
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 654
    throw v0

    .line 655
    :cond_14
    iget-object v0, v0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 656
    .line 657
    iget-object v1, v3, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 658
    .line 659
    iget v1, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 660
    .line 661
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ApexManager;->markStagedSessionSuccessful(I)V

    .line 662
    .line 663
    .line 664
    const-string/jumbo v0, "sys.staged_apex.state"

    .line 665
    .line 666
    .line 667
    const-string/jumbo v1, "success"

    .line 668
    .line 669
    .line 670
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    :cond_15
    :goto_c
    return-void

    .line 674
    :catch_0
    move-exception v0

    .line 675
    goto :goto_d

    .line 676
    :catch_1
    move-exception v0

    .line 677
    goto :goto_e

    .line 678
    :goto_d
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    check-cast v0, Lcom/android/server/pm/PackageManagerException;

    .line 683
    .line 684
    throw v0

    .line 685
    :goto_e
    new-instance v1, Ljava/lang/RuntimeException;

    .line 686
    .line 687
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 688
    .line 689
    .line 690
    throw v1
.end method
