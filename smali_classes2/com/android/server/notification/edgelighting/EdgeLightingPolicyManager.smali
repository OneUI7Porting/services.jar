.class public final Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final DEBUG:Z

.field public static final DESKTOP_SETTINGS_URI:Landroid/net/Uri;

.field public static final EMERGENCY_MODE_ENABLED:Z


# instance fields
.field public final mBlackPolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

.field public final mContext:Landroid/content/Context;

.field public mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field public final mDesktopSettingsObserver:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;

.field public mDisableNotificationAlerts:Z

.field public final mDisableRecords:Ljava/util/ArrayList;

.field public final mDisabledPackages:Landroid/util/SparseArray;

.field public final mHeadsUpObserver:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;

.field public mIsTouchpadEnabled:Z

.field public mNm:Landroid/app/INotificationManager;

.field public final mNotificationGroup:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

.field public final mNotificationMap:Ljava/util/HashMap;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mPolicyType:I

.field public mPolicyVersion:J

.field public final mPriorityPolicy:Ljava/util/ArrayList;

.field public mResumedComponent:Landroid/content/ComponentName;

.field public mResumedComponentTime:J

.field public mStatusBarDisabled1:I

.field public mSuppressed:I

.field public mUseHeadsUp:Z

.field public mUserId:I

.field public mVrMode:Z

.field public final mVrStateCallbacks:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$3;

