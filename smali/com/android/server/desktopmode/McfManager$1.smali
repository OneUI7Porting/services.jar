.class public final Lcom/android/server/desktopmode/McfManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/McfManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/McfManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager$1;->this$0:Lcom/android/server/desktopmode/McfManager;

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
    .locals 1

    .line 1
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v0, "onReceive intent.getAction():"

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "[DMS]McfManager"

    .line 25
    .line 26
    invoke-static {v0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager$1;->this$0:Lcom/android/server/desktopmode/McfManager;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/android/server/desktopmode/McfManager;->mMcfHandler:Lcom/android/server/desktopmode/McfManager$McfHandler;

    .line 44
    .line 45
    const/16 p2, 0x2bd

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager$1;->this$0:Lcom/android/server/desktopmode/McfManager;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager;->mMcfHandler:Lcom/android/server/desktopmode/McfManager$McfHandler;

    .line 53
    .line 54
    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const-string/jumbo v0, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager$1;->this$0:Lcom/android/server/desktopmode/McfManager;

    .line 72
    .line 73
    iget-object p1, p1, Lcom/android/server/desktopmode/McfManager;->mMcfHandler:Lcom/android/server/desktopmode/McfManager$McfHandler;

    .line 74
    .line 75
    const/16 v0, 0x2be

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager$1;->this$0:Lcom/android/server/desktopmode/McfManager;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager;->mMcfHandler:Lcom/android/server/desktopmode/McfManager$McfHandler;

    .line 83
    .line 84
    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    const-string/jumbo p2, "com.samsung.android.nearbyscanning"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_3

    .line 100
    .line 101
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager$1;->this$0:Lcom/android/server/desktopmode/McfManager;

    .line 102
    .line 103
    iget-object p1, p1, Lcom/android/server/desktopmode/McfManager;->mMcfHandler:Lcom/android/server/desktopmode/McfManager$McfHandler;

    .line 104
    .line 105
    const/16 p2, 0x2bf

    .line 106
    .line 107
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 108
    .line 109
    .line 110
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager$1;->this$0:Lcom/android/server/desktopmode/McfManager;

    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager;->mMcfHandler:Lcom/android/server/desktopmode/McfManager$McfHandler;

    .line 113
    .line 114
    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 119
    .line 120
    .line 121
    :cond_3
    :goto_0
    return-void
.end method
