.class public final Lcom/android/server/enterprise/dex/DexPolicy;
.super Lcom/samsung/android/knox/dex/IDexPolicy$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static isBlockerRegistered:Z = false


# instance fields
.field public final blocker:Lcom/android/server/enterprise/dex/DexPolicy$1;

.field public mApplicationPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field public final mContext:Landroid/content/Context;

.field public mContext_temp:Lcom/samsung/android/knox/ContextInfo;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

.field public mIWifipolicy:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

.field public final mInjector:Lcom/android/server/enterprise/dex/DexPolicy$Injector;

.field public restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/enterprise/dex/DexPolicy$Injector;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/dex/DexPolicy$Injector;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/samsung/android/knox/dex/IDexPolicy$Stub;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mIWifipolicy:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mApplicationPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 19
    .line 20
    new-instance v1, Lcom/android/server/enterprise/dex/DexPolicy$1;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/android/server/enterprise/dex/DexPolicy$1;-><init>(Lcom/android/server/enterprise/dex/DexPolicy;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->blocker:Lcom/android/server/enterprise/dex/DexPolicy$1;

    .line 26
    .line 27
    new-instance v1, Lcom/android/server/enterprise/dex/DexPolicy$DexStateChangeObserver;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/android/server/enterprise/dex/DexPolicy$DexStateChangeObserver;-><init>(Lcom/android/server/enterprise/dex/DexPolicy;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mInjector:Lcom/android/server/enterprise/dex/DexPolicy$Injector;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 37
    .line 38
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 42
    .line 43
    const-string/jumbo v0, "restriction_policy"

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 53
    .line 54
    new-instance v0, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 55
    .line 56
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 60
    .line 61
    const-string/jumbo v0, "com.samsung.android.desktopmode.action.ENTER_DESKTOP_MODE"

    .line 62
    .line 63
    .line 64
    const-string/jumbo v1, "com.samsung.android.desktopmode.action.EXIT_DESKTOP_MODE"

    .line 65
    .line 66
    .line 67
    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 68
    .line 69
    invoke-static {v0, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-instance v1, Lcom/android/server/enterprise/dex/DexPolicy$2;

    .line 74
    .line 75
    invoke-direct {v1, p0}, Lcom/android/server/enterprise/dex/DexPolicy$2;-><init>(Lcom/android/server/enterprise/dex/DexPolicy;)V

    .line 76
    .line 77
    .line 78
    const/4 v2, 0x2

    .line 79
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    const-string v0, "DexPolicyService"

    .line 83
    .line 84
    const-string v1, "SEC_PRODUCT_FEATURE_COMMON_SUPPORT_KNOX_DESKTOP is true"

    .line 85
    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    const-string/jumbo v0, "desktopmode"

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 97
    .line 98
    if-eqz p1, :cond_0

    .line 99
    .line 100
    new-instance v0, Lcom/android/server/enterprise/dex/DexPolicy$3;

    .line 101
    .line 102
    invoke-direct {v0, p0}, Lcom/android/server/enterprise/dex/DexPolicy$3;-><init>(Lcom/android/server/enterprise/dex/DexPolicy;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    .line 106
    .line 107
    .line 108
    :cond_0
    return-void
.end method


# virtual methods
.method public final addPackageToDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 4

    .line 1
    const-string v0, "addPackageToDisableList"

    .line 2
    .line 3
    const-string v1, "DexPolicyService"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromDisableList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    const-string p0, "addPackageToDisableList already blocked package"

    .line 23
    .line 24
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x3

    .line 28
    return p0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy$1()Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    const-string p0, "addPackageToDisableList : "

    .line 40
    .line 41
    const-string p1, " is not installed"

    .line 42
    .line 43
    invoke-static {p0, p2, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x2

    .line 47
    return p0

    .line 48
    :cond_1
    const/4 v2, 0x1

    .line 49
    :try_start_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    iget-object v3, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->isDexActivated(Landroid/content/Context;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/dex/DexPolicy;->disablePackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/dex/DexPolicy;->writePackageDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 67
    .line 68
    .line 69
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    xor-int/2addr p0, v2

    .line 71
    return p0

    .line 72
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string p2, "addPackageToDisableList : failed "

    .line 75
    .line 76
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p0, p1, v1}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return v2
.end method

.method public final allowScreenTimeoutChange(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 6
    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "DEX_POLICY"

    .line 11
    .line 12
    const-string/jumbo v5, "screenTimeoutChangeAllowed"

    .line 13
    .line 14
    .line 15
    move v3, p2

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public final applyEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)V
    .locals 34

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v0, p2

    .line 6
    .line 7
    const-string v3, "DEX_POLICY"

    .line 8
    .line 9
    iget-object v4, v1, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    const-string/jumbo v4, "restriction_policy"

    .line 14
    .line 15
    .line 16
    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 21
    .line 22
    iput-object v4, v1, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 23
    .line 24
    :cond_0
    iget-object v4, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mIWifipolicy:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 25
    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    iget-object v4, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mInjector:Lcom/android/server/enterprise/dex/DexPolicy$Injector;

    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const-string/jumbo v4, "wifi_policy"

    .line 34
    .line 35
    .line 36
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-static {v4}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    iput-object v4, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mIWifipolicy:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 45
    .line 46
    :cond_1
    iget-object v4, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mIWifipolicy:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 47
    .line 48
    const-string/jumbo v5, "failed to set applyEthernetOnly"

    .line 49
    .line 50
    .line 51
    const-string v6, "DexPolicyService"

    .line 52
    .line 53
    if-nez v4, :cond_2

    .line 54
    .line 55
    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    const-string/jumbo v4, "applyEthernetOnly - "

    .line 60
    .line 61
    .line 62
    invoke-static {v4, v6, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    const-string/jumbo v4, "wifi"

    .line 66
    .line 67
    .line 68
    const-string/jumbo v7, "phone"

    .line 69
    .line 70
    .line 71
    const/4 v9, 0x0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    const-string v0, "RESTRICTION"

    .line 75
    .line 76
    const-string/jumbo v3, "store current status - cell - "

    .line 77
    .line 78
    .line 79
    :try_start_0
    iget-object v10, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 80
    .line 81
    iget v11, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 82
    .line 83
    const-string/jumbo v12, "cellularDataEnabled"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v10, v11, v9, v0, v12}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 90
    :try_start_1
    iget-object v11, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 91
    .line 92
    iget v12, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 93
    .line 94
    const-string v13, "WIFI"

    .line 95
    .line 96
    const-string v14, "allowWifi"

    .line 97
    .line 98
    invoke-virtual {v11, v12, v9, v13, v14}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 102
    :try_start_2
    iget-object v12, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 103
    .line 104
    iget v13, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 105
    .line 106
    const-string/jumbo v14, "usbTetheringEnabled"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v12, v13, v9, v0, v14}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 113
    :try_start_3
    iget-object v13, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 114
    .line 115
    iget v14, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 116
    .line 117
    const-string/jumbo v15, "wifiTetheringEnabled"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v13, v14, v9, v0, v15}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 124
    :try_start_4
    iget-object v14, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 125
    .line 126
    iget v15, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 127
    .line 128
    const-string/jumbo v8, "bluetoothTetheringEnabled"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v14, v15, v9, v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 135
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v3, "  wifi - "

    .line 144
    .line 145
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v3, "  usbTether - "

    .line 152
    .line 153
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v3, "  WifiTether - "

    .line 160
    .line 161
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v3, "  BtTether - "

    .line 168
    .line 169
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 180
    .line 181
    .line 182
    :goto_0
    move/from16 v19, v8

    .line 183
    .line 184
    move/from16 v23, v11

    .line 185
    .line 186
    move/from16 v27, v12

    .line 187
    .line 188
    move/from16 v31, v13

    .line 189
    .line 190
    move v13, v10

    .line 191
    goto :goto_a

    .line 192
    :catch_0
    move-exception v0

    .line 193
    goto :goto_9

    .line 194
    :goto_1
    const/4 v8, 0x1

    .line 195
    goto :goto_9

    .line 196
    :catch_1
    move-exception v0

    .line 197
    goto :goto_1

    .line 198
    :goto_2
    const/4 v8, 0x1

    .line 199
    :goto_3
    const/4 v13, 0x1

    .line 200
    goto :goto_9

    .line 201
    :catch_2
    move-exception v0

    .line 202
    goto :goto_2

    .line 203
    :goto_4
    const/4 v8, 0x1

    .line 204
    :goto_5
    const/4 v12, 0x1

    .line 205
    goto :goto_3

    .line 206
    :catch_3
    move-exception v0

    .line 207
    goto :goto_4

    .line 208
    :goto_6
    const/4 v8, 0x1

    .line 209
    :goto_7
    const/4 v11, 0x1

    .line 210
    goto :goto_5

    .line 211
    :catch_4
    move-exception v0

    .line 212
    goto :goto_6

    .line 213
    :goto_8
    const/4 v8, 0x1

    .line 214
    const/4 v10, 0x1

    .line 215
    goto :goto_7

    .line 216
    :catch_5
    move-exception v0

    .line 217
    goto :goto_8

    .line 218
    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    const-string/jumbo v14, "storeCurrentPolicy() failed "

    .line 221
    .line 222
    .line 223
    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    goto :goto_0

    .line 237
    :goto_a
    iget-object v10, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 238
    .line 239
    iget v12, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 240
    .line 241
    const-string/jumbo v15, "prevCellularData"

    .line 242
    .line 243
    .line 244
    const/4 v14, 0x0

    .line 245
    const-string v11, "DEX_POLICY"

    .line 246
    .line 247
    invoke-virtual/range {v10 .. v15}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 248
    .line 249
    .line 250
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 251
    .line 252
    iget v3, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 253
    .line 254
    const-string/jumbo v25, "prevWifi"

    .line 255
    .line 256
    .line 257
    const/16 v24, 0x0

    .line 258
    .line 259
    const-string v21, "DEX_POLICY"

    .line 260
    .line 261
    move-object/from16 v20, v0

    .line 262
    .line 263
    move/from16 v22, v3

    .line 264
    .line 265
    invoke-virtual/range {v20 .. v25}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 266
    .line 267
    .line 268
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 269
    .line 270
    iget v3, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 271
    .line 272
    const-string/jumbo v29, "prevUsbTethering"

    .line 273
    .line 274
    .line 275
    const/16 v28, 0x0

    .line 276
    .line 277
    const-string v25, "DEX_POLICY"

    .line 278
    .line 279
    move-object/from16 v24, v0

    .line 280
    .line 281
    move/from16 v26, v3

    .line 282
    .line 283
    invoke-virtual/range {v24 .. v29}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 284
    .line 285
    .line 286
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 287
    .line 288
    iget v3, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 289
    .line 290
    const-string/jumbo v33, "prevWifiTethering"

    .line 291
    .line 292
    .line 293
    const/16 v32, 0x0

    .line 294
    .line 295
    const-string v29, "DEX_POLICY"

    .line 296
    .line 297
    move-object/from16 v28, v0

    .line 298
    .line 299
    move/from16 v30, v3

    .line 300
    .line 301
    invoke-virtual/range {v28 .. v33}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 302
    .line 303
    .line 304
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 305
    .line 306
    iget v3, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 307
    .line 308
    const-string/jumbo v21, "prevBtTethering"

    .line 309
    .line 310
    .line 311
    const/16 v20, 0x0

    .line 312
    .line 313
    const-string v17, "DEX_POLICY"

    .line 314
    .line 315
    move-object/from16 v16, v0

    .line 316
    .line 317
    move/from16 v18, v3

    .line 318
    .line 319
    invoke-virtual/range {v16 .. v21}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 320
    .line 321
    .line 322
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    .line 323
    .line 324
    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 329
    .line 330
    iget-object v3, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    .line 331
    .line 332
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 337
    .line 338
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    .line 339
    .line 340
    .line 341
    move-result v13

    .line 342
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 343
    .line 344
    .line 345
    move-result v19

    .line 346
    iget-object v10, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 347
    .line 348
    iget v12, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 349
    .line 350
    const-string/jumbo v15, "prevDataStatus"

    .line 351
    .line 352
    .line 353
    const/4 v14, 0x0

    .line 354
    const-string v11, "DEX_POLICY"

    .line 355
    .line 356
    invoke-virtual/range {v10 .. v15}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 357
    .line 358
    .line 359
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 360
    .line 361
    iget v3, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 362
    .line 363
    const-string/jumbo v21, "prevWifiStatus"

    .line 364
    .line 365
    .line 366
    const/16 v20, 0x0

    .line 367
    .line 368
    const-string v17, "DEX_POLICY"

    .line 369
    .line 370
    move-object/from16 v16, v0

    .line 371
    .line 372
    move/from16 v18, v3

    .line 373
    .line 374
    invoke-virtual/range {v16 .. v21}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 375
    .line 376
    .line 377
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 378
    .line 379
    invoke-virtual {v0, v2, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 380
    .line 381
    .line 382
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 383
    .line 384
    invoke-virtual {v0, v2, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setCellularData(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 385
    .line 386
    .line 387
    :try_start_6
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mIWifipolicy:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 388
    .line 389
    invoke-interface {v0, v2, v9}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 390
    .line 391
    .line 392
    :goto_b
    const/4 v3, 0x1

    .line 393
    goto :goto_c

    .line 394
    :catch_6
    move-exception v0

    .line 395
    invoke-static {v6, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    .line 397
    .line 398
    goto :goto_b

    .line 399
    :goto_c
    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/dex/DexPolicy;->setEthernetOnlyApplied(Lcom/samsung/android/knox/ContextInfo;Z)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/dex/DexPolicy;->showEthernetOnlyNotification(Z)V

    .line 403
    .line 404
    .line 405
    goto/16 :goto_19

    .line 406
    .line 407
    :cond_3
    invoke-virtual {v1, v2, v9}, Lcom/android/server/enterprise/dex/DexPolicy;->setEthernetOnlyApplied(Lcom/samsung/android/knox/ContextInfo;Z)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v1, v9}, Lcom/android/server/enterprise/dex/DexPolicy;->showEthernetOnlyNotification(Z)V

    .line 411
    .line 412
    .line 413
    :try_start_7
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 414
    .line 415
    const-string/jumbo v8, "prevCellularData"

    .line 416
    .line 417
    .line 418
    invoke-virtual {v0, v9, v3, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 427
    .line 428
    .line 429
    move-result v8

    .line 430
    if-eqz v8, :cond_5

    .line 431
    .line 432
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v8

    .line 436
    check-cast v8, Ljava/lang/Boolean;

    .line 437
    .line 438
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 439
    .line 440
    .line 441
    move-result v8
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 442
    if-nez v8, :cond_4

    .line 443
    .line 444
    goto :goto_d

    .line 445
    :catch_7
    move-exception v0

    .line 446
    new-instance v8, Ljava/lang/StringBuilder;

    .line 447
    .line 448
    const-string/jumbo v10, "isPrevCellDataEnabled : failed "

    .line 449
    .line 450
    .line 451
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    invoke-static {v0, v8, v6}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    :cond_5
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 458
    .line 459
    const/4 v8, 0x1

    .line 460
    invoke-virtual {v0, v2, v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setCellularData(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 461
    .line 462
    .line 463
    :goto_d
    :try_start_8
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 464
    .line 465
    const-string/jumbo v8, "prevWifi"

    .line 466
    .line 467
    .line 468
    invoke-virtual {v0, v9, v3, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 477
    .line 478
    .line 479
    move-result v8

    .line 480
    if-eqz v8, :cond_7

    .line 481
    .line 482
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v8

    .line 486
    check-cast v8, Ljava/lang/Boolean;

    .line 487
    .line 488
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 489
    .line 490
    .line 491
    move-result v8
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 492
    if-nez v8, :cond_6

    .line 493
    .line 494
    goto :goto_e

    .line 495
    :catch_8
    move-exception v0

    .line 496
    new-instance v8, Ljava/lang/StringBuilder;

    .line 497
    .line 498
    const-string/jumbo v10, "isPrevWifiEnabled : failed "

    .line 499
    .line 500
    .line 501
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    invoke-static {v0, v8, v6}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    :cond_7
    :try_start_9
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mIWifipolicy:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 508
    .line 509
    const/4 v8, 0x1

    .line 510
    invoke-interface {v0, v2, v8}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    .line 511
    .line 512
    .line 513
    goto :goto_e

    .line 514
    :catch_9
    move-exception v0

    .line 515
    invoke-static {v6, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 516
    .line 517
    .line 518
    :goto_e
    :try_start_a
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 519
    .line 520
    const-string/jumbo v5, "prevWifiTethering"

    .line 521
    .line 522
    .line 523
    invoke-virtual {v0, v9, v3, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 532
    .line 533
    .line 534
    move-result v5

    .line 535
    if-eqz v5, :cond_9

    .line 536
    .line 537
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v5

    .line 541
    check-cast v5, Ljava/lang/Boolean;

    .line 542
    .line 543
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 544
    .line 545
    .line 546
    move-result v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 547
    if-nez v5, :cond_8

    .line 548
    .line 549
    goto :goto_f

    .line 550
    :catch_a
    move-exception v0

    .line 551
    new-instance v5, Ljava/lang/StringBuilder;

    .line 552
    .line 553
    const-string/jumbo v8, "isPrevWifiTetheringEnabled : failed "

    .line 554
    .line 555
    .line 556
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    invoke-static {v0, v5, v6}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    :cond_9
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 563
    .line 564
    const/4 v5, 0x1

    .line 565
    invoke-virtual {v0, v2, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setWifiTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 566
    .line 567
    .line 568
    :goto_f
    :try_start_b
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 569
    .line 570
    const-string/jumbo v5, "prevUsbTethering"

    .line 571
    .line 572
    .line 573
    invoke-virtual {v0, v9, v3, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 582
    .line 583
    .line 584
    move-result v5

    .line 585
    if-eqz v5, :cond_b

    .line 586
    .line 587
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v5

    .line 591
    check-cast v5, Ljava/lang/Boolean;

    .line 592
    .line 593
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 594
    .line 595
    .line 596
    move-result v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 597
    if-nez v5, :cond_a

    .line 598
    .line 599
    goto :goto_10

    .line 600
    :catch_b
    move-exception v0

    .line 601
    new-instance v5, Ljava/lang/StringBuilder;

    .line 602
    .line 603
    const-string/jumbo v8, "isPrevUsbTetheringEnabled : failed "

    .line 604
    .line 605
    .line 606
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    invoke-static {v0, v5, v6}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    :cond_b
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 613
    .line 614
    const/4 v5, 0x1

    .line 615
    invoke-virtual {v0, v2, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setUsbTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 616
    .line 617
    .line 618
    :goto_10
    :try_start_c
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 619
    .line 620
    const-string/jumbo v5, "prevBtTethering"

    .line 621
    .line 622
    .line 623
    invoke-virtual {v0, v9, v3, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 632
    .line 633
    .line 634
    move-result v5

    .line 635
    if-eqz v5, :cond_d

    .line 636
    .line 637
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v5

    .line 641
    check-cast v5, Ljava/lang/Boolean;

    .line 642
    .line 643
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 644
    .line 645
    .line 646
    move-result v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 647
    if-nez v5, :cond_c

    .line 648
    .line 649
    goto :goto_11

    .line 650
    :catch_c
    move-exception v0

    .line 651
    new-instance v5, Ljava/lang/StringBuilder;

    .line 652
    .line 653
    const-string/jumbo v8, "isPrevBtTetheringEnabled : failed "

    .line 654
    .line 655
    .line 656
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    invoke-static {v0, v5, v6}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 660
    .line 661
    .line 662
    :cond_d
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 663
    .line 664
    const/4 v5, 0x1

    .line 665
    invoke-virtual {v0, v2, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setBluetoothTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 666
    .line 667
    .line 668
    :goto_11
    const-string/jumbo v5, "restoreNetworkStatus : failed "

    .line 669
    .line 670
    .line 671
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    .line 672
    .line 673
    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    move-object v7, v0

    .line 678
    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 679
    .line 680
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    .line 681
    .line 682
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    move-object v4, v0

    .line 687
    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 688
    .line 689
    :try_start_d
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 690
    .line 691
    iget v8, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 692
    .line 693
    const-string/jumbo v10, "prevDataStatus"

    .line 694
    .line 695
    .line 696
    invoke-virtual {v0, v8, v9, v3, v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    .line 697
    .line 698
    .line 699
    move-result v8
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    .line 700
    :try_start_e
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 701
    .line 702
    iget v1, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 703
    .line 704
    const-string/jumbo v2, "prevWifiStatus"

    .line 705
    .line 706
    .line 707
    invoke-virtual {v0, v1, v9, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    .line 708
    .line 709
    .line 710
    move-result v9
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    .line 711
    goto :goto_14

    .line 712
    :catch_d
    move-exception v0

    .line 713
    goto :goto_13

    .line 714
    :goto_12
    move v8, v9

    .line 715
    goto :goto_13

    .line 716
    :catch_e
    move-exception v0

    .line 717
    goto :goto_12

    .line 718
    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 719
    .line 720
    const-string/jumbo v2, "restoreNetworkStatus() failed "

    .line 721
    .line 722
    .line 723
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    .line 735
    .line 736
    :goto_14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 737
    .line 738
    .line 739
    move-result-wide v1

    .line 740
    if-eqz v8, :cond_e

    .line 741
    .line 742
    const/4 v3, 0x1

    .line 743
    :try_start_f
    invoke-virtual {v7, v3}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 744
    .line 745
    .line 746
    goto :goto_15

    .line 747
    :catchall_0
    move-exception v0

    .line 748
    goto :goto_18

    .line 749
    :catch_f
    move-exception v0

    .line 750
    goto :goto_16

    .line 751
    :cond_e
    const/4 v3, 0x1

    .line 752
    :goto_15
    if-eqz v9, :cond_f

    .line 753
    .line 754
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 755
    .line 756
    .line 757
    goto :goto_17

    .line 758
    :goto_16
    :try_start_10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 759
    .line 760
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 761
    .line 762
    .line 763
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v4

    .line 767
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    .line 769
    .line 770
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v3

    .line 774
    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    .line 776
    .line 777
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 778
    .line 779
    .line 780
    :cond_f
    :goto_17
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 781
    .line 782
    .line 783
    goto :goto_19

    .line 784
    :goto_18
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 785
    .line 786
    .line 787
    throw v0

    .line 788
    :goto_19
    return-void
.end method

.method public final disablePackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 7

    .line 1
    :try_start_0
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy$1()Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 8
    .line 9
    const-string/jumbo v5, "controlState"

    .line 10
    .line 11
    .line 12
    const-string v2, "APPLICATION"

    .line 13
    .line 14
    const-string/jumbo v3, "packageName"

    .line 15
    .line 16
    .line 17
    move v1, v6

    .line 18
    move-object v4, p2

    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, -0x1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    .line 27
    move v0, v2

    .line 28
    :cond_0
    const/4 v1, 0x2

    .line 29
    and-int/2addr v0, v1

    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy$1()Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, p1, p2, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy$1()Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy$1()Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const/4 p1, 0x1

    .line 51
    invoke-virtual {p0, v6, p2, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updatePackageControlStateForDex(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string/jumbo p2, "setControlStateMask : failed "

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string p2, "DexPolicyService"

    .line 65
    .line 66
    invoke-static {p0, p1, p2}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    :goto_0
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 3
    .line 4
    iget-object v2, v0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string v3, "android.permission.DUMP"

    .line 7
    .line 8
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const-string v0, "Permission Denial: can\'t dump DexPolicy"

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, v0, Lcom/android/server/enterprise/dex/DexPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 21
    .line 22
    const-string/jumbo v13, "screenTimeoutChangeAllowed"

    .line 23
    .line 24
    .line 25
    const-string/jumbo v14, "useDexStationMacAddress"

    .line 26
    .line 27
    .line 28
    const-string v2, "adminUid"

    .line 29
    .line 30
    const-string/jumbo v3, "dexDisabled"

    .line 31
    .line 32
    .line 33
    const-string/jumbo v4, "ethernetOnlyEnabled"

    .line 34
    .line 35
    .line 36
    const-string/jumbo v5, "prevCellularData"

    .line 37
    .line 38
    .line 39
    const-string/jumbo v6, "prevWifi"

    .line 40
    .line 41
    .line 42
    const-string/jumbo v7, "prevWifiTethering"

    .line 43
    .line 44
    .line 45
    const-string/jumbo v8, "prevUsbTethering"

    .line 46
    .line 47
    .line 48
    const-string/jumbo v9, "prevBtTethering"

    .line 49
    .line 50
    .line 51
    const-string/jumbo v10, "prevDataStatus"

    .line 52
    .line 53
    .line 54
    const-string/jumbo v11, "prevWifiStatus"

    .line 55
    .line 56
    .line 57
    const-string/jumbo v12, "ethernetOnlyApplied"

    .line 58
    .line 59
    .line 60
    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const/4 v3, 0x0

    .line 65
    const-string v4, "DEX_POLICY"

    .line 66
    .line 67
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final enablePackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 8

    .line 1
    :try_start_0
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy$1()Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v7, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy$1()Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 15
    .line 16
    const-string/jumbo v3, "packageName"

    .line 17
    .line 18
    .line 19
    const-string/jumbo v5, "controlStateOnDex"

    .line 20
    .line 21
    .line 22
    const-string v2, "APPLICATION"

    .line 23
    .line 24
    move v1, v6

    .line 25
    move-object v4, p2

    .line 26
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, -0x1

    .line 31
    if-ne v0, v1, :cond_1

    .line 32
    .line 33
    :cond_0
    move v0, v7

    .line 34
    :cond_1
    const/4 v1, 0x2

    .line 35
    and-int/2addr v0, v1

    .line 36
    if-ne v0, v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy$1()Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy$1()Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy$1()Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0, v6, p2, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updatePackageControlStateForDex(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string/jumbo p2, "setControlStateMask : failed "

    .line 66
    .line 67
    .line 68
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string p2, "DexPolicyService"

    .line 72
    .line 73
    invoke-static {p0, p1, p2}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_2
    return-void
.end method

.method public final enforceEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 6
    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "DEX_POLICY"

    .line 11
    .line 12
    const-string/jumbo v5, "ethernetOnlyEnabled"

    .line 13
    .line 14
    .line 15
    move v3, p2

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->isDexActivated(Landroid/content/Context;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    const/4 p2, 0x1

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/dex/DexPolicy;->applyEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p2, 0x0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/dex/DexPolicy;->applyEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return v0
.end method

.method public final enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mInjector:Lcom/android/server/enterprise/dex/DexPolicy$Injector;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/enterprise/dex/DexPolicy$Injector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_DEX"

    .line 20
    .line 21
    .line 22
    filled-new-array {v1}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public final enforceVirtualMacAddress(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 6
    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "DEX_POLICY"

    .line 11
    .line 12
    const-string/jumbo v5, "useDexStationMacAddress"

    .line 13
    .line 14
    .line 15
    move v3, p2

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public final enterDexModeSetPackageState()V
    .locals 8

    .line 1
    const-string v0, "adminUid"

    .line 2
    .line 3
    const-string/jumbo v1, "enterDexModeSetPackageState"

    .line 4
    .line 5
    .line 6
    const-string v2, "DexPolicyService"

    .line 7
    .line 8
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    :try_start_0
    filled-new-array {v0}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v5, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 20
    .line 21
    const-string v6, "ADMIN"

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    invoke-virtual {v5, v7, v7, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-nez v5, :cond_2

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_2

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Landroid/content/ContentValues;

    .line 51
    .line 52
    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    if-nez v5, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    invoke-direct {v6, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromDisableList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-eqz v7, :cond_0

    .line 81
    .line 82
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    check-cast v7, Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p0, v6, v7}, Lcom/android/server/enterprise/dex/DexPolicy;->disablePackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    goto :goto_5

    .line 94
    :catch_0
    move-exception p0

    .line 95
    goto :goto_3

    .line 96
    :cond_2
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 97
    .line 98
    .line 99
    goto :goto_4

    .line 100
    :goto_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string/jumbo v1, "enterDexModeSetPackageState : failed "

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :goto_4
    return-void

    .line 130
    :goto_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 131
    .line 132
    .line 133
    throw p0
.end method

.method public final exitDexModeSetPackageState()V
    .locals 9

    .line 1
    const-string v0, "adminUid"

    .line 2
    .line 3
    const-string/jumbo v1, "exitDexModeSetPackageState : Admin list size() : "

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "exitDexModeSetPackageState"

    .line 7
    .line 8
    .line 9
    const-string v3, "DexPolicyService"

    .line 10
    .line 11
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v4

    .line 18
    :try_start_0
    filled-new-array {v0}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget-object v6, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 23
    .line 24
    const-string v7, "ADMIN"

    .line 25
    .line 26
    const/4 v8, 0x0

    .line 27
    invoke-virtual {v6, v8, v8, v7, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-instance v6, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    check-cast v2, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Landroid/content/ContentValues;

    .line 73
    .line 74
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    if-nez v2, :cond_0

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    invoke-direct {v6, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromDisableList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    const/4 v7, 0x0

    .line 95
    invoke-virtual {p0, v6, v7}, Lcom/android/server/enterprise/dex/DexPolicy;->writePackageDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 96
    .line 97
    .line 98
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    if-eqz v8, :cond_1

    .line 107
    .line 108
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    check-cast v8, Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {p0, v6, v8}, Lcom/android/server/enterprise/dex/DexPolicy;->enablePackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :catchall_0
    move-exception p0

    .line 119
    goto :goto_5

    .line 120
    :catch_0
    move-exception p0

    .line 121
    goto :goto_3

    .line 122
    :cond_1
    invoke-virtual {p0, v6, v2}, Lcom/android/server/enterprise/dex/DexPolicy;->writePackageDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_2
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 127
    .line 128
    .line 129
    goto :goto_4

    .line 130
    :goto_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string/jumbo v1, "exitDexModeSetPackageState : failed "

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :goto_4
    return-void

    .line 160
    :goto_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 161
    .line 162
    .line 163
    throw p0
.end method

.method public final getApplicationPolicy$1()Lcom/android/server/enterprise/application/ApplicationPolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mApplicationPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mInjector:Lcom/android/server/enterprise/dex/DexPolicy$Injector;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string/jumbo v0, "application_policy"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mApplicationPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mApplicationPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 22
    .line 23
    return-object p0
.end method

.method public final getPackagesFromDisableList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 3

    .line 1
    const-string v0, "DexPolicyService"

    .line 2
    .line 3
    const-string/jumbo v1, "getPackagesFromDisableList"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mInjector:Lcom/android/server/enterprise/dex/DexPolicy$Injector;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/enterprise/dex/DexPolicy$Injector;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 24
    .line 25
    new-instance v1, Ljava/util/ArrayList;

    .line 26
    .line 27
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_DEX"

    .line 28
    .line 29
    .line 30
    filled-new-array {v2}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy$1()Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy$1()Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableListForDex(I)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    return-object p0
.end method

.method public final getVirtualMacAddress()Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "DexPolicyService"

    .line 2
    .line 3
    const-string/jumbo v1, "getVirtualMacAddress : failed "

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "getVirtualMacAddress : "

    .line 7
    .line 8
    .line 9
    iget-object v3, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mInjector:Lcom/android/server/enterprise/dex/DexPolicy$Injector;

    .line 14
    .line 15
    iget-object v3, v3, Lcom/android/server/enterprise/dex/DexPolicy$Injector;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iput-object v3, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 22
    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 24
    .line 25
    new-instance v3, Ljava/util/ArrayList;

    .line 26
    .line 27
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_DEX"

    .line 28
    .line 29
    .line 30
    filled-new-array {v4}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 45
    .line 46
    .line 47
    move-result-wide v3

    .line 48
    const-string p0, ""

    .line 49
    .line 50
    :try_start_0
    const-string/jumbo v5, "network_management"

    .line 51
    .line 52
    .line 53
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-static {v5}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    const-string/jumbo v6, "eth0"

    .line 62
    .line 63
    .line 64
    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v5}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto :goto_2

    .line 93
    :catch_0
    move-exception v2

    .line 94
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :goto_1
    return-object p0

    .line 118
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 119
    .line 120
    .line 121
    throw p0
.end method

.method public final isDexActivated()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/enterprise/utils/Utils;->isDexActivated(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isDexDisabled()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    .line 4
    const-string v1, "DEX_POLICY"

    .line 5
    .line 6
    const-string/jumbo v2, "dexDisabled"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string/jumbo v2, "isDexDisabled : failed "

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v2, "DexPolicyService"

    .line 47
    .line 48
    invoke-static {p0, v1, v2}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    return v0
.end method

.method public final isEthernetOnlyEnforced()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    .line 4
    const-string v1, "DEX_POLICY"

    .line 5
    .line 6
    const-string/jumbo v2, "ethernetOnlyEnabled"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string/jumbo v2, "isEthernetOnlyEnforced : failed "

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v2, "DexPolicyService"

    .line 47
    .line 48
    invoke-static {p0, v1, v2}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    return v0
.end method

.method public final isScreenTimeoutChangeAllowed()Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    .line 4
    const-string v1, "DEX_POLICY"

    .line 5
    .line 6
    const-string/jumbo v2, "screenTimeoutChangeAllowed"

    .line 7
    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    move v0, v3

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string/jumbo v2, "isScreenTimeoutChangeAllowed : failed "

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v2, "DexPolicyService"

    .line 48
    .line 49
    invoke-static {p0, v1, v2}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    return v0
.end method

.method public final isVirtualMacAddressEnforced()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    .line 4
    const-string v1, "DEX_POLICY"

    .line 5
    .line 6
    const-string/jumbo v2, "useDexStationMacAddress"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string/jumbo v2, "isVirtualMacAddressEnforced : failed "

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v2, "DexPolicyService"

    .line 47
    .line 48
    invoke-static {p0, v1, v2}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    return v0
.end method

.method public final notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminRemoved(I)V
    .locals 0

    .line 1
    sget-boolean p1, Lcom/android/server/enterprise/dex/DexPolicy;->isBlockerRegistered:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexDisabled()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->unRegisterDexBlocker()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->isEthernetOnlyApplied(Lcom/android/server/enterprise/storage/EdmStorageProvider;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->showEthernetOnlyNotification(Z)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final registerDexBlocker()V
    .locals 5

    .line 1
    const-string v0, "DexPolicyService"

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const-string/jumbo v4, "desktopmode"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->blocker:Lcom/android/server/enterprise/dex/DexPolicy$1;

    .line 23
    .line 24
    invoke-virtual {v3, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    sput-boolean p0, Lcom/android/server/enterprise/dex/DexPolicy;->isBlockerRegistered:Z

    .line 29
    .line 30
    const-string/jumbo p0, "registerDexBlocker was registered"

    .line 31
    .line 32
    .line 33
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    const-string/jumbo p0, "registerDexBlocker was failed"

    .line 38
    .line 39
    .line 40
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final removePackageFromDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 4

    .line 1
    const-string/jumbo v0, "removePackageFromDisableList"

    .line 2
    .line 3
    .line 4
    const-string v1, "DexPolicyService"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromDisableList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    const-string/jumbo p0, "removePackageFromDisableList not find blocked package name"

    .line 24
    .line 25
    .line 26
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x4

    .line 30
    return p0

    .line 31
    :cond_0
    const/4 v2, 0x1

    .line 32
    :try_start_0
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/dex/DexPolicy;->writePackageDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget-object v3, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->isDexActivated(Landroid/content/Context;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/dex/DexPolicy;->enablePackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    xor-int/lit8 p0, v0, 0x1

    .line 54
    .line 55
    return p0

    .line 56
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string/jumbo p2, "removePackageFromDisableList : failed "

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p0, p1, v1}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return v2
.end method

.method public final setDexDisabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 6
    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "DEX_POLICY"

    .line 11
    .line 12
    const-string/jumbo v5, "dexDisabled"

    .line 13
    .line 14
    .line 15
    move v3, p2

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    sget-boolean v0, Lcom/android/server/enterprise/dex/DexPolicy;->isBlockerRegistered:Z

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->registerDexBlocker()V

    .line 29
    .line 30
    .line 31
    :cond_0
    sget-boolean p2, Lcom/android/server/enterprise/dex/DexPolicy;->isBlockerRegistered:Z

    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexDisabled()Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->unRegisterDexBlocker()V

    .line 44
    .line 45
    .line 46
    :cond_1
    return p1
.end method

.method public final setEthernetOnlyApplied(Lcom/samsung/android/knox/ContextInfo;Z)V
    .locals 8

    .line 1
    const-string/jumbo v0, "setEthernetOnlyApplied - "

    .line 2
    .line 3
    .line 4
    const-string v1, "DexPolicyService"

    .line 5
    .line 6
    invoke-static {v0, v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 10
    .line 11
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 12
    .line 13
    const-string v3, "DEX_POLICY"

    .line 14
    .line 15
    const-string/jumbo v7, "ethernetOnlyApplied"

    .line 16
    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    move v5, p2

    .line 20
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final showEthernetOnlyNotification(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const v1, 0x1040467

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-string/jumbo v2, "notification"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/app/NotificationManager;

    .line 20
    .line 21
    const-string v2, "DexPolicyService"

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    const-string p0, "Failed to get NotificationManager"

    .line 26
    .line 27
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    const/16 v5, 0x11cd

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    :try_start_0
    new-instance p1, Landroid/app/Notification$Builder;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    const-string v6, "MDM_DEXPOLICY"

    .line 44
    .line 45
    invoke-direct {p1, p0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-wide/16 v6, 0x0

    .line 49
    .line 50
    invoke-virtual {p1, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 51
    .line 52
    .line 53
    const p0, 0x1080722

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 57
    .line 58
    .line 59
    const-string p0, "Dex Ethernet only mode"

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 65
    .line 66
    .line 67
    new-instance p0, Landroid/app/Notification$BigTextStyle;

    .line 68
    .line 69
    invoke-direct {p0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 77
    .line 78
    .line 79
    const/4 p0, 0x2

    .line 80
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 81
    .line 82
    .line 83
    const/4 p0, 0x1

    .line 84
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {v1, v5, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {v1, v5}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catch_0
    const-string/jumbo p0, "showEthernetOnlyNotification was failed"

    .line 100
    .line 101
    .line 102
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final systemReady()V
    .locals 0

    .line 1
    return-void
.end method

.method public final unRegisterDexBlocker()V
    .locals 5

    .line 1
    const-string v0, "DexPolicyService"

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const-string/jumbo v4, "desktopmode"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->blocker:Lcom/android/server/enterprise/dex/DexPolicy$1;

    .line 23
    .line 24
    invoke-virtual {v3, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    sput-boolean p0, Lcom/android/server/enterprise/dex/DexPolicy;->isBlockerRegistered:Z

    .line 29
    .line 30
    const-string/jumbo p0, "registerDexBlocker was unregistered"

    .line 31
    .line 32
    .line 33
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    const-string/jumbo p0, "unRegisterDexBlocker was failed"

    .line 38
    .line 39
    .line 40
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final writePackageDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 9

    .line 1
    const-string v0, "adminUid"

    .line 2
    .line 3
    const-string v1, "DexPolicyService"

    .line 4
    .line 5
    const-string v2, "DEX_POLICY"

    .line 6
    .line 7
    const-string/jumbo v3, "writePackageList(dexApplicationDisableList) : insert : ret : "

    .line 8
    .line 9
    .line 10
    const-string/jumbo v4, "writePackageList(dexApplicationDisableList) : update : ret : "

    .line 11
    .line 12
    .line 13
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    :try_start_0
    new-instance v6, Landroid/content/ContentValues;

    .line 17
    .line 18
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 26
    .line 27
    .line 28
    new-instance v7, Landroid/content/ContentValues;

    .line 29
    .line 30
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {p2}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    const-string/jumbo v8, "dexApplicationDisableList"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v7, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 41
    .line 42
    .line 43
    iget-object p2, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 44
    .line 45
    invoke-virtual {p2, v2, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-lez p2, :cond_0

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 52
    .line 53
    invoke-virtual {p0, v2, v7, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    new-instance p0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catch_0
    move-exception p0

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {v7, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 83
    .line 84
    invoke-virtual {p0, v2, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    new-instance p0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string/jumbo p2, "writePackageList : failed "

    .line 107
    .line 108
    .line 109
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-static {p0, p1, v1}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :goto_1
    return v5
.end method
