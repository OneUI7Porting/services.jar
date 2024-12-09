.class public final Lcom/android/server/desktopmode/PendingUiCommands;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mUiCommands:Ljava/util/List;


# virtual methods
.method public final flushCommands()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/desktopmode/PendingUiCommands;->mUiCommands:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;

    .line 23
    .line 24
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v3, "Flushing "

    .line 31
    .line 32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v3, "[DMS]PendingUiCommands"

    .line 43
    .line 44
    invoke-static {v3, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v1, v1, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mRunnable:Ljava/lang/Runnable;

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object p0, p0, Lcom/android/server/desktopmode/PendingUiCommands;->mUiCommands:Ljava/util/List;

    .line 54
    .line 55
    check-cast p0, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final queue(IIILjava/lang/Runnable;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p1, v0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mCommand:I

    .line 7
    .line 8
    iput p2, v0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mType:I

    .line 9
    .line 10
    iput p3, v0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mWhere:I

    .line 11
    .line 12
    iput-object p4, v0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;->mRunnable:Ljava/lang/Runnable;

    .line 13
    .line 14
    const/16 p3, 0x384

    .line 15
    .line 16
    if-ne p1, p3, :cond_1

    .line 17
    .line 18
    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->isNotificationType(I)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    new-instance p1, Lcom/android/server/desktopmode/PendingUiCommands$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    invoke-direct {p1, p2}, Lcom/android/server/desktopmode/PendingUiCommands$$ExternalSyntheticLambda0;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/PendingUiCommands;->removeCommandsIf(Ljava/util/function/Function;)V

    .line 30
    .line 31
    .line 32
    if-eqz p4, :cond_2

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/desktopmode/PendingUiCommands;->mUiCommands:Ljava/util/List;

    .line 35
    .line 36
    check-cast p0, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/android/server/desktopmode/PendingUiCommands;->mUiCommands:Ljava/util/List;

    .line 43
    .line 44
    check-cast p1, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_2

    .line 51
    .line 52
    if-eqz p4, :cond_2

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/desktopmode/PendingUiCommands;->mUiCommands:Ljava/util/List;

    .line 55
    .line 56
    check-cast p0, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/16 p3, 0x385

    .line 63
    .line 64
    if-ne p1, p3, :cond_2

    .line 65
    .line 66
    new-instance p1, Lcom/android/server/desktopmode/PendingUiCommands$$ExternalSyntheticLambda1;

    .line 67
    .line 68
    invoke-direct {p1, v0}, Lcom/android/server/desktopmode/PendingUiCommands$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/PendingUiCommands;->removeCommandsIf(Ljava/util/function/Function;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->isNotificationType(I)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    if-eqz p4, :cond_2

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/desktopmode/PendingUiCommands;->mUiCommands:Ljava/util/List;

    .line 83
    .line 84
    check-cast p0, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    :cond_2
    :goto_0
    return-void
.end method

.method public final removeCommandsIf(Ljava/util/function/Function;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/PendingUiCommands;->mUiCommands:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/server/desktopmode/PendingUiCommands$UiCommand;

    .line 20
    .line 21
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method
