.class public final Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;
.super Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final classifyContentSelections(ILandroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string/jumbo v2, "classifyContentSelections"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->-$$Nest$menforceCaller(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->ensureRemoteServiceLocked()Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0, p2, p3}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->classifyContentSelections(Landroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public final isEnabled(ILcom/android/internal/os/IResultReceiver;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string/jumbo v2, "isEnabled"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->-$$Nest$menforceCaller(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->isDisabledLocked(I)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    xor-int/lit8 p0, p0, 0x1

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-interface {p2, p0, p1}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p0
.end method

.method public final notifyInteraction(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string/jumbo v2, "notifyInteraction"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->-$$Nest$menforceCaller(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->ensureRemoteServiceLocked()Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0, p3, p2}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->notifyInteraction(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x7d0

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string p0, "ContentSuggestionsManagerService"

    .line 12
    .line 13
    const-string p1, "Expected shell caller"

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerServiceShellCommand;-><init>(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)V

    .line 24
    .line 25
    .line 26
    move-object v1, p0

    .line 27
    move-object v2, p1

    .line 28
    move-object v3, p2

    .line 29
    move-object v4, p3

    .line 30
    move-object v5, p4

    .line 31
    move-object v6, p5

    .line 32
    move-object v7, p6

    .line 33
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final provideContextBitmap(ILandroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    if-eqz p3, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string/jumbo v2, "provideContextBitmap"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->-$$Nest$menforceCaller(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    .line 29
    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    const-string p1, "android.contentsuggestions.extra.BITMAP"

    .line 33
    .line 34
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->ensureRemoteServiceLocked()Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-eqz p0, :cond_0

    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    const/4 p2, -0x1

    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {p0, p2, v1, p1, p3}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->provideContextImage(ILandroid/hardware/HardwareBuffer;ILandroid/os/Bundle;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    :goto_0
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0

    .line 56
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    const-string p1, "Expected non-null imageContextRequestExtras"

    .line 59
    .line 60
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0

    .line 64
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 65
    .line 66
    const-string p1, "Expected non-null bitmap"

    .line 67
    .line 68
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0
.end method

.method public final provideContextImage(IILandroid/os/Bundle;)V
    .locals 3

    .line 1
    if-eqz p3, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string/jumbo v2, "provideContextImage"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->-$$Nest$menforceCaller(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "android.contentsuggestions.extra.BITMAP"

    .line 16
    .line 17
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 27
    .line 28
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 31
    .line 32
    invoke-virtual {v0, p2, v1, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskSnapshot(IZZ)Landroid/window/TaskSnapshot;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getId()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v2, 0x0

    .line 54
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 57
    .line 58
    monitor-enter v0

    .line 59
    :try_start_0
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    .line 66
    .line 67
    if-eqz p0, :cond_2

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->ensureRemoteServiceLocked()Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    if-eqz p0, :cond_2

    .line 74
    .line 75
    invoke-virtual {p0, p2, v2, v1, p3}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->provideContextImage(ILandroid/hardware/HardwareBuffer;ILandroid/os/Bundle;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    monitor-exit v0

    .line 79
    return-void

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    throw p0

    .line 83
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 84
    .line 85
    const-string p1, "Expected non-null imageContextRequestExtras"

    .line 86
    .line 87
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0
.end method

.method public final resetTemporaryService(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->resetTemporaryService(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setDefaultServiceEnabled(IZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->setDefaultServiceEnabled(IZ)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setTemporaryService(ILjava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractMasterSystemService;->setTemporaryService(ILjava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final suggestContentSelections(ILandroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string/jumbo v2, "suggestContentSelections"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->-$$Nest$menforceCaller(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->ensureRemoteServiceLocked()Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0, p2, p3}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->suggestContentSelections(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method