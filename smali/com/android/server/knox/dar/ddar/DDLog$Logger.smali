.class public final Lcom/android/server/knox/dar/ddar/DDLog$Logger;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static mInstance:Lcom/android/server/knox/dar/ddar/DDLog$Logger;


# instance fields
.field public cos:Lcom/android/server/knox/dar/ddar/DDLog$CountingOutputStream;

.field public currentFile:Ljava/io/File;

.field public fos:Ljava/io/OutputStreamWriter;

.field public final logWorker:Lcom/android/server/knox/dar/ddar/DDLog$Logger$2;

.field public loggerRunning:Z

.field public final storageDir:Ljava/io/File;

.field public final storeQ:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method public static -$$Nest$mrealStore(Lcom/android/server/knox/dar/ddar/DDLog$Logger;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "Caught exception while writing to stream! "

    .line 2
    .line 3
    const-string v1, "\' is larger than 4194304 bytes. Rotating file."

    .line 4
    .line 5
    const-string v2, "File \'"

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    .line 9
    .line 10
    if-nez v3, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->openCurrentFile()V

    .line 13
    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v1, "No current file set in realStore!"

    .line 23
    .line 24
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_3

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->cos:Lcom/android/server/knox/dar/ddar/DDLog$CountingOutputStream;

    .line 33
    .line 34
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :try_start_1
    iget-wide v4, v3, Lcom/android/server/knox/dar/ddar/DDLog$CountingOutputStream;->count:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    .line 37
    :try_start_2
    monitor-exit v3

    .line 38
    const-wide/32 v6, 0x400000

    .line 39
    .line 40
    .line 41
    cmp-long v3, v4, v6

    .line 42
    .line 43
    if-lez v3, :cond_2

    .line 44
    .line 45
    const-string v3, "DualDAR:DDLog:Logger"

    .line 46
    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->roll()V

    .line 72
    .line 73
    .line 74
    :cond_2
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->fos:Ljava/io/OutputStreamWriter;

    .line 75
    .line 76
    invoke-virtual {v1, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :catchall_1
    move-exception p1

    .line 81
    monitor-exit v3

    .line 82
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    :goto_1
    :try_start_3
    const-string v1, "DualDAR:DDLog:Logger"

    .line 84
    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    .line 102
    .line 103
    :goto_2
    monitor-exit p0

    .line 104
    return-void

    .line 105
    :goto_3
    monitor-exit p0

    .line 106
    throw p1
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->storeQ:Ljava/util/concurrent/BlockingQueue;

    .line 10
    .line 11
    new-instance v0, Ljava/io/File;

    .line 12
    .line 13
    const-string v1, "/data/log"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->storageDir:Ljava/io/File;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->cos:Lcom/android/server/knox/dar/ddar/DDLog$CountingOutputStream;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->fos:Ljava/io/OutputStreamWriter;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->loggerRunning:Z

    .line 29
    .line 30
    new-instance v0, Lcom/android/server/knox/dar/ddar/DDLog$Logger$2;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/android/server/knox/dar/ddar/DDLog$Logger$2;-><init>(Lcom/android/server/knox/dar/ddar/DDLog$Logger;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->logWorker:Lcom/android/server/knox/dar/ddar/DDLog$Logger$2;

    .line 36
    .line 37
    return-void
.end method

.method public static enqueLog(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-class v0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->mInstance:Lcom/android/server/knox/dar/ddar/DDLog$Logger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-boolean v0, v1, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->loggerRunning:Z

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    :try_start_1
    iget-object v0, v1, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->storeQ:Ljava/util/concurrent/BlockingQueue;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    new-instance v4, Ljava/util/Date;

    .line 32
    .line 33
    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 34
    .line 35
    .line 36
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 37
    .line 38
    const-string v3, "MM-dd HH:mm:ss.SSS"

    .line 39
    .line 40
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v2, " "

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-interface {v0, p0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v1, "Caught exception while adding to store queue! "

    .line 70
    .line 71
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const-string v1, "DualDAR:DDLog:Logger"

    .line 82
    .line 83
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    .line 88
    .line 89
    :goto_0
    return-void

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    monitor-exit v0

    .line 92
    throw p0
.end method


# virtual methods
.method public final cleanupBackupFiles()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->storageDir:Ljava/io/File;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/knox/dar/ddar/DDLog$Logger$1;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    array-length v1, p0

    .line 14
    if-ge v0, v1, :cond_1

    .line 15
    .line 16
    aget-object v1, p0, v0

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const-string v2, "DualDAR:DDLog:Logger"

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    aget-object v1, p0, v0

    .line 27
    .line 28
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v3, "Failed to delete file: %s"

    .line 33
    .line 34
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v3, "Log File "

    .line 44
    .line 45
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    aget-object v3, p0, v0

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string/jumbo v3, "is removed as next backup log file is ready"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    return-void
.end method

.method public final moveCurrentToBackup()V
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "-yyyy-MM-dd-HH-mm-ss"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/Date;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string/jumbo v1, "ddar_fw_log"

    .line 18
    .line 19
    .line 20
    const-string v2, ".txt"

    .line 21
    .line 22
    invoke-static {v1, v0, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Ljava/io/File;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->storageDir:Ljava/io/File;

    .line 29
    .line 30
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "Rename Log File "

    .line 36
    .line 37
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v2, " to "

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v2, "DualDAR:DDLog:Logger"

    .line 66
    .line 67
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_0

    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    .line 79
    .line 80
    filled-new-array {p0, v1}, [Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    const-string v0, "Failed to renameTo file: %s to %s"

    .line 85
    .line 86
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :cond_0
    return-void
.end method

.method public final openCurrentFile()V
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->storageDir:Ljava/io/File;

    .line 4
    .line 5
    const-string/jumbo v2, "ddar_fw_log.txt"

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "Cannot create file "

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_1
    :goto_0
    const-string v0, "DualDAR:DDLog:Logger"

    .line 55
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v2, "Opened Existing or New Log file "

    .line 59
    .line 60
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v2, " of length "

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 80
    .line 81
    .line 82
    move-result-wide v2

    .line 83
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    new-instance v0, Lcom/android/server/knox/dar/ddar/DDLog$CountingOutputStream;

    .line 94
    .line 95
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 96
    .line 97
    new-instance v2, Ljava/io/FileOutputStream;

    .line 98
    .line 99
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    .line 100
    .line 101
    const/4 v4, 0x1

    .line 102
    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 103
    .line 104
    .line 105
    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 106
    .line 107
    .line 108
    invoke-direct {v0, v1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 109
    .line 110
    .line 111
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->cos:Lcom/android/server/knox/dar/ddar/DDLog$CountingOutputStream;

    .line 112
    .line 113
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->currentFile:Ljava/io/File;

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 116
    .line 117
    .line 118
    move-result-wide v1

    .line 119
    monitor-enter v0

    .line 120
    :try_start_0
    iget-wide v3, v0, Lcom/android/server/knox/dar/ddar/DDLog$CountingOutputStream;->count:J

    .line 121
    .line 122
    add-long/2addr v3, v1

    .line 123
    iput-wide v3, v0, Lcom/android/server/knox/dar/ddar/DDLog$CountingOutputStream;->count:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    monitor-exit v0

    .line 126
    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 127
    .line 128
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->cos:Lcom/android/server/knox/dar/ddar/DDLog$CountingOutputStream;

    .line 129
    .line 130
    const-string v2, "UTF-8"

    .line 131
    .line 132
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 137
    .line 138
    .line 139
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->fos:Ljava/io/OutputStreamWriter;

    .line 140
    .line 141
    return-void

    .line 142
    :catchall_0
    move-exception p0

    .line 143
    monitor-exit v0

    .line 144
    throw p0
.end method

.method public final roll()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->fos:Ljava/io/OutputStreamWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->fos:Ljava/io/OutputStreamWriter;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->fos:Ljava/io/OutputStreamWriter;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "Caught exception while closing stream! "

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "DualDAR:DDLog:Logger"

    .line 34
    .line 35
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->cleanupBackupFiles()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->moveCurrentToBackup()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->openCurrentFile()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catch_1
    move-exception p0

    .line 52
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final start()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->loggerRunning:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->logWorker:Lcom/android/server/knox/dar/ddar/DDLog$Logger$2;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->logWorker:Lcom/android/server/knox/dar/ddar/DDLog$Logger$2;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    const-string/jumbo p0, "ro.build.PDA"

    .line 15
    .line 16
    .line 17
    const-string v0, "Unknown"

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    const/16 v0, 0x5f

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, -0x1

    .line 32
    if-eq v1, v2, :cond_0

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string v0, "DDAR Logging Started [DeviceVersion : %s]%n"

    .line 48
    .line 49
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->enqueLog(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
