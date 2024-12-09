.class public final Lcom/samsung/android/server/audio/DesktopModeHelper$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/DesktopModeHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;->this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 6

    .line 1
    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    const/4 v2, 0x4

    .line 8
    const/4 v3, 0x0

    .line 9
    if-ne v0, v2, :cond_1

    .line 10
    .line 11
    move v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    move v0, v3

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;->this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/samsung/android/server/audio/DesktopModeHelper;->mResolver:Landroid/content/ContentResolver;

    .line 17
    .line 18
    sget v4, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 19
    .line 20
    const-string v5, "audio_output_to_display"

    .line 21
    .line 22
    invoke-static {v2, v5, v3, v4}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v5, "DEX enabled : "

    .line 29
    .line 30
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v5, ", isAudioOutputToDisplay : "

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const-string v5, "AS.DesktopModeHelper"

    .line 49
    .line 50
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    xor-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;->this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;

    .line 60
    .line 61
    iget-boolean v4, v2, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexState:Z

    .line 62
    .line 63
    if-eq v4, v0, :cond_5

    .line 64
    .line 65
    iput-boolean v0, v2, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexState:Z

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    move v1, v3

    .line 75
    :goto_1
    iput-boolean v1, v2, Lcom/samsung/android/server/audio/DesktopModeHelper;->mIsDesktopMode:Z

    .line 76
    .line 77
    iget-object p0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;->this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;

    .line 78
    .line 79
    iget-boolean p1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexState:Z

    .line 80
    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    const-string p1, "dex"

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    const-string/jumbo p1, "none"

    .line 87
    .line 88
    .line 89
    :goto_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/DesktopModeHelper;->setDexPolicyParameter(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_5
    return-void
.end method
