.class public final Lcom/android/server/knox/dar/ddar/DDLog$Logger$2;
.super Ljava/lang/Thread;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/ddar/DDLog$Logger;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/ddar/DDLog$Logger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/dar/ddar/DDLog$Logger;

    .line 2
    .line 3
    const-string p1, "Log Worker"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    const-string v0, "DDAR Logger started running"

    .line 2
    .line 3
    const-string v1, "DualDAR:DDLog:Logger"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :goto_0
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/dar/ddar/DDLog$Logger;

    .line 9
    .line 10
    iget-boolean v2, v0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->loggerRunning:Z

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    :try_start_0
    iget-object v0, v0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->storeQ:Ljava/util/concurrent/BlockingQueue;

    .line 15
    .line 16
    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/dar/ddar/DDLog$Logger;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->fos:Ljava/io/OutputStreamWriter;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    goto :goto_2

    .line 36
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/dar/ddar/DDLog$Logger;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->storeQ:Ljava/util/concurrent/BlockingQueue;

    .line 39
    .line 40
    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/String;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/dar/ddar/DDLog$Logger;

    .line 49
    .line 50
    invoke-static {v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->-$$Nest$mrealStore(Lcom/android/server/knox/dar/ddar/DDLog$Logger;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v3, "Caught exception in log worker: "

    .line 57
    .line 58
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    return-void
.end method
