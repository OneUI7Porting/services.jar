.class public final Lcom/android/server/HermesService$1;
.super Ljava/lang/Thread;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    :try_start_0
    const-string/jumbo p0, "ro.soc.model"

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    sget-object v0, Lcom/android/server/HermesBigdataFunction;->CHECK_CHIPSET_LISTS:[Ljava/lang/String;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    aget-object v0, v0, v1

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lcom/android/server/HermesBigdataFunction;->unZipDumpstate()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/android/server/HermesBigdataFunction;->parseDumpstate()V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/android/server/HermesBigdataFunction;->cleanDumpstateFiles()V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/android/server/HermesService;->-$$Nest$smreportToDiagmon()V
    :try_end_0
    .catch Lcom/android/server/BigdataException; {:try_start_0 .. :try_end_0} :catch_2

    .line 29
    .line 30
    .line 31
    :try_start_1
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 32
    .line 33
    const-wide/16 v0, 0x1

    .line 34
    .line 35
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/android/server/HermesBigdataFunction;->cleanBigdataLogFiles()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/server/BigdataException; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception p0

    .line 43
    :try_start_2
    throw p0

    .line 44
    :catch_1
    new-instance p0, Lcom/android/server/BigdataException;

    .line 45
    .line 46
    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_INTERRUPTION_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 47
    .line 48
    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :catch_2
    move-exception p0

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance p0, Lcom/android/server/BigdataException;

    .line 55
    .line 56
    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_NOT_SUPPORTED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 57
    .line 58
    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 59
    .line 60
    .line 61
    throw p0
    :try_end_2
    .catch Lcom/android/server/BigdataException; {:try_start_2 .. :try_end_2} :catch_2

    .line 62
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v1, "Some problem has occured, Err = "

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/server/BigdataException;->getErrCode()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v1, "HERMES#Service"

    .line 81
    .line 82
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    .line 87
    .line 88
    :goto_1
    return-void
.end method
