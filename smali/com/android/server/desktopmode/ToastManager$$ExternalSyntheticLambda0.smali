.class public final synthetic Lcom/android/server/desktopmode/ToastManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(ILandroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/desktopmode/ToastManager$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/desktopmode/ToastManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput p1, p0, Lcom/android/server/desktopmode/ToastManager$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/desktopmode/ToastManager$$ExternalSyntheticLambda0;->f$3:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/ToastManager$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/desktopmode/ToastManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/desktopmode/ToastManager$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/server/desktopmode/ToastManager$$ExternalSyntheticLambda0;->f$3:Z

    .line 8
    .line 9
    const-string/jumbo v3, "sToasts added, sToasts="

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v4, 0x0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2, v4}, Landroid/widget/Toast;->semSetPreferredDisplayType(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    new-instance p0, Lcom/android/server/desktopmode/ToastManager$1;

    .line 23
    .line 24
    invoke-direct {p0, v2, v1}, Lcom/android/server/desktopmode/ToastManager$1;-><init>(Landroid/widget/Toast;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p0}, Landroid/widget/Toast;->addCallback(Landroid/widget/Toast$Callback;)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lcom/android/server/desktopmode/ToastManager;->sToasts:Ljava/util/List;

    .line 31
    .line 32
    monitor-enter p0

    .line 33
    :try_start_0
    move-object v5, p0

    .line 34
    check-cast v5, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    sget-boolean v5, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 40
    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    const-string v6, "[DMS]ToastManager"

    .line 44
    .line 45
    new-instance v7, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-static {v6, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    .line 65
    .line 66
    if-eqz p0, :cond_2

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    if-eqz p0, :cond_3

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_3

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    sget-object p0, Lcom/android/server/desktopmode/ToastManager;->sCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 83
    .line 84
    if-nez p0, :cond_4

    .line 85
    .line 86
    new-instance p0, Lcom/samsung/android/cover/CoverManager;

    .line 87
    .line 88
    invoke-direct {p0, v0}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    sput-object p0, Lcom/android/server/desktopmode/ToastManager;->sCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 92
    .line 93
    :cond_4
    sget-object p0, Lcom/android/server/desktopmode/ToastManager;->sCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    if-eqz p0, :cond_5

    .line 100
    .line 101
    iget-boolean v3, p0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 102
    .line 103
    const/4 v6, 0x1

    .line 104
    if-ne v3, v6, :cond_5

    .line 105
    .line 106
    iget-boolean v3, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 107
    .line 108
    if-nez v3, :cond_5

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    const/16 v3, 0x8

    .line 115
    .line 116
    if-ne p0, v3, :cond_5

    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    const v0, 0x1050147

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    const/16 v0, 0x50

    .line 130
    .line 131
    invoke-virtual {v2, v0, v4, p0}, Landroid/widget/Toast;->setGravity(III)V

    .line 132
    .line 133
    .line 134
    :cond_5
    :goto_1
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 135
    .line 136
    .line 137
    if-eqz v5, :cond_6

    .line 138
    .line 139
    const-string p0, "[DMS]ToastManager"

    .line 140
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v2, "Toast.show("

    .line 144
    .line 145
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v1, ")"

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {p0, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    :cond_6
    return-void

    .line 164
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    throw v0
.end method
