.class public final Lcom/android/server/job/controllers/BackgroundJobsController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/BackgroundJobsController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/BackgroundJobsController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    const-string v0, "android.intent.extra.UID"

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    const-string p0, "JobScheduler.Background"

    .line 29
    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v0, "Didn\'t get package UID in intent ("

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p2, ")"

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    sget-boolean v1, Lcom/android/server/job/controllers/BackgroundJobsController;->DEBUG:Z

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    const-string v1, "JobScheduler.Background"

    .line 58
    .line 59
    const-string v2, "Got "

    .line 60
    .line 61
    const-string v3, " for "

    .line 62
    .line 63
    const-string v4, "/"

    .line 64
    .line 65
    invoke-static {v0, v2, p2, v3, v4}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v2, p1, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    .line 76
    .line 77
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_4

    .line 82
    .line 83
    const-string v1, "android.intent.action.PACKAGE_UNSTOPPED"

    .line 84
    .line 85
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-nez p2, :cond_3

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    iget-object p2, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 93
    .line 94
    iget-object p2, p2, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 95
    .line 96
    monitor-enter p2

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 98
    .line 99
    iget-object v1, v1, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    .line 100
    .line 101
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 102
    .line 103
    invoke-virtual {v1, v0, p1, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 107
    .line 108
    const/4 p1, 0x0

    .line 109
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateJobRestrictionsLocked(II)V

    .line 110
    .line 111
    .line 112
    monitor-exit p2

    .line 113
    goto :goto_1

    .line 114
    :catchall_0
    move-exception p0

    .line 115
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    throw p0

    .line 117
    :cond_4
    iget-object p2, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 118
    .line 119
    iget-object p2, p2, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 120
    .line 121
    monitor-enter p2

    .line 122
    :try_start_1
    iget-object v1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 123
    .line 124
    iget-object v1, v1, Lcom/android/server/job/controllers/BackgroundJobsController;->mPackageStoppedState:Landroid/util/SparseArrayMap;

    .line 125
    .line 126
    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    const/4 p1, 0x2

    .line 135
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateJobRestrictionsLocked(II)V

    .line 136
    .line 137
    .line 138
    monitor-exit p2

    .line 139
    :goto_1
    return-void

    .line 140
    :catchall_1
    move-exception p0

    .line 141
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 142
    throw p0
.end method
