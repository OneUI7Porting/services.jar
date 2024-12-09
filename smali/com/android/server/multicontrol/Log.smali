.class public abstract Lcom/android/server/multicontrol/Log;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final sFormatter:Ljava/time/format/DateTimeFormatter;

.field public static final sSavedLogs:Lcom/android/server/multicontrol/Log$EvictingArrayQueue;

.field public static final sSavedStates:Lcom/android/server/multicontrol/Log$EvictingArrayQueue;


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
    sput-object v0, Lcom/android/server/multicontrol/Log;->sFormatter:Ljava/time/format/DateTimeFormatter;

    .line 8
    .line 9
    new-instance v0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;

    .line 10
    .line 11
    const/16 v1, 0xc8

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/android/server/multicontrol/Log;->sSavedLogs:Lcom/android/server/multicontrol/Log$EvictingArrayQueue;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;

    .line 19
    .line 20
    const/16 v1, 0x64

    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;-><init>(I)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/android/server/multicontrol/Log;->sSavedStates:Lcom/android/server/multicontrol/Log$EvictingArrayQueue;

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
    sget-object v1, Lcom/android/server/multicontrol/Log;->sFormatter:Ljava/time/format/DateTimeFormatter;

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

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0x44

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/android/server/multicontrol/Log;->save(CLjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "MultiControl@MultiControlManagerService"

    .line 7
    .line 8
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0x49

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/android/server/multicontrol/Log;->save(CLjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "MultiControl@MultiControlManagerService"

    .line 7
    .line 8
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static save(CLjava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "MultiControl@MultiControlManagerService"

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/multicontrol/Log;->sSavedLogs:Lcom/android/server/multicontrol/Log$EvictingArrayQueue;

    .line 4
    .line 5
    invoke-static {p0, v0, p1}, Lcom/android/server/multicontrol/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object p1, v1, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter p1

    .line 12
    :try_start_0
    iget v0, v1, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mPointer:I

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    iget v2, v1, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mCapacity:I

    .line 17
    .line 18
    rem-int/2addr v0, v2

    .line 19
    iput v0, v1, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mPointer:I

    .line 20
    .line 21
    iget-object v0, v1, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget v2, v1, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mCapacity:I

    .line 28
    .line 29
    if-ne v0, v2, :cond_0

    .line 30
    .line 31
    iget-object v0, v1, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    .line 32
    .line 33
    iget v1, v1, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mPointer:I

    .line 34
    .line 35
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    iget-object v0, v1, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :goto_0
    monitor-exit p1

    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0
.end method
