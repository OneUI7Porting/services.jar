.class public final synthetic Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/desktopmode/UiManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/UiManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/desktopmode/UiManager;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/desktopmode/UiManager;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v0, "[DMS]UiManager"

    .line 12
    .line 13
    const-string v1, "Binder supposed established connection but actual connection to service timed out, trying again"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->retryConnectionWithBackoff()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    :try_start_0
    iget-object v0, v1, Lcom/android/server/desktopmode/PendingUiCommands;->mUiCommands:Ljava/util/List;

    .line 30
    .line 31
    check-cast v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    .line 40
    .line 41
    invoke-interface {v0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->hasUiElement()Z

    .line 42
    .line 43
    .line 44
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 51
    goto :goto_2

    .line 52
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_2
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string/jumbo v3, "unbindServiceIfHasNoUiElement(), hasElement="

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v3, "[DMS]UiManager"

    .line 75
    .line 76
    invoke-static {v3, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    if-nez v2, :cond_3

    .line 80
    .line 81
    iget-object v0, v1, Lcom/android/server/desktopmode/PendingUiCommands;->mUiCommands:Ljava/util/List;

    .line 82
    .line 83
    check-cast v0, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->unbindService()V

    .line 89
    .line 90
    .line 91
    :cond_3
    return-void

    .line 92
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->bindService()V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
