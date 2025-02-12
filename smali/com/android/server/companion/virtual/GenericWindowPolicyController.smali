.class public final Lcom/android/server/companion/virtual/GenericWindowPolicyController;
.super Landroid/window/DisplayWindowPolicyController;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final BLOCKED_APP_STREAMING_COMPONENT:Landroid/content/ComponentName;


# instance fields
.field public final mActivityBlockedCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;

.field public mActivityLaunchAllowedByDefault:Z

.field public final mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

.field public final mActivityPolicyExemptions:Ljava/util/Set;

.field public final mAllowedUsers:Landroid/util/ArraySet;

.field public final mAttributionSource:Landroid/content/AttributionSource;

.field public final mCrossTaskNavigationAllowedByDefault:Z

.field public final mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

.field public final mCustomHomeComponent:Landroid/content/ComponentName;

.field public final mDisplayCategories:Ljava/util/Set;

.field public mDisplayId:I

.field public final mDisplayIdSetLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mGenericWindowPolicyControllerLock:Ljava/lang/Object;

.field public final mHandler:Landroid/os/Handler;

.field public final mIntentListenerCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;

.field public mIsMirrorDisplay:Z

.field public final mPermissionDialogComponent:Landroid/content/ComponentName;

.field public final mPipBlockedCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;

.field public final mRunningAppsChangedListeners:Landroid/util/ArraySet;

.field public final mRunningUids:Landroid/util/ArraySet;

.field public final mSecureWindowCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;

