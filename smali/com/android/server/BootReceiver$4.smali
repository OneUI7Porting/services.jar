.class public final Lcom/android/server/BootReceiver$4;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/MessageQueue$OnFileDescriptorEventListener;


# instance fields
.field public mTraceBuffer:[B


# virtual methods
.method public final onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I
    .locals 2

    .line 1
    const/4 p2, 0x0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BootReceiver$4;->mTraceBuffer:[B

    .line 3
    .line 4
    const/16 v1, 0x400

    .line 5
    .line 6
    invoke-static {p1, v0, p2, v1}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x1

    .line 11
    if-lez p1, :cond_1

    .line 12
    .line 13
    new-instance p1, Ljava/lang/String;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/BootReceiver$4;->mTraceBuffer:[B

    .line 16
    .line 17
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    .line 18
    .line 19
    .line 20
    const-string p0, "\n"

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    const/4 p1, -0x1

    .line 27
    if-ne p0, p1, :cond_0

    .line 28
    .line 29
    return v0

    .line 30
    :cond_0
    sget p0, Lcom/android/server/BootReceiver;->sSentReports:I

    .line 31
    .line 32
    const/16 p1, 0x8

    .line 33
    .line 34
    if-ge p0, p1, :cond_1

    .line 35
    .line 36
    const-string/jumbo p0, "dmesgd.start"

    .line 37
    .line 38
    .line 39
    const-string p1, "1"

    .line 40
    .line 41
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget p0, Lcom/android/server/BootReceiver;->sSentReports:I

    .line 45
    .line 46
    add-int/2addr p0, v0

    .line 47
    sput p0, Lcom/android/server/BootReceiver;->sSentReports:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    return v0

    .line 53
    :goto_1
    const-string p1, "BootReceiver"

    .line 54
    .line 55
    const-string v0, "Error watching for trace events"

    .line 56
    .line 57
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .line 59
    .line 60
    return p2
.end method