.field public final mWhitePolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    .line 6
    .line 7
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 47
    :goto_1
    sput-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->EMERGENCY_MODE_ENABLED:Z

    .line 48
    .line 49
    const-string v0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    .line 50
    .line 51
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    .line 56
    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    iput-wide v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyVersion:J

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPriorityPolicy:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v1, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    .line 24
    .line 25
    new-instance v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    .line 26
    .line 27
    invoke-direct {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    .line 31
    .line 32
    new-instance v1, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    .line 38
    .line 39
    new-instance v1, Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    .line 45
    .line 46
    new-instance v1, Landroid/os/Handler;

    .line 47
    .line 48
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    .line 52
    .line 53
    iput v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mStatusBarDisabled1:I

    .line 54
    .line 55
    iput v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    .line 56
    .line 57
    iput v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUserId:I

    .line 58
    .line 59
    iput-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableNotificationAlerts:Z

    .line 60
    .line 61
    new-instance v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Landroid/os/Handler;I)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mHeadsUpObserver:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;

    .line 68
    .line 69
    new-instance v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;

    .line 70
    .line 71
    const/4 v3, 0x1

    .line 72
    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Landroid/os/Handler;I)V

    .line 73
    .line 74
    .line 75
    new-instance v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$3;

    .line 76
    .line 77
    invoke-direct {v1, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$3;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    iput-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 87
    .line 88
    const-string v3, "desktopmode"

    .line 89
    .line 90
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 95
    .line 96
    new-instance v3, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    .line 97
    .line 98
    invoke-direct {v3}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;-><init>()V

    .line 99
    .line 100
    .line 101
    iput-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    .line 102
    .line 103
    new-instance v3, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    .line 104
    .line 105
    invoke-direct {v3}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;-><init>()V

    .line 106
    .line 107
    .line 108
    iput-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    .line 109
    .line 110
    const/4 v3, 0x1

    .line 111
    invoke-virtual {v0, v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$1;->onChange(Z)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    const-string v5, "heads_up_notifications_enabled"

    .line 119
    .line 120
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v4, v5, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    .line 135
    .line 136
    invoke-virtual {p1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 137
    .line 138
    .line 139
    const-string/jumbo p1, "notification"

    .line 140
    .line 141
    .line 142
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    .line 151
    .line 152
    const-string/jumbo p0, "vrmanager"

    .line 153
    .line 154
    .line 155
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-static {p0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    if-eqz p0, :cond_0

    .line 164
    .line 165
    :try_start_0
    invoke-interface {p0, v1}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :catch_0
    move-exception p0

    .line 170
    const-string p1, "Failed to register VR mode state listener: "

    .line 171
    .line 172
    const-string v0, "EdgeLightingPolicyManager"

    .line 173
    .line 174
    invoke-static {p1, p0, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_0
    :goto_0
    return-void
.end method

.method public static isEmptyText(Landroid/os/Bundle;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-string/jumbo v1, "tickerText"

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v3, 0x0

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    return v3

    .line 21
    :cond_1
    const-string/jumbo v1, "titleText"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    return v3

    .line 35
    :cond_2
    const-string/jumbo v1, "text"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    return v3

    .line 49
    :cond_3
    const-string/jumbo v1, "subText"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-nez p0, :cond_4

    .line 61
    .line 62
    return v3

    .line 63
    :cond_4
    return v0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "-EdgeLightingPolicy start : type = "

    .line 4
    .line 5
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v0, ", version = "

    .line 14
    .line 15
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyVersion:J

    .line 19
    .line 20
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-boolean p2, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 31
    .line 32
    if-nez p2, :cond_0

    .line 33
    .line 34
    sget-boolean p2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    .line 35
    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    :cond_0
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    .line 39
    .line 40
    monitor-enter p2

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/util/Map$Entry;

    .line 62
    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v3, "  "

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v3, ":"

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    goto/16 :goto_5

    .line 104
    .line 105
    :cond_1
    const-string v0, ""

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    .line 112
    .line 113
    monitor-enter v0

    .line 114
    :try_start_1
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_3

    .line 125
    .line 126
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    check-cast v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;

    .line 131
    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v3, "  [DisableRecord] : "

    .line 138
    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget-object v3, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->packageName:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v3, " "

    .line 148
    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget v1, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->what:I

    .line 153
    .line 154
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :catchall_1
    move-exception p0

    .line 166
    goto/16 :goto_4

    .line 167
    .line 168
    :cond_3
    const-string p2, ""

    .line 169
    .line 170
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 174
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    .line 175
    .line 176
    monitor-enter p2

    .line 177
    :try_start_2
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    .line 178
    .line 179
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    const/4 v1, 0x0

    .line 184
    :goto_2
    if-ge v1, v0, :cond_4

    .line 185
    .line 186
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    .line 187
    .line 188
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    .line 193
    .line 194
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    check-cast v3, Landroid/util/ArraySet;

    .line 199
    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    const-string v5, "  [DisabledPackages] : type "

    .line 206
    .line 207
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v2, " "

    .line 214
    .line 215
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    add-int/lit8 v1, v1, 0x1

    .line 233
    .line 234
    goto :goto_2

    .line 235
    :catchall_2
    move-exception p0

    .line 236
    goto :goto_3

    .line 237
    :cond_4
    const-string v0, ""

    .line 238
    .line 239
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 243
    sget-boolean p2, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 244
    .line 245
    if-nez p2, :cond_5

    .line 246
    .line 247
    sget-boolean p2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    .line 248
    .line 249
    if-eqz p2, :cond_6

    .line 250
    .line 251
    :cond_5
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    .line 252
    .line 253
    const-string/jumbo v0, "white"

    .line 254
    .line 255
    .line 256
    invoke-virtual {p2, p1, v0}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    .line 260
    .line 261
    const-string v0, "black"

    .line 262
    .line 263
    invoke-virtual {p2, p1, v0}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    const-string/jumbo v0, "mSuppressed="

    .line 269
    .line 270
    .line 271
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    iget p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    .line 275
    .line 276
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    const-string p0, ""

    .line 287
    .line 288
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    return-void

    .line 292
    :goto_3
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 293
    throw p0

    .line 294
    :goto_4
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 295
    throw p0

    .line 296
    :goto_5
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 297
    throw p0
.end method

.method public final isAcceptableApplication(IILjava/lang/String;Z)Z
    .locals 11

    .line 1
    const-string v0, "isAcceptableApplication - accept rechecked by isEdgeLightingAllowed = "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->size()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-ge v4, v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1, p3}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->getPolicyInfoWithPackageName(Ljava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    move-object v4, v3

    .line 22
    :goto_1
    sget-boolean v5, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 23
    .line 24
    sget-boolean v6, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    .line 25
    .line 26
    const-string v7, "EdgeLightingPolicyManager"

    .line 27
    .line 28
    const/4 v8, 0x0

    .line 29
    if-nez v5, :cond_2

    .line 30
    .line 31
    if-eqz v6, :cond_5

    .line 32
    .line 33
    :cond_2
    new-instance v9, Ljava/lang/StringBuffer;

    .line 34
    .line 35
    const-string v10, "isAcceptableApplication:  pkg="

    .line 36
    .line 37
    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v9, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    .line 42
    .line 43
    const-string v10, " , range="

    .line 44
    .line 45
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v9, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 49
    .line 50
    .line 51
    const-string v10, " , includeAllApp="

    .line 52
    .line 53
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v9, p4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 57
    .line 58
    .line 59
    const-string v10, " , userId="

    .line 60
    .line 61
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v9, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 65
    .line 66
    .line 67
    const-string v10, " , infoRange="

    .line 68
    .line 69
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    .line 71
    .line 72
    if-eqz v4, :cond_3

    .line 73
    .line 74
    iget v10, v4, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    move v10, v8

    .line 78
    :goto_2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 79
    .line 80
    .line 81
    const-string v10, " , infoCategory="

    .line 82
    .line 83
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    .line 85
    .line 86
    if-eqz v4, :cond_4

    .line 87
    .line 88
    iget v10, v4, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->category:I

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_4
    move v10, v8

    .line 92
    :goto_3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    :cond_5
    const v9, 0xff00

    .line 103
    .line 104
    .line 105
    and-int/2addr v9, p1

    .line 106
    if-eqz v9, :cond_7

    .line 107
    .line 108
    if-eqz v4, :cond_6

    .line 109
    .line 110
    iget p0, v4, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    .line 111
    .line 112
    and-int/2addr p0, p1

    .line 113
    if-eqz p0, :cond_6

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_6
    move v2, v8

    .line 117
    :goto_4
    return v2

    .line 118
    :cond_7
    if-nez p4, :cond_e

    .line 119
    .line 120
    iget p4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    .line 121
    .line 122
    and-int/2addr p4, v2

    .line 123
    if-eqz p4, :cond_8

    .line 124
    .line 125
    goto :goto_8

    .line 126
    :cond_8
    invoke-virtual {v1}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->size()I

    .line 127
    .line 128
    .line 129
    move-result p4

    .line 130
    if-ge p4, v2, :cond_a

    .line 131
    .line 132
    :cond_9
    :goto_5
    move-object p4, v3

    .line 133
    goto :goto_6

    .line 134
    :cond_a
    invoke-virtual {v1, p3}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->getPolicyInfoWithPackageName(Ljava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    .line 135
    .line 136
    .line 137
    move-result-object p4

    .line 138
    if-nez p4, :cond_b

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_b
    iget v1, p4, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    .line 142
    .line 143
    and-int/2addr v1, p1

    .line 144
    if-eqz v1, :cond_9

    .line 145
    .line 146
    :goto_6
    if-eqz p4, :cond_c

    .line 147
    .line 148
    move p4, v2

    .line 149
    goto :goto_7

    .line 150
    :cond_c
    move p4, v8

    .line 151
    :goto_7
    if-nez v5, :cond_d

    .line 152
    .line 153
    if-eqz v6, :cond_10

    .line 154
    .line 155
    :cond_d
    new-instance v1, Ljava/lang/StringBuffer;

    .line 156
    .line 157
    const-string v4, "isAcceptableApplication: getAcceptablePolicy "

    .line 158
    .line 159
    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    goto :goto_a

    .line 173
    :cond_e
    :goto_8
    new-instance p4, Landroid/content/Intent;

    .line 174
    .line 175
    const-string v1, "android.intent.action.MAIN"

    .line 176
    .line 177
    invoke-direct {p4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    const-string v1, "android.intent.category.LAUNCHER"

    .line 181
    .line 182
    invoke-virtual {p4, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p4, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    .line 187
    .line 188
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 189
    .line 190
    invoke-virtual {v1, p4, v8, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 191
    .line 192
    .line 193
    move-result-object p4

    .line 194
    if-eqz p4, :cond_f

    .line 195
    .line 196
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 197
    .line 198
    .line 199
    move-result p4

    .line 200
    if-lez p4, :cond_f

    .line 201
    .line 202
    move p4, v2

    .line 203
    goto :goto_9

    .line 204
    :cond_f
    move p4, v8

    .line 205
    :goto_9
    if-eqz p4, :cond_10

    .line 206
    .line 207
    if-eqz v4, :cond_10

    .line 208
    .line 209
    iget v1, v4, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    .line 210
    .line 211
    and-int/2addr v1, p1

    .line 212
    if-nez v1, :cond_10

    .line 213
    .line 214
    move p4, v8

    .line 215
    :cond_10
    :goto_a
    if-eqz p4, :cond_13

    .line 216
    .line 217
    iget v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    .line 218
    .line 219
    and-int/lit8 v1, v1, 0x2

    .line 220
    .line 221
    if-eqz v1, :cond_13

    .line 222
    .line 223
    :try_start_0
    iget-object p4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 224
    .line 225
    invoke-virtual {p4, p3, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 226
    .line 227
    .line 228
    move-result-object p4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    goto :goto_b

    .line 230
    :catch_0
    const-string p4, "getApplicationInfo : packageName = "

    .line 231
    .line 232
    invoke-static {p4, p3, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    move-object p4, v3

    .line 236
    :goto_b
    if-eqz p4, :cond_12

    .line 237
    .line 238
    invoke-virtual {p4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-nez v1, :cond_12

    .line 243
    .line 244
    invoke-virtual {p4}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    .line 245
    .line 246
    .line 247
    move-result p4

    .line 248
    if-eqz p4, :cond_11

    .line 249
    .line 250
    goto :goto_c

    .line 251
    :cond_11
    move p4, v2

    .line 252
    goto :goto_d

    .line 253
    :cond_12
    :goto_c
    move p4, v8

    .line 254
    :cond_13
    :goto_d
    if-gez p2, :cond_14

    .line 255
    .line 256
    :try_start_1
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 257
    .line 258
    iget v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mUserId:I

    .line 259
    .line 260
    invoke-virtual {p2, p3, v8, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    .line 261
    .line 262
    .line 263
    move-result p2

    .line 264
    goto :goto_f

    .line 265
    :catch_1
    move-exception p2

    .line 266
    goto :goto_e

    .line 267
    :cond_14
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 268
    .line 269
    invoke-virtual {v1, p3, v8, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    .line 270
    .line 271
    .line 272
    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 273
    goto :goto_f

    .line 274
    :goto_e
    const-string v1, "getPackageUidAsUser failed - "

    .line 275
    .line 276
    invoke-static {p2, v1, v7}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    move p2, v8

    .line 280
    :goto_f
    and-int/lit8 v1, p1, 0x1

    .line 281
    .line 282
    if-eqz v1, :cond_18

    .line 283
    .line 284
    :try_start_2
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    .line 285
    .line 286
    if-nez v1, :cond_15

    .line 287
    .line 288
    const-string/jumbo v1, "notification"

    .line 289
    .line 290
    .line 291
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    .line 300
    .line 301
    goto :goto_10

    .line 302
    :catch_2
    move-exception v0

    .line 303
    goto :goto_11

    .line 304
    :cond_15
    :goto_10
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    .line 305
    .line 306
    if-eqz v1, :cond_16

    .line 307
    .line 308
    invoke-interface {v1, p3, p2}, Landroid/app/INotificationManager;->isEdgeLightingAllowed(Ljava/lang/String;I)Z

    .line 309
    .line 310
    .line 311
    move-result p4

    .line 312
    :cond_16
    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 313
    .line 314
    if-nez v1, :cond_17

    .line 315
    .line 316
    if-eqz v6, :cond_18

    .line 317
    .line 318
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    const-string v0, " uid = "

    .line 327
    .line 328
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 339
    .line 340
    .line 341
    goto :goto_12

    .line 342
    :goto_11
    const-string v1, "isEdgeLightingAllowed failed - "

    .line 343
    .line 344
    invoke-static {v0, v1, v7}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    :cond_18
    :goto_12
    if-eqz p4, :cond_22

    .line 348
    .line 349
    iget v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    .line 350
    .line 351
    and-int/lit8 v0, v0, 0x4

    .line 352
    .line 353
    if-eqz v0, :cond_22

    .line 354
    .line 355
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;

    .line 356
    .line 357
    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->size()I

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    if-ge v1, v2, :cond_19

    .line 362
    .line 363
    goto :goto_13

    .line 364
    :cond_19
    invoke-virtual {v0, p3}, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->getPolicyInfoWithPackageName(Ljava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    if-nez v0, :cond_1a

    .line 369
    .line 370
    goto :goto_13

    .line 371
    :cond_1a
    iget v1, v0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    .line 372
    .line 373
    and-int/2addr p1, v1

    .line 374
    if-eqz p1, :cond_1b

    .line 375
    .line 376
    move-object v3, v0

    .line 377
    :cond_1b
    :goto_13
    if-nez v3, :cond_1c

    .line 378
    .line 379
    goto :goto_14

    .line 380
    :cond_1c
    move v2, v8

    .line 381
    :goto_14
    if-eqz p4, :cond_1f

    .line 382
    .line 383
    if-nez v2, :cond_1f

    .line 384
    .line 385
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    .line 386
    .line 387
    if-eqz p0, :cond_1d

    .line 388
    .line 389
    invoke-interface {p0, p3, p2, v8}, Landroid/app/INotificationManager;->setAllowEdgeLighting(Ljava/lang/String;IZ)V

    .line 390
    .line 391
    .line 392
    goto :goto_15

    .line 393
    :catch_3
    move-exception p0

    .line 394
    goto :goto_16

    .line 395
    :cond_1d
    :goto_15
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 396
    .line 397
    if-nez p0, :cond_1e

    .line 398
    .line 399
    if-eqz v6, :cond_1f

    .line 400
    .line 401
    :cond_1e
    const-string p0, "Block list app so setAllowEdgeLighting to false"

    .line 402
    .line 403
    invoke-static {v7, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 404
    .line 405
    .line 406
    goto :goto_17

    .line 407
    :goto_16
    const-string/jumbo p1, "setAllowEdgeLighting failed - "

    .line 408
    .line 409
    .line 410
    invoke-static {p0, p1, v7}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    :cond_1f
    :goto_17
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 414
    .line 415
    if-nez p0, :cond_20

    .line 416
    .line 417
    if-eqz v6, :cond_21

    .line 418
    .line 419
    :cond_20
    new-instance p0, Ljava/lang/StringBuffer;

    .line 420
    .line 421
    const-string p1, "isAcceptableApplication: getRejectablePolicy "

    .line 422
    .line 423
    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 427
    .line 428
    .line 429
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object p0

    .line 433
    invoke-static {v7, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .line 435
    .line 436
    :cond_21
    move p4, v2

    .line 437
    :cond_22
    return p4
.end method

.method public final isAllowEdgelighting()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    and-int/lit8 p0, p0, 0x10

    .line 8
    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public final isEdgeLightingDisabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-lez p0, :cond_0

    .line 11
    .line 12
    const-string p0, "EdgeLightingPolicyManager"

    .line 13
    .line 14
    const-string v1, "EdgeLighting is disabled"

    .line 15
    .line 16
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    monitor-exit v0

    .line 25
    const/4 p0, 0x0

    .line 26
    return p0

    .line 27
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final isEdgeLightingDisabledByPackage(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    monitor-exit v1

    .line 17
    return v0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroid/util/ArraySet;

    .line 28
    .line 29
    if-eqz p0, :cond_4

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_3

    .line 43
    .line 44
    monitor-exit v1

    .line 45
    return v2

    .line 46
    :cond_3
    monitor-exit v1

    .line 47
    return v0

    .line 48
    :cond_4
    :goto_0
    monitor-exit v1

    .line 49
    return v0

    .line 50
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final isEdgeLightingRestricted(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    const-string v3, "EdgeLightingPolicyManager"

    .line 16
    .line 17
    if-eq v0, v2, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    .line 24
    .line 25
    iget-object v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-direct {v0, v4}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 33
    .line 34
    const/4 v4, 0x2

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move v5, v2

    .line 53
    move v0, v4

    .line 54
    :goto_0
    if-nez v5, :cond_2

    .line 55
    .line 56
    new-instance p0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v6, "getEdgeLightingRestrictState coverOpen="

    .line 59
    .line 60
    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v5, ", type="

    .line 67
    .line 68
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->EMERGENCY_MODE_ENABLED:Z

    .line 83
    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    const/16 v4, 0xa

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 108
    .line 109
    if-ne v0, v2, :cond_4

    .line 110
    .line 111
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    const-string/jumbo v0, "new_dex"

    .line 118
    .line 119
    .line 120
    const/4 v4, -0x2

    .line 121
    invoke-static {p0, v0, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    if-eq p0, v2, :cond_4

    .line 126
    .line 127
    const-string p0, "Desktop mode enabled and it is not new dex mode"

    .line 128
    .line 129
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    const/16 v4, 0xb

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    move v4, v1

    .line 136
    :goto_1
    if-eqz v4, :cond_5

    .line 137
    .line 138
    const-string p0, "EdgeLighting is Restricted("

    .line 139
    .line 140
    const-string v0, "), range = "

    .line 141
    .line 142
    invoke-static {v4, p1, p0, v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return v2

    .line 146
    :cond_5
    return v1
.end method

.method public final isHUNPeeked()Z
    .locals 3

    .line 1
    iget-boolean p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mVrMode:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "EdgeLightingPolicyManager"

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const-string p0, "isHUNPeeked : Vr mode"

    .line 9
    .line 10
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    const-string/jumbo p0, "net.mirrorlink.on"

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string v2, "1"

    .line 22
    .line 23
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    const-string p0, "isHUNPeeked : mirror link on"

    .line 30
    .line 31
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return v0

    .line 35
    :cond_1
    const/4 p0, 0x1

    .line 36
    return p0
.end method

.method public final manageDisableRecoredLocked(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;

    .line 18
    .line 19
    iget-object v4, v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    .line 20
    .line 21
    invoke-interface {v4, p2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v3, 0x0

    .line 32
    :goto_1
    if-eqz p1, :cond_4

    .line 33
    .line 34
    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_2
    if-nez v3, :cond_3

    .line 42
    .line 43
    new-instance v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;

    .line 44
    .line 45
    invoke-direct {v3, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)V

    .line 46
    .line 47
    .line 48
    :try_start_0
    invoke-interface {p2, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :catch_0
    move-exception p0

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string/jumbo p2, "manageDisableRecoredLocked : "

    .line 61
    .line 62
    .line 63
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const-string p1, "EdgeLightingPolicyManager"

    .line 78
    .line 79
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_3
    :goto_2
    iput p1, v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->what:I

    .line 84
    .line 85
    iput-object p2, v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    .line 86
    .line 87
    iput-object p3, v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->packageName:Ljava/lang/String;

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    iget-object p0, v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    .line 98
    .line 99
    invoke-interface {p0, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 100
    .line 101
    .line 102
    :cond_5
    :goto_4
    return-void
.end method

.method public final putNotification(Landroid/service/notification/StatusBarNotification;ZZIZZ)Landroid/os/Bundle;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v3, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v3, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object v3, v2

    .line 33
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v4}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    const-string v6, "android.title"

    .line 50
    .line 51
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    const-string v7, "android.text"

    .line 56
    .line 57
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    const-string v8, "android.subText"

    .line 62
    .line 63
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    const-string v9, "android.showSmallIcon"

    .line 68
    .line 69
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    move-object v9, v8

    .line 78
    move-object v8, v7

    .line 79
    move-object v7, v0

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    move-object v8, v2

    .line 82
    move-object v9, v8

    .line 83
    move-object v7, v6

    .line 84
    move-object v6, v9

    .line 85
    :goto_1
    const-string v0, "EdgeLightingPolicyManager"

    .line 86
    .line 87
    new-instance v10, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string/jumbo v11, "putNotification tickerText:"

    .line 90
    .line 91
    .line 92
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const/4 v12, 0x0

    .line 96
    if-eqz v3, :cond_3

    .line 97
    .line 98
    const/4 v13, 0x1

    .line 99
    goto :goto_2

    .line 100
    :cond_3
    move v13, v12

    .line 101
    :goto_2
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v13, ",titleText:"

    .line 105
    .line 106
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    if-eqz v6, :cond_4

    .line 110
    .line 111
    const/4 v13, 0x1

    .line 112
    goto :goto_3

    .line 113
    :cond_4
    move v13, v12

    .line 114
    :goto_3
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v13, ",text:"

    .line 118
    .line 119
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    if-eqz v8, :cond_5

    .line 123
    .line 124
    const/4 v13, 0x1

    .line 125
    goto :goto_4

    .line 126
    :cond_5
    move v13, v12

    .line 127
    :goto_4
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v13, ",sub:"

    .line 131
    .line 132
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    if-eqz v9, :cond_6

    .line 136
    .line 137
    const/4 v13, 0x1

    .line 138
    goto :goto_5

    .line 139
    :cond_6
    move v13, v12

    .line 140
    :goto_5
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v13, "cn= + "

    .line 144
    .line 145
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-object v13, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    .line 149
    .line 150
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v10

    .line 157
    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    iget-object v10, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    .line 161
    .line 162
    monitor-enter v10

    .line 163
    :try_start_0
    iget-object v0, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    const/16 v13, 0xa

    .line 170
    .line 171
    if-ge v0, v13, :cond_7

    .line 172
    .line 173
    monitor-exit v10

    .line 174
    move-object/from16 v16, v3

    .line 175
    .line 176
    goto :goto_7

    .line 177
    :catchall_0
    move-exception v0

    .line 178
    goto/16 :goto_11

    .line 179
    .line 180
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 181
    .line 182
    .line 183
    move-result-wide v13

    .line 184
    iget-object v0, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v15

    .line 198
    if-eqz v15, :cond_9

    .line 199
    .line 200
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v15

    .line 204
    check-cast v15, Ljava/util/Map$Entry;

    .line 205
    .line 206
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v15

    .line 210
    check-cast v15, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    .line 211
    .line 212
    move-object/from16 v16, v3

    .line 213
    .line 214
    iget-wide v2, v15, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    .line 215
    .line 216
    const-wide/16 v17, 0x2710

    .line 217
    .line 218
    add-long v2, v2, v17

    .line 219
    .line 220
    cmp-long v2, v2, v13

    .line 221
    .line 222
    if-gez v2, :cond_8

    .line 223
    .line 224
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 225
    .line 226
    .line 227
    :cond_8
    move-object/from16 v3, v16

    .line 228
    .line 229
    const/4 v2, 0x0

    .line 230
    goto :goto_6

    .line 231
    :cond_9
    move-object/from16 v16, v3

    .line 232
    .line 233
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :goto_7
    iget-object v2, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    .line 235
    .line 236
    monitor-enter v2

    .line 237
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    iget v0, v0, Landroid/app/Notification;->ledARGB:I

    .line 242
    .line 243
    if-nez v0, :cond_a

    .line 244
    .line 245
    iget-object v3, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    .line 246
    .line 247
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v10

    .line 251
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    check-cast v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    .line 256
    .line 257
    if-eqz v3, :cond_a

    .line 258
    .line 259
    iget-object v0, v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    .line 260
    .line 261
    const-string v3, "color"

    .line 262
    .line 263
    invoke-virtual {v0, v3, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 264
    .line 265
    .line 266
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 267
    :cond_a
    move v3, v0

    .line 268
    goto :goto_8

    .line 269
    :catchall_1
    move-exception v0

    .line 270
    goto/16 :goto_10

    .line 271
    .line 272
    :goto_8
    const/16 v10, -0x3e8

    .line 273
    .line 274
    :try_start_2
    iget-object v0, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    .line 275
    .line 276
    if-nez v0, :cond_b

    .line 277
    .line 278
    const-string v0, "EdgeLightingPolicyManager"

    .line 279
    .line 280
    const-string v13, "INotificationManager is null in putNotification, try reload"

    .line 281
    .line 282
    invoke-static {v0, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    const-string/jumbo v0, "notification"

    .line 286
    .line 287
    .line 288
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    iput-object v0, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    .line 297
    .line 298
    goto :goto_a

    .line 299
    :catch_0
    move-exception v0

    .line 300
    goto :goto_9

    .line 301
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v13

    .line 305
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 306
    .line 307
    .line 308
    move-result v14

    .line 309
    invoke-interface {v0, v13, v14}, Landroid/app/INotificationManager;->getLockScreenNotificationVisibilityForPackage(Ljava/lang/String;I)I

    .line 310
    .line 311
    .line 312
    move-result v10
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 313
    goto :goto_a

    .line 314
    :goto_9
    :try_start_3
    const-string v13, "EdgeLightingPolicyManager"

    .line 315
    .line 316
    new-instance v14, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    .line 321
    const-string v15, "getLockScreenNotificationVisibilityForPackage failed - "

    .line 322
    .line 323
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 337
    .line 338
    .line 339
    move-result-wide v13

    .line 340
    new-instance v0, Landroid/os/Bundle;

    .line 341
    .line 342
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 343
    .line 344
    .line 345
    const-string v15, "isHeadup"

    .line 346
    .line 347
    move/from16 v11, p2

    .line 348
    .line 349
    invoke-virtual {v0, v15, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 350
    .line 351
    .line 352
    const-string v11, "isUpdate"

    .line 353
    .line 354
    move/from16 v15, p3

    .line 355
    .line 356
    invoke-virtual {v0, v11, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 357
    .line 358
    .line 359
    const-string/jumbo v11, "tickerText"

    .line 360
    .line 361
    .line 362
    move-object/from16 v15, v16

    .line 363
    .line 364
    invoke-virtual {v0, v11, v15}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 365
    .line 366
    .line 367
    const-string/jumbo v11, "titleText"

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0, v11, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 371
    .line 372
    .line 373
    const-string/jumbo v6, "text"

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 377
    .line 378
    .line 379
    const-string/jumbo v6, "subText"

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0, v6, v9}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 383
    .line 384
    .line 385
    const-string/jumbo v6, "smallIcon"

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 389
    .line 390
    .line 391
    const-string v4, "flag"

    .line 392
    .line 393
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 394
    .line 395
    .line 396
    move-result-object v6

    .line 397
    iget v6, v6, Landroid/app/Notification;->flags:I

    .line 398
    .line 399
    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 400
    .line 401
    .line 402
    const-string v4, "color"

    .line 403
    .line 404
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 405
    .line 406
    .line 407
    const-string/jumbo v3, "notification_color"

    .line 408
    .line 409
    .line 410
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 411
    .line 412
    .line 413
    move-result-object v4

    .line 414
    iget v4, v4, Landroid/app/Notification;->color:I

    .line 415
    .line 416
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 417
    .line 418
    .line 419
    const-string/jumbo v3, "priority"

    .line 420
    .line 421
    .line 422
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 423
    .line 424
    .line 425
    move-result-object v4

    .line 426
    iget v4, v4, Landroid/app/Notification;->priority:I

    .line 427
    .line 428
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 429
    .line 430
    .line 431
    const-string v3, "component"

    .line 432
    .line 433
    iget-object v4, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    .line 434
    .line 435
    if-eqz v4, :cond_c

    .line 436
    .line 437
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v4

    .line 441
    goto :goto_b

    .line 442
    :cond_c
    const/4 v4, 0x0

    .line 443
    :goto_b
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    const-string v3, "component_time"

    .line 447
    .line 448
    iget-wide v8, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mResumedComponentTime:J

    .line 449
    .line 450
    invoke-virtual {v0, v3, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 451
    .line 452
    .line 453
    const-string v3, "group_key"

    .line 454
    .line 455
    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    const-string v3, "content_intent"

    .line 459
    .line 460
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 461
    .line 462
    .line 463
    move-result-object v4

    .line 464
    iget-object v4, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 465
    .line 466
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 467
    .line 468
    .line 469
    const-string/jumbo v3, "user_id"

    .line 470
    .line 471
    .line 472
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 473
    .line 474
    .line 475
    move-result-object v4

    .line 476
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 477
    .line 478
    .line 479
    move-result v4

    .line 480
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 481
    .line 482
    .line 483
    const-string/jumbo v3, "noti_key"

    .line 484
    .line 485
    .line 486
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v4

    .line 490
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    const-string/jumbo v3, "noti_id"

    .line 494
    .line 495
    .line 496
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 497
    .line 498
    .line 499
    move-result v4

    .line 500
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 501
    .line 502
    .line 503
    const-string/jumbo v3, "noti_tag"

    .line 504
    .line 505
    .line 506
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v4

    .line 510
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    const-string/jumbo v3, "noti_visiblity"

    .line 514
    .line 515
    .line 516
    move/from16 v4, p4

    .line 517
    .line 518
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 519
    .line 520
    .line 521
    const-string/jumbo v3, "package_visiblity"

    .line 522
    .line 523
    .line 524
    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 525
    .line 526
    .line 527
    const-string v3, "alert_group"

    .line 528
    .line 529
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    .line 530
    .line 531
    .line 532
    move-result v4

    .line 533
    if-eqz v4, :cond_d

    .line 534
    .line 535
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 536
    .line 537
    .line 538
    move-result-object v4

    .line 539
    invoke-virtual {v4}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    .line 540
    .line 541
    .line 542
    move-result v4

    .line 543
    if-eqz v4, :cond_d

    .line 544
    .line 545
    const/4 v11, 0x1

    .line 546
    goto :goto_c

    .line 547
    :cond_d
    move v11, v12

    .line 548
    :goto_c
    invoke-virtual {v0, v3, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 549
    .line 550
    .line 551
    const-string v3, "category"

    .line 552
    .line 553
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 554
    .line 555
    .line 556
    move-result-object v4

    .line 557
    iget-object v4, v4, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 558
    .line 559
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 560
    .line 561
    .line 562
    const-string v3, "audible_alert"

    .line 563
    .line 564
    move/from16 v4, p5

    .line 565
    .line 566
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 567
    .line 568
    .line 569
    const-string v3, "channel_id"

    .line 570
    .line 571
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 572
    .line 573
    .line 574
    move-result-object v4

    .line 575
    invoke-virtual {v4}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v4

    .line 579
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 580
    .line 581
    .line 582
    const-string v3, "bubble"

    .line 583
    .line 584
    move/from16 v4, p6

    .line 585
    .line 586
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 587
    .line 588
    .line 589
    const-string/jumbo v3, "show_small_icon"

    .line 590
    .line 591
    .line 592
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 593
    .line 594
    .line 595
    move-result v4

    .line 596
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 597
    .line 598
    .line 599
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 600
    .line 601
    .line 602
    move-result-object v3

    .line 603
    iget-object v3, v3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 604
    .line 605
    if-eqz v3, :cond_f

    .line 606
    .line 607
    new-instance v3, Ljava/util/ArrayList;

    .line 608
    .line 609
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .line 611
    .line 612
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 613
    .line 614
    .line 615
    move-result-object v4

    .line 616
    iget-object v4, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 617
    .line 618
    array-length v6, v4

    .line 619
    :goto_d
    if-ge v12, v6, :cond_e

    .line 620
    .line 621
    aget-object v7, v4, v12

    .line 622
    .line 623
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    .line 625
    .line 626
    add-int/lit8 v12, v12, 0x1

    .line 627
    .line 628
    goto :goto_d

    .line 629
    :cond_e
    const-string/jumbo v4, "noti_actions"

    .line 630
    .line 631
    .line 632
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 633
    .line 634
    .line 635
    :cond_f
    new-instance v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    .line 636
    .line 637
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 638
    .line 639
    .line 640
    iput-wide v13, v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    .line 641
    .line 642
    iput-object v0, v3, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    .line 643
    .line 644
    if-eqz v5, :cond_10

    .line 645
    .line 646
    iget-object v4, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    .line 647
    .line 648
    move-object/from16 v5, p1

    .line 649
    .line 650
    invoke-virtual {v4, v5, v3}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->updateNotificationData(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;)V

    .line 651
    .line 652
    .line 653
    goto :goto_e

    .line 654
    :cond_10
    move-object/from16 v5, p1

    .line 655
    .line 656
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 657
    .line 658
    .line 659
    move-result-object v4

    .line 660
    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    .line 661
    .line 662
    .line 663
    move-result v4

    .line 664
    if-eqz v4, :cond_11

    .line 665
    .line 666
    iget-object v4, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    .line 667
    .line 668
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v6

    .line 672
    iget-object v7, v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    .line 673
    .line 674
    monitor-enter v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 675
    :try_start_4
    iget-object v4, v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    .line 676
    .line 677
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    move-result-object v4

    .line 681
    check-cast v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;

    .line 682
    .line 683
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 684
    if-eqz v4, :cond_11

    .line 685
    .line 686
    :try_start_5
    invoke-virtual {v4}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    .line 687
    .line 688
    .line 689
    move-result-object v6

    .line 690
    if-eqz v6, :cond_11

    .line 691
    .line 692
    new-instance v6, Ljava/lang/StringBuilder;

    .line 693
    .line 694
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 695
    .line 696
    .line 697
    const-string/jumbo v7, "tickerText"

    .line 698
    .line 699
    .line 700
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 701
    .line 702
    .line 703
    move-result-object v7

    .line 704
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 705
    .line 706
    .line 707
    const-string v7, " -> "

    .line 708
    .line 709
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    invoke-virtual {v4}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    .line 713
    .line 714
    .line 715
    move-result-object v7

    .line 716
    iget-object v7, v7, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    .line 717
    .line 718
    const-string/jumbo v8, "tickerText"

    .line 719
    .line 720
    .line 721
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 722
    .line 723
    .line 724
    move-result-object v7

    .line 725
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    const-string v7, " , "

    .line 729
    .line 730
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    .line 732
    .line 733
    const-string/jumbo v7, "tickerText"

    .line 734
    .line 735
    .line 736
    invoke-virtual {v4}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    .line 737
    .line 738
    .line 739
    move-result-object v8

    .line 740
    iget-object v8, v8, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    .line 741
    .line 742
    const-string/jumbo v9, "tickerText"

    .line 743
    .line 744
    .line 745
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 746
    .line 747
    .line 748
    move-result-object v8

    .line 749
    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 750
    .line 751
    .line 752
    const-string/jumbo v7, "titleText"

    .line 753
    .line 754
    .line 755
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 756
    .line 757
    .line 758
    move-result-object v7

    .line 759
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 760
    .line 761
    .line 762
    const-string v7, " -> "

    .line 763
    .line 764
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    .line 766
    .line 767
    invoke-virtual {v4}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    .line 768
    .line 769
    .line 770
    move-result-object v7

    .line 771
    iget-object v7, v7, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    .line 772
    .line 773
    const-string/jumbo v8, "titleText"

    .line 774
    .line 775
    .line 776
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 777
    .line 778
    .line 779
    move-result-object v7

    .line 780
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    const-string v7, " , "

    .line 784
    .line 785
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    .line 787
    .line 788
    const-string/jumbo v7, "titleText"

    .line 789
    .line 790
    .line 791
    invoke-virtual {v4}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    .line 792
    .line 793
    .line 794
    move-result-object v8

    .line 795
    iget-object v8, v8, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    .line 796
    .line 797
    const-string/jumbo v9, "titleText"

    .line 798
    .line 799
    .line 800
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 801
    .line 802
    .line 803
    move-result-object v8

    .line 804
    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 805
    .line 806
    .line 807
    const-string/jumbo v7, "text"

    .line 808
    .line 809
    .line 810
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 811
    .line 812
    .line 813
    move-result-object v7

    .line 814
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 815
    .line 816
    .line 817
    const-string v7, " -> "

    .line 818
    .line 819
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    .line 821
    .line 822
    invoke-virtual {v4}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    .line 823
    .line 824
    .line 825
    move-result-object v7

    .line 826
    iget-object v7, v7, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    .line 827
    .line 828
    const-string/jumbo v8, "text"

    .line 829
    .line 830
    .line 831
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 832
    .line 833
    .line 834
    move-result-object v7

    .line 835
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 836
    .line 837
    .line 838
    const-string v7, " , "

    .line 839
    .line 840
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    .line 842
    .line 843
    const-string/jumbo v7, "text"

    .line 844
    .line 845
    .line 846
    invoke-virtual {v4}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    .line 847
    .line 848
    .line 849
    move-result-object v8

    .line 850
    iget-object v8, v8, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    .line 851
    .line 852
    const-string/jumbo v9, "text"

    .line 853
    .line 854
    .line 855
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 856
    .line 857
    .line 858
    move-result-object v8

    .line 859
    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 860
    .line 861
    .line 862
    const-string/jumbo v7, "subText"

    .line 863
    .line 864
    .line 865
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 866
    .line 867
    .line 868
    move-result-object v7

    .line 869
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 870
    .line 871
    .line 872
    const-string v7, " -> "

    .line 873
    .line 874
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    .line 876
    .line 877
    invoke-virtual {v4}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    .line 878
    .line 879
    .line 880
    move-result-object v7

    .line 881
    iget-object v7, v7, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    .line 882
    .line 883
    const-string/jumbo v8, "subText"

    .line 884
    .line 885
    .line 886
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 887
    .line 888
    .line 889
    move-result-object v7

    .line 890
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 891
    .line 892
    .line 893
    const-string/jumbo v7, "subText"

    .line 894
    .line 895
    .line 896
    invoke-virtual {v4}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    .line 897
    .line 898
    .line 899
    move-result-object v4

    .line 900
    iget-object v4, v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    .line 901
    .line 902
    const-string/jumbo v8, "subText"

    .line 903
    .line 904
    .line 905
    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 906
    .line 907
    .line 908
    move-result-object v4

    .line 909
    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 910
    .line 911
    .line 912
    sget-boolean v4, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->DEBUG:Z

    .line 913
    .line 914
    if-eqz v4, :cond_11

    .line 915
    .line 916
    const-string v4, "EdgeLightingPolicyManager"

    .line 917
    .line 918
    new-instance v7, Ljava/lang/StringBuilder;

    .line 919
    .line 920
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 921
    .line 922
    .line 923
    const-string v8, " Summary notification display. Change text "

    .line 924
    .line 925
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    .line 927
    .line 928
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 929
    .line 930
    .line 931
    move-result-object v6

    .line 932
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    .line 934
    .line 935
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 936
    .line 937
    .line 938
    move-result-object v6

    .line 939
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 940
    .line 941
    .line 942
    goto :goto_f

    .line 943
    :catchall_2
    move-exception v0

    .line 944
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 945
    :try_start_7
    throw v0

    .line 946
    :cond_11
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    .line 947
    .line 948
    .line 949
    move-result v4

    .line 950
    if-nez v4, :cond_12

    .line 951
    .line 952
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 953
    .line 954
    .line 955
    move-result-object v4

    .line 956
    invoke-virtual {v4}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    .line 957
    .line 958
    .line 959
    move-result v4

    .line 960
    if-nez v4, :cond_12

    .line 961
    .line 962
    iget-object v1, v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    .line 963
    .line 964
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 965
    .line 966
    .line 967
    move-result-object v4

    .line 968
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    .line 970
    .line 971
    :cond_12
    monitor-exit v2

    .line 972
    return-object v0

    .line 973
    :goto_10
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 974
    throw v0

    .line 975
    :goto_11
    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 976
    throw v0
.end method
