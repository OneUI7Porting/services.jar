.class public final Lcom/android/server/am/ActiveServices$4;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActiveServices;

.field public final synthetic val$backgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

.field public final synthetic val$callerFg:Z

.field public final synthetic val$callingFeatureId:Ljava/lang/String;

.field public final synthetic val$callingPackage:Ljava/lang/String;

.field public final synthetic val$callingPid:I

.field public final synthetic val$callingProcessName:Ljava/lang/String;

.field public final synthetic val$callingProcessState:I

.field public final synthetic val$callingUid:I

.field public final synthetic val$connection:Landroid/app/IServiceConnection;

.field public final synthetic val$fgRequired:Z

.field public final synthetic val$isBinding:Z

.field public final synthetic val$s:Lcom/android/server/am/ServiceRecord;

.field public final synthetic val$serviceIntent:Landroid/content/Intent;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;ILjava/lang/String;IZLandroid/app/BackgroundStartPrivileges;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/ActiveServices$4;->val$s:Lcom/android/server/am/ServiceRecord;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/am/ActiveServices$4;->val$callingPackage:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/am/ActiveServices$4;->val$callingFeatureId:Ljava/lang/String;

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/am/ActiveServices$4;->val$callingUid:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/am/ActiveServices$4;->val$serviceIntent:Landroid/content/Intent;

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/android/server/am/ActiveServices$4;->val$callerFg:Z

    .line 17
    .line 18
    iput p8, p0, Lcom/android/server/am/ActiveServices$4;->val$userId:I

    .line 19
    .line 20
    iput-boolean p9, p0, Lcom/android/server/am/ActiveServices$4;->val$isBinding:Z

    .line 21
    .line 22
    iput-object p10, p0, Lcom/android/server/am/ActiveServices$4;->val$connection:Landroid/app/IServiceConnection;

    .line 23
    .line 24
    iput p11, p0, Lcom/android/server/am/ActiveServices$4;->val$callingPid:I

    .line 25
    .line 26
    iput-object p12, p0, Lcom/android/server/am/ActiveServices$4;->val$callingProcessName:Ljava/lang/String;

    .line 27
    .line 28
    iput p13, p0, Lcom/android/server/am/ActiveServices$4;->val$callingProcessState:I

    .line 29
    .line 30
    iput-boolean p14, p0, Lcom/android/server/am/ActiveServices$4;->val$fgRequired:Z

    .line 31
    .line 32
    iput-object p15, p0, Lcom/android/server/am/ActiveServices$4;->val$backgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mPendingBringups:Landroid/util/ArrayMap;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$4;->val$s:Lcom/android/server/am/ServiceRecord;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$4;->val$s:Lcom/android/server/am/ServiceRecord;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$4;->val$callingPackage:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$4;->val$callingFeatureId:Ljava/lang/String;

    .line 35
    .line 36
    iget v5, p0, Lcom/android/server/am/ActiveServices$4;->val$callingUid:I

    .line 37
    .line 38
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$4;->val$serviceIntent:Landroid/content/Intent;

    .line 39
    .line 40
    iget-boolean v7, p0, Lcom/android/server/am/ActiveServices$4;->val$callerFg:Z

    .line 41
    .line 42
    iget v8, p0, Lcom/android/server/am/ActiveServices$4;->val$userId:I

    .line 43
    .line 44
    iget-boolean v9, p0, Lcom/android/server/am/ActiveServices$4;->val$isBinding:Z

    .line 45
    .line 46
    iget-object v10, p0, Lcom/android/server/am/ActiveServices$4;->val$connection:Landroid/app/IServiceConnection;

    .line 47
    .line 48
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActiveServices;->requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/am/ActiveServices$4;->val$isBinding:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    const/4 v1, 0x6

    .line 64
    :try_start_3
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    .line 65
    .line 66
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$4;->val$s:Lcom/android/server/am/ServiceRecord;

    .line 67
    .line 68
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$4;->val$serviceIntent:Landroid/content/Intent;

    .line 69
    .line 70
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices$4;->val$callerFg:Z

    .line 75
    .line 76
    const/4 v8, 0x0

    .line 77
    const/4 v9, 0x0

    .line 78
    const/4 v6, 0x0

    .line 79
    const/4 v7, 0x0

    .line 80
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZZI)Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/TransactionTooLargeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 81
    .line 82
    .line 83
    :try_start_4
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 86
    .line 87
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catchall_1
    move-exception v2

    .line 92
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 95
    .line 96
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    .line 97
    .line 98
    .line 99
    throw v2

    .line 100
    :catch_0
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    .line 106
    .line 107
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$4;->val$s:Lcom/android/server/am/ServiceRecord;

    .line 108
    .line 109
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$4;->val$serviceIntent:Landroid/content/Intent;

    .line 110
    .line 111
    iget v4, p0, Lcom/android/server/am/ActiveServices$4;->val$callingUid:I

    .line 112
    .line 113
    iget v5, p0, Lcom/android/server/am/ActiveServices$4;->val$callingPid:I

    .line 114
    .line 115
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$4;->val$callingProcessName:Ljava/lang/String;

    .line 116
    .line 117
    iget v7, p0, Lcom/android/server/am/ActiveServices$4;->val$callingProcessState:I

    .line 118
    .line 119
    iget-boolean v8, p0, Lcom/android/server/am/ActiveServices$4;->val$fgRequired:Z

    .line 120
    .line 121
    iget-boolean v9, p0, Lcom/android/server/am/ActiveServices$4;->val$callerFg:Z

    .line 122
    .line 123
    iget-object v10, p0, Lcom/android/server/am/ActiveServices$4;->val$backgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    .line 124
    .line 125
    iget-object v11, p0, Lcom/android/server/am/ActiveServices$4;->val$callingPackage:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;IILjava/lang/String;IZZLandroid/app/BackgroundStartPrivileges;Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_5
    .catch Landroid/os/TransactionTooLargeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 128
    .line 129
    .line 130
    :catch_1
    :goto_1
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 131
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :goto_2
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 136
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 137
    .line 138
    .line 139
    throw p0
.end method
