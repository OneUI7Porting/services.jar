.class public final synthetic Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/desktopmode/UiManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/UiManager;III)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/desktopmode/UiManager;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda2;->f$1:I

    .line 6
    .line 7
    iput p3, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda2;->f$2:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/desktopmode/UiManager;

    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda2;->f$1:I

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda2;->f$2:I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const-string/jumbo v2, "handleDismissDialog(), displayId="

    .line 20
    .line 21
    .line 22
    const-string v3, ", type="

    .line 23
    .line 24
    invoke-static {v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {p0}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, "[DMS]UiManager"

    .line 40
    .line 41
    invoke-static {v3, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v2, v0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    :try_start_0
    invoke-interface {v2, v1, p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->dismissDialog(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v2

    .line 53
    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 57
    iget-object v3, v0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    .line 58
    .line 59
    const/16 v4, 0x385

    .line 60
    .line 61
    invoke-virtual {v3, v4, p0, v1, v2}, Lcom/android/server/desktopmode/PendingUiCommands;->queue(IIILjava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/android/server/desktopmode/UiManager;->postUnbindServiceRunnable()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/desktopmode/UiManager;

    .line 69
    .line 70
    iget v1, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda2;->f$1:I

    .line 71
    .line 72
    iget p0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda2;->f$2:I

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 78
    .line 79
    if-eqz v2, :cond_2

    .line 80
    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string/jumbo v3, "handleDismissOverlay(), where="

    .line 84
    .line 85
    .line 86
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->whereToString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v3, ", type="

    .line 97
    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-static {p0}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    const-string v3, "[DMS]UiManager"

    .line 113
    .line 114
    invoke-static {v3, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_2
    iget-object v2, v0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    .line 118
    .line 119
    if-eqz v2, :cond_3

    .line 120
    .line 121
    :try_start_1
    invoke-interface {v2, v1, p0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->dismissOverlay(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :catch_1
    move-exception v2

    .line 126
    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 127
    .line 128
    .line 129
    :cond_3
    :goto_1
    const/4 v2, 0x0

    .line 130
    iget-object v3, v0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    .line 131
    .line 132
    const/16 v4, 0x385

    .line 133
    .line 134
    invoke-virtual {v3, v4, p0, v1, v2}, Lcom/android/server/desktopmode/PendingUiCommands;->queue(IIILjava/lang/Runnable;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/android/server/desktopmode/UiManager;->postUnbindServiceRunnable()V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
