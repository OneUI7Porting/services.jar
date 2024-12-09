.class public final synthetic Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/IntSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowOrganizerController;

.field public final synthetic f$1:Lcom/android/server/wm/TaskFragment;

.field public final synthetic f$2:Landroid/content/Intent;

.field public final synthetic f$3:Landroid/os/Bundle;

.field public final synthetic f$4:Landroid/os/IBinder;

.field public final synthetic f$5:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

.field public final synthetic f$6:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/TaskFragment;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/IBinder;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$1:Lcom/android/server/wm/TaskFragment;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$2:Landroid/content/Intent;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$3:Landroid/os/Bundle;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$4:Landroid/os/IBinder;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$5:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$6:Landroid/os/IBinder;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getAsInt()I
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$1:Lcom/android/server/wm/TaskFragment;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$2:Landroid/content/Intent;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$3:Landroid/os/Bundle;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$4:Landroid/os/IBinder;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$5:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$6:Landroid/os/IBinder;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 18
    .line 19
    iget v6, v5, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {v4}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v7, 0x0

    .line 32
    :goto_0
    iget-object v8, v0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 33
    .line 34
    iget-object v9, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    invoke-virtual {v2, v9}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    const-string/jumbo v10, "startActivityInTaskFragment"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2, v10}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 55
    .line 56
    iput-object v1, v2, Lcom/android/server/wm/ActivityStarter$Request;->inTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 57
    .line 58
    iput-object v4, v2, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 59
    .line 60
    const/4 v1, -0x1

    .line 61
    iput v1, v2, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 62
    .line 63
    iput-object v9, v2, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 64
    .line 65
    iput v6, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 66
    .line 67
    iget v1, v5, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    .line 68
    .line 69
    iput v1, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 70
    .line 71
    iput v6, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 72
    .line 73
    iput v1, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 74
    .line 75
    if-eqz v7, :cond_1

    .line 76
    .line 77
    iget v1, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    iget-object v1, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 81
    .line 82
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    :goto_1
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 87
    .line 88
    iput v1, v2, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 89
    .line 90
    iput-object p0, v2, Lcom/android/server/wm/ActivityStarter$Request;->errorCallbackToken:Landroid/os/IBinder;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    return p0
.end method
