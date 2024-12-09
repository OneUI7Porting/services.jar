.class public final Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final info:Lcom/android/server/wm/WmScreenshotInfo;

.field public final synthetic this$0:Lcom/android/server/wm/WmScreenshotController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WmScreenshotController;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;->this$0:Lcom/android/server/wm/WmScreenshotController;

    .line 5
    .line 6
    new-instance p1, Lcom/android/server/wm/WmScreenshotInfo;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p1, Lcom/android/server/wm/WmScreenshotInfo;->mType:I

    .line 13
    .line 14
    iput v0, p1, Lcom/android/server/wm/WmScreenshotInfo;->mSweepDirection:I

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput v1, p1, Lcom/android/server/wm/WmScreenshotInfo;->mDisplayId:I

    .line 18
    .line 19
    iput v0, p1, Lcom/android/server/wm/WmScreenshotInfo;->mOrigin:I

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p1, Lcom/android/server/wm/WmScreenshotInfo;->mBundle:Landroid/os/Bundle;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;->info:Lcom/android/server/wm/WmScreenshotInfo;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;->this$0:Lcom/android/server/wm/WmScreenshotController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;->info:Lcom/android/server/wm/WmScreenshotInfo;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "takeScreenshot: info="

    .line 9
    .line 10
    .line 11
    const-string v2, "Too many screenshot service connection: "

    .line 12
    .line 13
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 14
    .line 15
    iget-object v4, v0, Lcom/android/server/wm/WmScreenshotController;->mScreenshotLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v4

    .line 18
    :try_start_0
    iget-object v5, v0, Lcom/android/server/wm/WmScreenshotController;->mScreenshotConnections:Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    const/4 v6, 0x3

    .line 25
    if-lt v5, v6, :cond_0

    .line 26
    .line 27
    const-string p0, "WindowManager"

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/server/wm/WmScreenshotController;->mScreenshotConnections:Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    monitor-exit v4

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/WmScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 55
    .line 56
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 57
    .line 58
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mPersonaActivityHelper:Lcom/android/server/wm/PersonaActivityHelper;

    .line 59
    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Lcom/android/server/wm/PersonaActivityHelper;->getCurrentScreenUserId(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    :cond_1
    const-string v2, "WindowManager"

    .line 67
    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", user="

    .line 77
    .line 78
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    const-string v1, "TakeScreenshot"

    .line 96
    .line 97
    const/16 v2, 0x15

    .line 98
    .line 99
    const/16 v5, 0xa

    .line 100
    .line 101
    invoke-static {v2, v5, v1}, Landroid/util/PerfLog;->d(ISLjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    new-instance v1, Landroid/content/Intent;

    .line 105
    .line 106
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 107
    .line 108
    .line 109
    new-instance v2, Landroid/content/ComponentName;

    .line 110
    .line 111
    const-string v5, "com.android.systemui"

    .line 112
    .line 113
    const-string v6, "com.android.systemui.screenshot.TakeScreenshotService"

    .line 114
    .line 115
    invoke-direct {v2, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    new-instance v2, Lcom/android/server/wm/WmScreenshotController$1;

    .line 122
    .line 123
    invoke-direct {v2, v0, p0}, Lcom/android/server/wm/WmScreenshotController$1;-><init>(Lcom/android/server/wm/WmScreenshotController;Lcom/android/server/wm/WmScreenshotInfo;)V

    .line 124
    .line 125
    .line 126
    iget-object p0, v0, Lcom/android/server/wm/WmScreenshotController;->mContext:Landroid/content/Context;

    .line 127
    .line 128
    const/4 v5, 0x1

    .line 129
    invoke-virtual {p0, v1, v2, v5, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    if-eqz p0, :cond_2

    .line 134
    .line 135
    iget-object p0, v0, Lcom/android/server/wm/WmScreenshotController;->mScreenshotConnections:Ljava/util/HashMap;

    .line 136
    .line 137
    new-instance v1, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda0;

    .line 138
    .line 139
    const/4 v3, 0x1

    .line 140
    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WmScreenshotController;Ljava/lang/Object;I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    iget-object p0, v0, Lcom/android/server/wm/WmScreenshotController;->mHandler:Landroid/os/Handler;

    .line 147
    .line 148
    iget-object v0, v0, Lcom/android/server/wm/WmScreenshotController;->mScreenshotConnections:Ljava/util/HashMap;

    .line 149
    .line 150
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Ljava/lang/Runnable;

    .line 155
    .line 156
    const-wide/16 v1, 0x2710

    .line 157
    .line 158
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 159
    .line 160
    .line 161
    :cond_2
    monitor-exit v4

    .line 162
    :goto_0
    return-void

    .line 163
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    throw p0
.end method