.field public mShowTasksInHostDeviceRecents:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 2
    .line 3
    const-class v1, Lcom/android/internal/app/BlockedAppStreamingActivity;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "android"

    .line 10
    .line 11
    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->BLOCKED_APP_STREAMING_COMPONENT:Landroid/content/ComponentName;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/AttributionSource;Landroid/util/ArraySet;ZLjava/util/Set;ZLjava/util/Set;Landroid/content/ComponentName;Lcom/android/server/companion/virtual/VirtualDeviceImpl$1;Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;Ljava/util/Set;ZLandroid/content/ComponentName;)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Landroid/window/DisplayWindowPolicyController;-><init>()V

    .line 3
    .line 4
    .line 5
    new-instance v1, Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    iput v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mIsMirrorDisplay:Z

    .line 17
    .line 18
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayIdSetLatch:Ljava/util/concurrent/CountDownLatch;

    .line 25
    .line 26
    new-instance v1, Landroid/util/ArraySet;

    .line 27
    .line 28
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    .line 32
    .line 33
    new-instance v1, Landroid/os/Handler;

    .line 34
    .line 35
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    .line 43
    .line 44
    new-instance v1, Landroid/util/ArraySet;

    .line 45
    .line 46
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListeners:Landroid/util/ArraySet;

    .line 50
    .line 51
    move-object v1, p1

    .line 52
    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAttributionSource:Landroid/content/AttributionSource;

    .line 53
    .line 54
    move-object v1, p2

    .line 55
    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedUsers:Landroid/util/ArraySet;

    .line 56
    .line 57
    move v1, p3

    .line 58
    iput-boolean v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityLaunchAllowedByDefault:Z

    .line 59
    .line 60
    move-object v1, p4

    .line 61
    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyExemptions:Ljava/util/Set;

    .line 62
    .line 63
    move v1, p5

    .line 64
    iput-boolean v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCrossTaskNavigationAllowedByDefault:Z

    .line 65
    .line 66
    new-instance v1, Landroid/util/ArraySet;

    .line 67
    .line 68
    move-object v2, p6

    .line 69
    invoke-direct {v1, p6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 70
    .line 71
    .line 72
    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    .line 73
    .line 74
    move-object v1, p7

    .line 75
    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mPermissionDialogComponent:Landroid/content/ComponentName;

    .line 76
    .line 77
    move-object v1, p10

    .line 78
    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityBlockedCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;

    .line 79
    .line 80
    const/16 v1, 0x2000

    .line 81
    .line 82
    const/high16 v2, 0x80000

    .line 83
    .line 84
    invoke-virtual {p0, v1, v2}, Landroid/window/DisplayWindowPolicyController;->setInterestedWindowFlags(II)V

    .line 85
    .line 86
    .line 87
    move-object v1, p8

    .line 88
    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    .line 89
    .line 90
    move-object v1, p9

    .line 91
    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mPipBlockedCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;

    .line 92
    .line 93
    move-object v1, p11

    .line 94
    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mSecureWindowCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;

    .line 95
    .line 96
    move-object v1, p12

    .line 97
    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mIntentListenerCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;

    .line 98
    .line 99
    move-object/from16 v1, p13

    .line 100
    .line 101
    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayCategories:Ljava/util/Set;

    .line 102
    .line 103
    move/from16 v1, p14

    .line 104
    .line 105
    iput-boolean v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mShowTasksInHostDeviceRecents:Z

    .line 106
    .line 107
    move-object/from16 v1, p15

    .line 108
    .line 109
    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCustomHomeComponent:Landroid/content/ComponentName;

    .line 110
    .line 111
    return-void
.end method


# virtual methods
.method public final canActivityBeLaunched(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;IIZ)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->interceptIntentsBeforeApplyingPolicy()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "Virtual device intercepting intent"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mIntentListenerCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;->shouldInterceptIntent(Landroid/content/Intent;)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v2

    .line 26
    :cond_0
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->canContainActivity(Landroid/content/pm/ActivityInfo;IIZ)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-nez p2, :cond_3

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->notifyActivityBlocked(Landroid/content/pm/ActivityInfo;)V

    .line 33
    .line 34
    .line 35
    return v2

    .line 36
    :cond_1
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->canContainActivity(Landroid/content/pm/ActivityInfo;IIZ)Z

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    if-nez p3, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->notifyActivityBlocked(Landroid/content/pm/ActivityInfo;)V

    .line 43
    .line 44
    .line 45
    return v2

    .line 46
    :cond_2
    iget-object p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mIntentListenerCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;

    .line 47
    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    if-eqz p2, :cond_3

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;->shouldInterceptIntent(Landroid/content/Intent;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return v2

    .line 62
    :cond_3
    const/4 p0, 0x1

    .line 63
    return p0
.end method

.method public final canContainActivity(Landroid/content/pm/ActivityInfo;IIZ)Z
    .locals 5

    .line 1
    const-string v0, "Activity launch disallowed by policy: "

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->waitAndGetIsMirrorDisplay()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string p1, "Mirror virtual displays cannot contain activities."

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    invoke-virtual {p0, p2}, Landroid/window/DisplayWindowPolicyController;->isWindowingModeSupported(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string p3, "Virtual device doesn\'t support windowing mode "

    .line 25
    .line 26
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v2

    .line 40
    :cond_1
    iget p2, p1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 41
    .line 42
    const/high16 v1, 0x10000

    .line 43
    .line 44
    and-int/2addr p2, v1

    .line 45
    if-nez p2, :cond_2

    .line 46
    .line 47
    const-string p1, "Activity requires android:canDisplayOnRemoteDevices=true"

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return v2

    .line 53
    :cond_2
    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 54
    .line 55
    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 56
    .line 57
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    sget-object v3, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->BLOCKED_APP_STREAMING_COMPONENT:Landroid/content/ComponentName;

    .line 66
    .line 67
    invoke-virtual {v3, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    const/4 v4, 0x1

    .line 72
    if-eqz v3, :cond_3

    .line 73
    .line 74
    invoke-virtual {p2}, Landroid/os/UserHandle;->isSystem()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_3

    .line 79
    .line 80
    return v4

    .line 81
    :cond_3
    invoke-virtual {p2}, Landroid/os/UserHandle;->isSystem()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-nez v3, :cond_4

    .line 86
    .line 87
    iget-object v3, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedUsers:Landroid/util/ArraySet;

    .line 88
    .line 89
    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-nez v3, :cond_4

    .line 94
    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string p3, "Activity launch disallowed from user "

    .line 98
    .line 99
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return v2

    .line 113
    :cond_4
    iget-object p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayCategories:Ljava/util/Set;

    .line 114
    .line 115
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    if-eqz p2, :cond_5

    .line 120
    .line 121
    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    .line 122
    .line 123
    if-nez p2, :cond_a

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_5
    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    .line 127
    .line 128
    if-eqz p2, :cond_a

    .line 129
    .line 130
    iget-object v3, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayCategories:Ljava/util/Set;

    .line 131
    .line 132
    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    if-eqz p2, :cond_a

    .line 137
    .line 138
    :goto_0
    iget-object p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    .line 139
    .line 140
    monitor-enter p2

    .line 141
    :try_start_0
    iget-boolean p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityLaunchAllowedByDefault:Z

    .line 142
    .line 143
    iget-object v3, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyExemptions:Ljava/util/Set;

    .line 144
    .line 145
    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-eq p1, v3, :cond_9

    .line 150
    .line 151
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    if-eqz p4, :cond_7

    .line 153
    .line 154
    if-eqz p3, :cond_7

    .line 155
    .line 156
    iget-boolean p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCrossTaskNavigationAllowedByDefault:Z

    .line 157
    .line 158
    iget-object p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    .line 159
    .line 160
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    if-eq p1, p2, :cond_6

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string p2, "Cross task navigation disallowed by policy: "

    .line 170
    .line 171
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    return v2

    .line 185
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mPermissionDialogComponent:Landroid/content/ComponentName;

    .line 186
    .line 187
    if-eqz p1, :cond_8

    .line 188
    .line 189
    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-eqz p1, :cond_8

    .line 194
    .line 195
    const-string p1, "Permission dialog not allowed on virtual device"

    .line 196
    .line 197
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    return v2

    .line 201
    :cond_8
    return v4

    .line 202
    :catchall_0
    move-exception p0

    .line 203
    goto :goto_2

    .line 204
    :cond_9
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    monitor-exit p2

    .line 220
    return v2

    .line 221
    :goto_2
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    throw p0

    .line 223
    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    const-string p3, "The activity\'s required display category \'"

    .line 226
    .line 227
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string p1, "\' not found on virtual display with the following categories: "

    .line 236
    .line 237
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    iget-object p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayCategories:Ljava/util/Set;

    .line 241
    .line 242
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->logActivityLaunchBlocked(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    return v2
.end method

.method public final canShowTasksInHostDeviceRecents()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mShowTasksInHostDeviceRecents:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final getCustomHomeComponent()Landroid/content/ComponentName;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mCustomHomeComponent:Landroid/content/ComponentName;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRunningAppsChangedListenersSizeForTesting()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListeners:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final isEnteringPipAllowed(I)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/window/DisplayWindowPolicyController;->isEnteringPipAllowed(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mPipBlockedCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v1, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda2;

    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public final keepActivityOnWindowFlagsChanged(Landroid/content/pm/ActivityInfo;II)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->waitAndGetDisplayId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 p2, p2, 0x2000

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mSecureWindowCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    .line 17
    .line 18
    new-instance v2, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda1;

    .line 19
    .line 20
    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;ILandroid/content/pm/ActivityInfo;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 29
    .line 30
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 31
    .line 32
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-wide/32 v2, 0xc05e3df

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v3, v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    if-nez p2, :cond_1

    .line 46
    .line 47
    const/high16 p2, 0x80000

    .line 48
    .line 49
    and-int/2addr p2, p3

    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->notifyActivityBlocked(Landroid/content/pm/ActivityInfo;)V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    return p0

    .line 57
    :cond_2
    const/4 p0, 0x1

    .line 58
    return p0
.end method

.method public final logActivityLaunchBlocked(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Virtual device activity launch disallowed on display "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->waitAndGetDisplayId()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p0, ", reason: "

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string p1, "GenericWindowPolicyController"

    .line 28
    .line 29
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final notifyActivityBlocked(Landroid/content/pm/ActivityInfo;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->waitAndGetDisplayId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->waitAndGetIsMirrorDisplay()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityBlockedCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v2, -0x1

    .line 16
    if-eq v0, v2, :cond_0

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 19
    .line 20
    iget-object v2, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getDisplayName()Ljava/lang/CharSequence;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {p1, v2}, Lcom/android/internal/app/BlockedAppStreamingActivity;->createIntent(Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v1, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    const v2, 0x10008000

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2, v0}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 52
    .line 53
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-static {}, Landroid/companion/virtualdevice/flags/Flags;->metricsCollection()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAttributionSource:Landroid/content/AttributionSource;

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/content/AttributionSource;->getUid()I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    const-string/jumbo p1, "virtual_devices.value_activity_blocked_count"

    .line 69
    .line 70
    .line 71
    invoke-static {p1, p0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    :cond_1
    return-void
.end method

.method public final onRunningAppsChanged(Landroid/util/ArraySet;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->waitAndGetDisplayId()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    const/4 v2, -0x1

    .line 31
    if-eq v1, v2, :cond_0

    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    .line 34
    .line 35
    new-instance v3, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda3;

    .line 36
    .line 37
    invoke-direct {v3, p0, v1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListeners:Landroid/util/ArraySet;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    new-instance v1, Landroid/util/ArraySet;

    .line 55
    .line 56
    iget-object v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListeners:Landroid/util/ArraySet;

    .line 57
    .line 58
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    .line 62
    .line 63
    new-instance v2, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda4;

    .line 64
    .line 65
    invoke-direct {v2, v1, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda4;-><init>(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    .line 70
    .line 71
    :cond_1
    monitor-exit v0

    .line 72
    return-void

    .line 73
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p0
.end method

.method public final onTopActivityChanged(Landroid/content/ComponentName;II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->waitAndGetDisplayId()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    if-eq p2, v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    .line 15
    .line 16
    new-instance v1, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;ILandroid/content/ComponentName;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final setShowInHostDeviceRecents(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mShowTasksInHostDeviceRecents:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final unregisterRunningAppsChangedListener(Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListeners:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final waitAndGetDisplayId()I
    .locals 6

    .line 1
    const-string v0, "GenericWindowPolicyController"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayIdSetLatch:Ljava/util/concurrent/CountDownLatch;

    .line 5
    .line 6
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    .line 8
    const-wide/16 v4, 0xa

    .line 9
    .line 10
    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const-string p0, "Timed out while waiting for GWPC displayId to be set."

    .line 17
    .line 18
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    return v1

    .line 22
    :cond_0
    iget p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    .line 23
    .line 24
    return p0

    .line 25
    :catch_0
    const-string p0, "Interrupted while waiting for GWPC displayId to be set."

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return v1
.end method

.method public final waitAndGetIsMirrorDisplay()Z
    .locals 6

    .line 1
    const-string v0, "GenericWindowPolicyController"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayIdSetLatch:Ljava/util/concurrent/CountDownLatch;

    .line 5
    .line 6
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    .line 8
    const-wide/16 v4, 0xa

    .line 9
    .line 10
    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const-string p0, "Timed out while waiting for GWPC isMirrorDisplay to be set."

    .line 17
    .line 18
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    return v1

    .line 22
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mIsMirrorDisplay:Z

    .line 23
    .line 24
    return p0

    .line 25
    :catch_0
    const-string p0, "Interrupted while waiting for GWPC isMirrorDisplay to be set."

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return v1
.end method
