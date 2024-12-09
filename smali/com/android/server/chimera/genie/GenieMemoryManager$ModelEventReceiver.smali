.class public final Lcom/android/server/chimera/genie/GenieMemoryManager$ModelEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/genie/GenieMemoryManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager$ModelEventReceiver;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

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
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "size"

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const-string v0, "GenieMemoryManager"

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const-string v1, "Receive broadcast: "

    .line 18
    .line 19
    const-string v2, " size : "

    .line 20
    .line 21
    invoke-static {p2, v1, p1, v2, v0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const-string/jumbo v1, "com.samsung.GEN_AI_RECLAIM"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x1

    .line 32
    const-string v3, "Calling reclaimer through Broadcast "

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    if-nez p2, :cond_1

    .line 37
    .line 38
    sget p2, Lcom/android/server/chimera/genie/GenieMemoryManager;->DEFAULT_SAMSUNG_MODEL_SIZE:I

    .line 39
    .line 40
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    new-instance v0, Lcom/samsung/android/chimera/genie/MemRequest;

    .line 56
    .line 57
    invoke-direct {v0, v2, p2}, Lcom/samsung/android/chimera/genie/MemRequest;-><init>(II)V

    .line 58
    .line 59
    .line 60
    iget-object p2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager$ModelEventReceiver;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 61
    .line 62
    invoke-virtual {p2, v0, p1}, Lcom/android/server/chimera/genie/GenieMemoryManager;->prepareMemory(Lcom/samsung/android/chimera/genie/MemRequest;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager$ModelEventReceiver;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 66
    .line 67
    const-string/jumbo p1, "com.samsung.android.offline.languagemodel"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/genie/GenieMemoryManager;->startUnloadTimerLocked(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    const-string v1, "AICORE_BROADCAST_ACTION_MODEL_LOADING"

    .line 75
    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    if-nez p2, :cond_3

    .line 83
    .line 84
    sget p2, Lcom/android/server/chimera/genie/GenieMemoryManager;->DEFAULT_GOOGLE_MODEL_SIZE:I

    .line 85
    .line 86
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    new-instance v0, Lcom/samsung/android/chimera/genie/MemRequest;

    .line 102
    .line 103
    invoke-direct {v0, v2, p2}, Lcom/samsung/android/chimera/genie/MemRequest;-><init>(II)V

    .line 104
    .line 105
    .line 106
    iget-object p0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager$ModelEventReceiver;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 107
    .line 108
    invoke-virtual {p0, v0, p1}, Lcom/android/server/chimera/genie/GenieMemoryManager;->prepareMemory(Lcom/samsung/android/chimera/genie/MemRequest;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    const-string/jumbo p2, "com.samsung.GEN_AI_RECLAIM_END"

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    if-nez p2, :cond_5

    .line 120
    .line 121
    const-string p2, "AICORE_BROADCAST_ACTION_MODEL_UNLOADED"

    .line 122
    .line 123
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_6

    .line 128
    .line 129
    :cond_5
    const-string p1, "Stopping Reclaimer through Broadcast "

    .line 130
    .line 131
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager$ModelEventReceiver;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 135
    .line 136
    iget-object p1, p1, Lcom/android/server/chimera/genie/GenieMemoryManager;->mMemoryReclaimer:Lcom/android/server/chimera/genie/MemoryReclaimer;

    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    iget-object p0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager$ModelEventReceiver;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/android/server/chimera/genie/GenieMemoryManager;->setGenieSessionEnd()V

    .line 144
    .line 145
    .line 146
    :cond_6
    :goto_0
    return-void
.end method
