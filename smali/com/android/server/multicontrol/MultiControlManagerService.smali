.class public final Lcom/android/server/multicontrol/MultiControlManagerService;
.super Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mAppDeathChecker:Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public mInputFilter:Landroid/view/IInputFilter;

.field public final mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

.field public mIsBootComplete:Z

.field public final mResolver:Landroid/content/ContentResolver;

.field public mUserSetupCompleteObserver:Landroid/database/ContentObserver;

.field public final mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

.field public final mcTriggerManager:Lcom/samsung/android/multicontrol/MCTriggerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/multicontrol/MultiControlManagerService;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "RAMS"

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 22
    :goto_1
    sput-boolean v0, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/multicontrol/IMultiControlManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mIsBootComplete:Z

    .line 6
    .line 7
    const/16 v1, -0x2710

    .line 8
    .line 9
    iput v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    .line 10
    .line 11
    const-string/jumbo v1, "multicontrol"

    .line 12
    .line 13
    .line 14
    const/4 v2, -0x2

    .line 15
    invoke-static {v2, v1, v0}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v6, Landroid/os/Handler;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v6, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    .line 27
    .line 28
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    .line 35
    .line 36
    iput-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    const v1, 0x103012b

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/content/Context;->setTheme(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iput-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    .line 51
    .line 52
    const-class v1, Lcom/android/server/input/InputManagerService$LocalService;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/android/server/input/InputManagerService$LocalService;

    .line 59
    .line 60
    iput-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 61
    .line 62
    new-instance v1, Lcom/samsung/android/multicontrol/MCTriggerManager;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {v1, p1, v0}, Lcom/samsung/android/multicontrol/MCTriggerManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mcTriggerManager:Lcom/samsung/android/multicontrol/MCTriggerManager;

    .line 72
    .line 73
    new-instance v2, Lcom/android/server/multicontrol/MultiControlManagerService$Receiver;

    .line 74
    .line 75
    invoke-direct {v2, p0}, Lcom/android/server/multicontrol/MultiControlManagerService$Receiver;-><init>(Lcom/android/server/multicontrol/MultiControlManagerService;)V

    .line 76
    .line 77
    .line 78
    const-string v0, "android.intent.action.PHONE_STATE"

    .line 79
    .line 80
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 81
    .line 82
    invoke-static {v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 87
    .line 88
    const/4 v5, 0x0

    .line 89
    move-object v1, p1

    .line 90
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    new-instance p1, Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;

    .line 94
    .line 95
    invoke-direct {p1, p0}, Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;-><init>(Lcom/android/server/multicontrol/MultiControlManagerService;)V

    .line 96
    .line 97
    .line 98
    const-class p0, Lcom/samsung/android/multicontrol/MultiControlManagerInternal;

    .line 99
    .line 100
    invoke-static {p0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "MultiControl@MultiControlManagerService"

    .line 4
    .line 5
    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    array-length v0, p3

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const-string v0, "-a"

    .line 19
    .line 20
    aget-object p3, p3, p1

    .line 21
    .line 22
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    if-eqz p3, :cond_2

    .line 27
    .line 28
    :cond_1
    new-instance p3, Lcom/android/internal/util/IndentingPrintWriter;

    .line 29
    .line 30
    const-string v0, "  "

    .line 31
    .line 32
    invoke-direct {p3, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string p2, "MultiControlManagerService (dumpsys multicontrol):"

    .line 36
    .line 37
    invoke-virtual {p3, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/16 p2, 0x56

    .line 41
    .line 42
    const-string v0, "MultiControl@StateStart"

    .line 43
    .line 44
    const-string v1, "=========================================================================="

    .line 45
    .line 46
    invoke-static {p2, v0, v1}, Lcom/android/server/multicontrol/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sget-object v0, Lcom/android/server/multicontrol/Log;->sSavedStates:Lcom/android/server/multicontrol/Log$EvictingArrayQueue;

    .line 54
    .line 55
    invoke-virtual {v0, p3}, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->dump(Ljava/io/PrintWriter;)V

    .line 56
    .line 57
    .line 58
    const-string v0, "MultiControl@StateEnd"

    .line 59
    .line 60
    invoke-static {p2, v0, v1}, Lcom/android/server/multicontrol/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v0, "MultiControl@SavedLogsStart"

    .line 68
    .line 69
    invoke-static {p2, v0, v1}, Lcom/android/server/multicontrol/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sget-object v0, Lcom/android/server/multicontrol/Log;->sSavedLogs:Lcom/android/server/multicontrol/Log$EvictingArrayQueue;

    .line 77
    .line 78
    invoke-virtual {v0, p3}, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->dump(Ljava/io/PrintWriter;)V

    .line 79
    .line 80
    .line 81
    const-string v0, "MultiControl@SavedLogsEnd"

    .line 82
    .line 83
    invoke-static {p2, v0, v1}, Lcom/android/server/multicontrol/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 94
    .line 95
    .line 96
    iget p2, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    .line 97
    .line 98
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    const-string/jumbo v0, "mCurrentUserId"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 109
    .line 110
    .line 111
    iget-object p2, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    .line 112
    .line 113
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    const-string v0, "Configuration"

    .line 122
    .line 123
    invoke-virtual {p3, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 127
    .line 128
    .line 129
    iget-object p2, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    .line 130
    .line 131
    const-string/jumbo v0, "display_size_forced"

    .line 132
    .line 133
    .line 134
    invoke-static {p2, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    const-string v0, "DISPLAY_SIZE_FORCED"

    .line 139
    .line 140
    invoke-virtual {p3, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 144
    .line 145
    .line 146
    iget-object p2, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    .line 147
    .line 148
    const-string/jumbo v0, "display_density_forced"

    .line 149
    .line 150
    .line 151
    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    const-string p2, "DISPLAY_DENSITY_FORCED"

    .line 156
    .line 157
    invoke-virtual {p3, p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    .line 164
    .line 165
    const-string/jumbo p2, "screen_off_timeout"

    .line 166
    .line 167
    .line 168
    iget v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    .line 169
    .line 170
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    const-string p2, "SCREEN_OFF_TIMEOUT"

    .line 175
    .line 176
    invoke-virtual {p3, p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 180
    .line 181
    .line 182
    iget-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    .line 183
    .line 184
    const-string/jumbo p2, "show_ime_with_hard_keyboard"

    .line 185
    .line 186
    .line 187
    iget p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    .line 188
    .line 189
    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    const-string p1, "SHOW_IME_WITH_HARD_KEYBOARD"

    .line 194
    .line 195
    invoke-virtual {p3, p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 205
    .line 206
    .line 207
    :cond_2
    return-void
.end method

.method public final enableTriggerDetection(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[enableTriggerDetection] in "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mcTriggerManager:Lcom/samsung/android/multicontrol/MCTriggerManager;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/multicontrol/MCTriggerManager;->enable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    const/16 p1, 0x45

    .line 28
    .line 29
    const-string v0, "[enableTriggerDetection]"

    .line 30
    .line 31
    invoke-static {p1, v0}, Lcom/android/server/multicontrol/Log;->save(CLjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string p1, "MultiControl@MultiControlManagerService"

    .line 35
    .line 36
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    :goto_0
    return-void
.end method

.method public final forceHideCursor(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "in forceHideCursor"

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 16
    .line 17
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->forceHideCursor(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/16 p1, 0x45

    .line 27
    .line 28
    invoke-static {p1, p0}, Lcom/android/server/multicontrol/Log;->save(CLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string p1, "MultiControl@MultiControlManagerService"

    .line 32
    .line 33
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    return-void
.end method

.method public final getProtocolVersion()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v0, "com.sec.android.permission.USE_MULTI_CONTROL_MANAGER"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "getProtocolVersion"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0
.end method

.method public final initializeStates()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/multicontrol/MultiControlManagerService;->isUserSetupComplete()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/multicontrol/MultiControlManagerService$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/multicontrol/MultiControlManagerService$1;-><init>(Lcom/android/server/multicontrol/MultiControlManagerService;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    .line 19
    .line 20
    const-string/jumbo v1, "user_setup_complete"

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;

    .line 28
    .line 29
    iget p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-virtual {v0, v1, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public final isAllowed()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "com.sec.android.permission.USE_MULTI_CONTROL_MANAGER"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "isAllowed"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mIsBootComplete:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/multicontrol/MultiControlManagerService;->isUserSetupComplete()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    iget v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    .line 29
    .line 30
    const/16 v1, -0x2710

    .line 31
    .line 32
    if-eq v0, v1, :cond_0

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string/jumbo v1, "isSystemReady(), mIsBootComplete="

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-boolean v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mIsBootComplete:Z

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, ", isFactoryBinary="

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, ", mCurrentUserId="

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    .line 67
    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {p0}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const/4 p0, 0x0

    .line 79
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string/jumbo v1, "isAllowed = "

    .line 82
    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v0}, Lcom/android/server/multicontrol/Log;->d(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return p0
.end method

.method public final isUserSetupComplete()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    .line 4
    .line 5
    const-string/jumbo v1, "user_setup_complete"

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    :cond_0
    if-nez v2, :cond_1

    .line 17
    .line 18
    sget-boolean p0, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    const-string/jumbo p0, "isUserSetupComplete()=false"

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lcom/android/server/multicontrol/Log;->d(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return v2
.end method

.method public final onUserChanged(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v0, Lcom/android/server/multicontrol/MultiControlManagerService;->DEBUG:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v2, "onUserChanged(), userId="

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Lcom/android/server/multicontrol/Log;->d(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    if-eqz v0, :cond_2

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string/jumbo v1, "setCurrentUserId(), userId="

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/android/server/multicontrol/Log;->d(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    iput p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mCurrentUserId:I

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/server/multicontrol/MultiControlManagerService;->initializeStates()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final resetInputFilter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 5
    .line 6
    .line 7
    iput-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 8
    .line 9
    return-void
.end method

.method public final setCursorPosition(III)V
    .locals 2

    .line 1
    const-string/jumbo v0, "in setCursorPosition [displayId : "

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v0, "]"

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 33
    .line 34
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/input/NativeInputManagerService;->setCursorPosition(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const/16 p1, 0x45

    .line 44
    .line 45
    invoke-static {p1, p0}, Lcom/android/server/multicontrol/Log;->save(CLjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string p1, "MultiControl@MultiControlManagerService"

    .line 49
    .line 50
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_0
    :goto_0
    return-void
.end method

.method public final setInputFilter(Landroid/view/IInputFilter;Lcom/samsung/android/multicontrol/IInputFilterInstallListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "com.sec.android.permission.USE_MULTI_CONTROL_MANAGER"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "setInputFilter"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputFilter:Landroid/view/IInputFilter;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    invoke-interface {p2}, Lcom/samsung/android/multicontrol/IInputFilterInstallListener;->onInstalled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const/16 p1, 0x45

    .line 29
    .line 30
    invoke-static {p1, p0}, Lcom/android/server/multicontrol/Log;->save(CLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string p1, "MultiControl@MultiControlManagerService"

    .line 34
    .line 35
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public final setInteractive(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "in setInteractive"

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService$LocalService;->setInteractive(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/16 p1, 0x45

    .line 23
    .line 24
    invoke-static {p1, p0}, Lcom/android/server/multicontrol/Log;->save(CLjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string p1, "MultiControl@MultiControlManagerService"

    .line 28
    .line 29
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    :goto_0
    return-void
.end method

.method public final setMultiControlOutOfFocus(Z)V
    .locals 2

    .line 1
    const-string/jumbo v0, "in setMultiControlOutOfFocus "

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 28
    .line 29
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setMultiControlOutOfFocus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const/16 p1, 0x45

    .line 39
    .line 40
    invoke-static {p1, p0}, Lcom/android/server/multicontrol/Log;->save(CLjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string p1, "MultiControl@MultiControlManagerService"

    .line 44
    .line 45
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_0
    :goto_0
    return-void
.end method

.method public final setProtocolVersion(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo p1, "com.sec.android.permission.USE_MULTI_CONTROL_MANAGER"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "setProtocolVersion"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final setTriggerThreshold(I)V
    .locals 2

    .line 1
    const-string v0, "[setTriggerThreshold] in "

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mcTriggerManager:Lcom/samsung/android/multicontrol/MCTriggerManager;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/multicontrol/MCTriggerManager;->setTriggerThreshold(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    const/16 p1, 0x45

    .line 28
    .line 29
    const-string v0, "[setTriggerThreshold]"

    .line 30
    .line 31
    invoke-static {p1, v0}, Lcom/android/server/multicontrol/Log;->save(CLjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string p1, "MultiControl@MultiControlManagerService"

    .line 35
    .line 36
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    :goto_0
    return-void
.end method

.method public final startDeathChecker(Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "com.sec.android.permission.USE_MULTI_CONTROL_MANAGER"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "setInputFilter"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mAppDeathChecker:Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v2, "MultiControlAppDeathChecker - unlinkToDeath"

    .line 18
    .line 19
    invoke-static {v2}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, v0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->mBinder:Landroid/os/IBinder;

    .line 23
    .line 24
    invoke-interface {v2, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mAppDeathChecker:Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;

    .line 29
    .line 30
    :cond_0
    new-instance v0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, p0, p1}, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;-><init>(Lcom/android/server/multicontrol/MultiControlManagerService;Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mAppDeathChecker:Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;

    .line 42
    .line 43
    :try_start_0
    invoke-interface {p1}, Lcom/samsung/android/multicontrol/IMultiControlDeathChecker;->asBinder()Landroid/os/IBinder;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mAppDeathChecker:Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;

    .line 48
    .line 49
    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p0

    .line 54
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method public final stopDeathChecker()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mAppDeathChecker:Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "MultiControlAppDeathChecker - unlinkToDeath"

    .line 6
    .line 7
    invoke-static {v1}, Lcom/android/server/multicontrol/Log;->i(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;->mBinder:Landroid/os/IBinder;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mAppDeathChecker:Lcom/android/server/multicontrol/MultiControlManagerService$MultiControlAppDeathChecker;

    .line 18
    .line 19
    :cond_0
    return-void
.end method
