.class public abstract Lcom/android/server/desktopmode/Log;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final FORMATTER:Ljava/time/format/DateTimeFormatter;

.field public static final SAVED_LOGS:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

.field public static final SAVED_STATES:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x12c

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0xc8

    .line 9
    .line 10
    :goto_0
    const-string v1, "MM-dd HH:mm:ss.SSS"

    .line 11
    .line 12
    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sput-object v1, Lcom/android/server/desktopmode/Log;->FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 17
    .line 18
    new-instance v1, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/android/server/desktopmode/Log;->SAVED_LOGS:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    .line 24
    .line 25
    new-instance v0, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    .line 26
    .line 27
    const/16 v1, 0x64

    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;-><init>(I)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/android/server/desktopmode/Log;->SAVED_STATES:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    .line 33
    .line 34
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
    sget-object v1, Lcom/android/server/desktopmode/Log;->FORMATTER:Ljava/time/format/DateTimeFormatter;

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
    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

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

    const/16 v0, 0x45

    .line 1
    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/16 v0, 0x45

    .line 3
    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0x49

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

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
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/server/desktopmode/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object p1, Lcom/android/server/desktopmode/Log;->SAVED_LOGS:Lcom/android/server/desktopmode/Log$EvictingArrayQueue;

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Lcom/android/server/desktopmode/Log$EvictingArrayQueue;->add(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0x56

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0x57

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/android/server/desktopmode/Log;->save(CLjava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method
