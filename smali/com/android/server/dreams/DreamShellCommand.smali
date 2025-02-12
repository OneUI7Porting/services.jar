.class public final Lcom/android/server/dreams/DreamShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mService:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/dreams/DreamShellCommand;->mService:Lcom/android/server/dreams/DreamManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 5

    .line 1
    const-string/jumbo v0, "onCommand:"

    .line 2
    .line 3
    .line 4
    const-string v1, "DreamShellCommand"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const v2, -0xaf33596

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    if-eq v1, v2, :cond_1

    .line 20
    .line 21
    const v2, 0x57d5fa0a

    .line 22
    .line 23
    .line 24
    if-eq v1, v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string/jumbo v1, "start-dreaming"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    move v1, v4

    .line 37
    goto :goto_1

    .line 38
    :catch_0
    move-exception p1

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    const-string/jumbo v1, "stop-dreaming"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    move v1, v3

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    move v1, v0

    .line 52
    :goto_1
    const-string v2, "Must be root to call Dream shell commands"

    .line 53
    .line 54
    if-eqz v1, :cond_5

    .line 55
    .line 56
    if-eq v1, v3, :cond_3

    .line 57
    .line 58
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    return p0

    .line 63
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_4

    .line 68
    .line 69
    iget-object p1, p0, Lcom/android/server/dreams/DreamShellCommand;->mService:Lcom/android/server/dreams/DreamManagerService;

    .line 70
    .line 71
    const-string/jumbo v1, "stopping dream from shell"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v1, v4}, Lcom/android/server/dreams/DreamManagerService;->stopDreamInternal(Ljava/lang/String;Z)V

    .line 75
    .line 76
    .line 77
    return v4

    .line 78
    :cond_4
    new-instance p1, Ljava/lang/SecurityException;

    .line 79
    .line 80
    invoke-direct {p1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-nez p1, :cond_6

    .line 89
    .line 90
    iget-object p1, p0, Lcom/android/server/dreams/DreamShellCommand;->mService:Lcom/android/server/dreams/DreamManagerService;

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/android/server/dreams/DreamManagerService;->requestDreamInternal()V

    .line 93
    .line 94
    .line 95
    return v4

    .line 96
    :cond_6
    new-instance p1, Ljava/lang/SecurityException;

    .line 97
    .line 98
    invoke-direct {p1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    return v0
.end method

.method public final onHelp()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Dream manager (dreams) commands:"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "  help"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "      Print this help text."

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "  start-dreaming"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "      Start the currently configured dream."

    .line 26
    .line 27
    const-string v1, "  stop-dreaming"

    .line 28
    .line 29
    const-string v2, "      Stops any active dream"

    .line 30
    .line 31
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
