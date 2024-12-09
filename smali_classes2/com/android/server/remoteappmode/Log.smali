.class public abstract Lcom/android/server/remoteappmode/Log;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final sFormatter:Ljava/time/format/DateTimeFormatter;

.field public static final sSavedLogs:Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;

.field public static final sSavedStates:Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "MM-dd HH:mm:ss.SSS"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/remoteappmode/Log;->sFormatter:Ljava/time/format/DateTimeFormatter;

    .line 8
    .line 9
    new-instance v0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;

    .line 10
    .line 11
    const/16 v1, 0xc8

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/android/server/remoteappmode/Log;->sSavedLogs:Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;

    .line 19
    .line 20
    const/16 v1, 0x64

    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;-><init>(I)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/android/server/remoteappmode/Log;->sSavedStates:Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;

    .line 26
    .line 27
    return-void
.end method

.method public static buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/server/remoteappmode/Log;->sFormatter:Ljava/time/format/DateTimeFormatter;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    move-object v7, p1

    .line 40
    move-object v8, p2

    .line 41
    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const/4 p1, 0x0

    .line 46
    const-string p2, "%s %5d %5d %5d %c %s: %s"

    .line 47
    .line 48
    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0x44

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/android/server/remoteappmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0x45

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/android/server/remoteappmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0x49

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/android/server/remoteappmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static save(CLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/remoteappmode/Log;->sSavedLogs:Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/android/server/remoteappmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object p1, v0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter p1

    .line 10
    :try_start_0
    iget p2, v0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mPointer:I

    .line 11
    .line 12
    add-int/lit8 p2, p2, 0x1

    .line 13
    .line 14
    iget v1, v0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mCapacity:I

    .line 15
    .line 16
    rem-int/2addr p2, v1

    .line 17
    iput p2, v0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mPointer:I

    .line 18
    .line 19
    iget-object p2, v0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iget v1, v0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mCapacity:I

    .line 26
    .line 27
    if-ne p2, v1, :cond_0

    .line 28
    .line 29
    iget-object p2, v0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    .line 30
    .line 31
    iget v0, v0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mPointer:I

    .line 32
    .line 33
    invoke-virtual {p2, v0, p0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    iget-object p2, v0, Lcom/android/server/remoteappmode/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :goto_0
    monitor-exit p1

    .line 45
    return-void

    .line 46
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method
