.class public final synthetic Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppErrors;

.field public final synthetic f$1:Landroid/app/ApplicationErrorReport$CrashInfo;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/android/server/am/ProcessRecord;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Ljava/lang/String;

.field public final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppErrors;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/AppErrors;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;->f$1:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;->f$3:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;->f$4:Lcom/android/server/am/ProcessRecord;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;->f$5:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;->f$6:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;->f$7:Ljava/lang/String;

    .line 19
    .line 20
    iput p9, p0, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;->f$8:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/AppErrors;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;->f$1:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget v4, p0, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;->f$3:I

    .line 8
    .line 9
    iget-object v6, p0, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;->f$4:Lcom/android/server/am/ProcessRecord;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;->f$5:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v5, p0, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;->f$6:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;->f$7:Ljava/lang/String;

    .line 16
    .line 17
    iget p0, p0, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;->f$8:I

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    sget-boolean v8, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 23
    .line 24
    const-string v9, "ActivityManager"

    .line 25
    .line 26
    if-eqz v8, :cond_0

    .line 27
    .line 28
    const-string v8, "Native crash"

    .line 29
    .line 30
    iget-object v1, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    const-string p0, "Skip killing native crashed app "

    .line 39
    .line 40
    const-string v0, "("

    .line 41
    .line 42
    const-string v1, ") during testing"

    .line 43
    .line 44
    invoke-static {v4, p0, v2, v0, v1}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {v9, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-string v1, "Force-killing crashed app "

    .line 53
    .line 54
    const-string v8, " at watcher\'s request"

    .line 55
    .line 56
    invoke-static {v1, v2, v8, v9}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    if-eqz v6, :cond_1

    .line 60
    .line 61
    const/4 p0, 0x0

    .line 62
    move-object v1, v6

    .line 63
    move-object v2, v3

    .line 64
    move-object v3, v5

    .line 65
    move-object v4, v7

    .line 66
    move-object v5, p0

    .line 67
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-nez p0, :cond_2

    .line 72
    .line 73
    const-string/jumbo p0, "crash"

    .line 74
    .line 75
    .line 76
    const/4 v0, 0x4

    .line 77
    invoke-virtual {v6, v0, p0}, Lcom/android/server/am/ProcessRecord;->killLocked(ILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    .line 82
    .line 83
    .line 84
    invoke-static {p0, v4}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 85
    .line 86
    .line 87
    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 88
    .line 89
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 90
    .line 91
    const/4 v7, 0x0

    .line 92
    const-string/jumbo v8, "crash"

    .line 93
    .line 94
    .line 95
    const/4 v6, 0x4

    .line 96
    move v5, p0

    .line 97
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ProcessList;->noteAppKill(IIIILjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    :goto_0
    return-void
.end method