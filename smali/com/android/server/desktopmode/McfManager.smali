.class public final Lcom/android/server/desktopmode/McfManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final mScanFilterData:[B

.field public static final mScanFilterDataMask:[B


# instance fields
.field public final mBleAdapterCallback:Lcom/android/server/desktopmode/McfManager$3;

.field public final mBleAdvertiserServiceManager:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

.field public mBleAdvertiserServiceTimeout:J

.field public final mBleScanCallback:Lcom/android/server/desktopmode/McfManager$5;

.field public mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

.field public mBleScannerState:Ljava/lang/String;

.field public mBleStartScanReason:I

.field public final mBroadcastReceiver:Lcom/android/server/desktopmode/McfManager$1;

.field public final mContext:Landroid/content/Context;

.field public mIsRequestingBindMcfAdapter:Z

.field public mLastBleScanFailedErrorCode:I

.field public mLastBleScanResult:Ljava/lang/String;

.field public mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

.field public final mMcfAdapterListener:Lcom/android/server/desktopmode/McfManager$4;

.field public mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

.field public final mMcfHandler:Lcom/android/server/desktopmode/McfManager$McfHandler;

.field public mRegisterIntent:Z

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mStateListener:Lcom/android/server/desktopmode/McfManager$2;

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mWakeLockTimeout:J

.field public final mWirelessDeXBleAddressSettingChangedListener:Lcom/android/server/desktopmode/McfManager$6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lcom/android/server/desktopmode/McfManager;->mScanFilterData:[B

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/android/server/desktopmode/McfManager;->mScanFilterDataMask:[B

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 1
        0x42t
        0x4t
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
        0x0t
        0x8t
    .end array-data

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    nop

    .line 29
    :array_1
    .array-data 1
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x8t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "BLE_SCANNER_STATE_MCF_ADAPTER_UNBIND"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mBleScannerState:Ljava/lang/String;

    .line 7
    .line 8
    const-wide/16 v0, -0x1

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/android/server/desktopmode/McfManager;->mBleAdvertiserServiceTimeout:J

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/android/server/desktopmode/McfManager;->mIsRequestingBindMcfAdapter:Z

    .line 14
    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    iput-wide v1, p0, Lcom/android/server/desktopmode/McfManager;->mWakeLockTimeout:J

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/android/server/desktopmode/McfManager;->mRegisterIntent:Z

    .line 20
    .line 21
    new-instance v0, Lcom/android/server/desktopmode/McfManager$1;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/McfManager$1;-><init>(Lcom/android/server/desktopmode/McfManager;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mBroadcastReceiver:Lcom/android/server/desktopmode/McfManager$1;

    .line 27
    .line 28
    new-instance v0, Lcom/android/server/desktopmode/McfManager$2;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/McfManager$2;-><init>(Lcom/android/server/desktopmode/McfManager;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lcom/android/server/desktopmode/McfManager$3;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/McfManager$3;-><init>(Lcom/android/server/desktopmode/McfManager;)V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/android/server/desktopmode/McfManager;->mBleAdapterCallback:Lcom/android/server/desktopmode/McfManager$3;

    .line 39
    .line 40
    new-instance v1, Lcom/android/server/desktopmode/McfManager$4;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/McfManager$4;-><init>(Lcom/android/server/desktopmode/McfManager;)V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/android/server/desktopmode/McfManager;->mMcfAdapterListener:Lcom/android/server/desktopmode/McfManager$4;

    .line 46
    .line 47
    new-instance v1, Lcom/android/server/desktopmode/McfManager$5;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/McfManager$5;-><init>(Lcom/android/server/desktopmode/McfManager;)V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lcom/android/server/desktopmode/McfManager;->mBleScanCallback:Lcom/android/server/desktopmode/McfManager$5;

    .line 53
    .line 54
    new-instance v1, Lcom/android/server/desktopmode/McfManager$6;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/McfManager$6;-><init>(Lcom/android/server/desktopmode/McfManager;)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iput-object v2, p0, Lcom/android/server/desktopmode/McfManager;->mResolver:Landroid/content/ContentResolver;

    .line 66
    .line 67
    new-instance v2, Lcom/android/server/desktopmode/McfManager$McfHandler;

    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-direct {v2, p0, p2}, Lcom/android/server/desktopmode/McfManager$McfHandler;-><init>(Lcom/android/server/desktopmode/McfManager;Landroid/os/Looper;)V

    .line 74
    .line 75
    .line 76
    iput-object v2, p0, Lcom/android/server/desktopmode/McfManager;->mMcfHandler:Lcom/android/server/desktopmode/McfManager$McfHandler;

    .line 77
    .line 78
    iput-object p3, p0, Lcom/android/server/desktopmode/McfManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 79
    .line 80
    check-cast p3, Lcom/android/server/desktopmode/StateManager;

    .line 81
    .line 82
    invoke-virtual {p3, v0}, Lcom/android/server/desktopmode/StateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p4, v1}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 86
    .line 87
    .line 88
    iput-object p5, p0, Lcom/android/server/desktopmode/McfManager;->mBleAdvertiserServiceManager:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    .line 89
    .line 90
    const-string/jumbo p2, "power"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Landroid/os/PowerManager;

    .line 98
    .line 99
    const/4 p2, 0x1

    .line 100
    const-string p3, "DesktopMode:McfManager"

    .line 101
    .line 102
    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 107
    .line 108
    return-void
.end method

.method public static bleStartScanReasonToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string v0, "Unknown="

    .line 5
    .line 6
    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    const-string p0, "BLE_START_SCAN_REASON_NEARBY_SCANNING_CHANGED"

    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_1
    const-string p0, "BLE_START_SCAN_REASON_PACKAGE_STATE_CHANGED"

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_2
    const-string p0, "BLE_START_SCAN_REASON_BLUETOOTH_STATUS_CHANGED"

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_3
    const-string p0, "BLE_START_SCAN_REASON_AIRPLANE_MODE_CHANGED"

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_4
    const-string p0, "BLE_START_SCAN_REASON_DEX_BLE_ADDRESS_CHANGED"

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_5
    const-string p0, "BLE_START_SCAN_REASON_BOOT_COMPLETE"

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isNearbyScanningOn(Landroid/content/Context;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string/jumbo v1, "nearby_scanning_enabled"

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "SettingNotFoundException "

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string v1, "[DMS]McfManager"

    .line 40
    .line 41
    invoke-static {v1, p0}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return v0
.end method


# virtual methods
.method public final bleMacAddressListExists()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager;->mResolver:Landroid/content/ContentResolver;

    .line 2
    .line 3
    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    .line 4
    .line 5
    const-string/jumbo v1, "ble_mac_address_list"

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p0, v1, v2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo v1, "bleMacAddressListExists bleMacAddress="

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "[DMS]McfManager"

    .line 33
    .line 34
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    if-eqz p0, :cond_1

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 p0, 0x0

    .line 42
    :goto_0
    return p0
.end method

.method public final initialize(I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/desktopmode/McfManager;->bleMacAddressListExists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/server/desktopmode/McfManager;->mRegisterIntent:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const-string v2, "[DMS]McfManager"

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const-string/jumbo v0, "registerIntent"

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/desktopmode/McfManager;->mRegisterIntent:Z

    .line 25
    .line 26
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 27
    .line 28
    const-string/jumbo v3, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    .line 29
    .line 30
    .line 31
    const-string/jumbo v4, "com.samsung.android.nearbyscanning"

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v3, v4}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v3, p0, Lcom/android/server/desktopmode/McfManager;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    iget-object v4, p0, Lcom/android/server/desktopmode/McfManager;->mBroadcastReceiver:Lcom/android/server/desktopmode/McfManager$1;

    .line 41
    .line 42
    const/4 v5, 0x2

    .line 43
    invoke-virtual {v3, v4, v0, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    .line 47
    .line 48
    if-nez v0, :cond_4

    .line 49
    .line 50
    iget-boolean v0, p0, Lcom/android/server/desktopmode/McfManager;->mIsRequestingBindMcfAdapter:Z

    .line 51
    .line 52
    if-nez v0, :cond_4

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/android/server/desktopmode/McfManager;->isNearbyScanningOn(Landroid/content/Context;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    const/16 v0, 0x3e9

    .line 63
    .line 64
    if-ne p1, v0, :cond_2

    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v3, "airplane_mode_on"

    .line 75
    .line 76
    const/4 v4, 0x0

    .line 77
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_4

    .line 82
    .line 83
    :cond_2
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string/jumbo v3, "bindMcfAdapter reason="

    .line 90
    .line 91
    .line 92
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {p1}, Lcom/android/server/desktopmode/McfManager;->bleStartScanReasonToString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v2, v0}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    iput p1, p0, Lcom/android/server/desktopmode/McfManager;->mBleStartScanReason:I

    .line 110
    .line 111
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mContext:Landroid/content/Context;

    .line 112
    .line 113
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mMcfAdapterListener:Lcom/android/server/desktopmode/McfManager$4;

    .line 114
    .line 115
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/McfAdapter;->bindService(Landroid/content/Context;Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_4

    .line 120
    .line 121
    iput-boolean v1, p0, Lcom/android/server/desktopmode/McfManager;->mIsRequestingBindMcfAdapter:Z

    .line 122
    .line 123
    :cond_4
    return-void
.end method

.method public final tryBleAdvertiserServiceUnbind(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/android/server/desktopmode/McfManager;->mBleAdvertiserServiceTimeout:J

    .line 2
    .line 3
    cmp-long v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v1, "tryBleAdvertiserServiceUnbind timeout changed "

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "[DMS]McfManager"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iput-wide p1, p0, Lcom/android/server/desktopmode/McfManager;->mBleAdvertiserServiceTimeout:J

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    const-wide/16 v0, 0x0

    .line 44
    .line 45
    iput-wide v0, p0, Lcom/android/server/desktopmode/McfManager;->mWakeLockTimeout:J

    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    const-wide/16 v0, 0x2710

    .line 63
    .line 64
    add-long/2addr v0, p1

    .line 65
    iput-wide v0, p0, Lcom/android/server/desktopmode/McfManager;->mWakeLockTimeout:J

    .line 66
    .line 67
    iget-object v2, p0, Lcom/android/server/desktopmode/McfManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 68
    .line 69
    invoke-virtual {v2, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 70
    .line 71
    .line 72
    :cond_3
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager;->mMcfHandler:Lcom/android/server/desktopmode/McfManager$McfHandler;

    .line 73
    .line 74
    const/16 v0, 0x65

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 77
    .line 78
    .line 79
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final tryBleScannerStartScan([Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/samsung/android/mcf/McfBleAdapter;->getBleScanner()Lcom/samsung/android/mcf/ble/BleScanner;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    .line 10
    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    new-instance v0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->setTimeout(I)Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->build()Lcom/samsung/android/mcf/ble/BleScanSettings;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v3, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v4, "[DMS]McfManager"

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    array-length v5, p1

    .line 41
    :goto_0
    if-ge v1, v5, :cond_2

    .line 42
    .line 43
    aget-object v6, p1, v1

    .line 44
    .line 45
    invoke-static {v6}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    if-eqz v7, :cond_1

    .line 50
    .line 51
    sget-boolean v7, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 52
    .line 53
    if-eqz v7, :cond_0

    .line 54
    .line 55
    new-instance v7, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string/jumbo v8, "tryBleScannerStartScan valid splitBleMac="

    .line 58
    .line 59
    .line 60
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-static {v4, v7}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    new-instance v7, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    .line 74
    .line 75
    invoke-direct {v7}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;-><init>()V

    .line 76
    .line 77
    .line 78
    sget-object v8, Lcom/android/server/desktopmode/McfManager;->mScanFilterData:[B

    .line 79
    .line 80
    sget-object v9, Lcom/android/server/desktopmode/McfManager;->mScanFilterDataMask:[B

    .line 81
    .line 82
    const/16 v10, 0x75

    .line 83
    .line 84
    invoke-virtual {v7, v10, v8, v9}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setManufacturerData(I[B[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7, v6}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->build()Lcom/samsung/android/mcf/ble/BleScanFilter;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string/jumbo v8, "tryBleScannerStartScan invalid splitBleMac="

    .line 104
    .line 105
    .line 106
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-static {v4, v6}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-nez p1, :cond_4

    .line 127
    .line 128
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    .line 129
    .line 130
    iget-object v1, p0, Lcom/android/server/desktopmode/McfManager;->mBleScanCallback:Lcom/android/server/desktopmode/McfManager$5;

    .line 131
    .line 132
    invoke-interface {p1, v2, v3, v0, v1}, Lcom/samsung/android/mcf/ble/BleScanner;->startScan(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;Lcom/samsung/android/mcf/ble/BleScanCallback;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 137
    .line 138
    if-eqz v0, :cond_3

    .line 139
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string/jumbo v1, "tryBleScannerStartScan BLE_SCANNER_STATE_START_SCAN_REQUEST "

    .line 143
    .line 144
    .line 145
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {v4, p1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :cond_3
    const-string p1, "BLE_SCANNER_STATE_START_SCAN_REQUEST"

    .line 159
    .line 160
    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mBleScannerState:Ljava/lang/String;

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_4
    const-string/jumbo p1, "tryBleScannerStartScan BLE_SCANNER_STATE_NO_SCAN_TARGET"

    .line 164
    .line 165
    .line 166
    invoke-static {v4, p1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const-string p1, "BLE_SCANNER_STATE_NO_SCAN_TARGET"

    .line 170
    .line 171
    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mBleScannerState:Ljava/lang/String;

    .line 172
    .line 173
    :cond_5
    :goto_2
    return-void
.end method

.method public final unbindMcfAdapter()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "[DMS]McfManager"

    .line 6
    .line 7
    const-string/jumbo v1, "unbindMcfAdapter"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/desktopmode/McfManager;->mBleScanCallback:Lcom/android/server/desktopmode/McfManager$5;

    .line 19
    .line 20
    invoke-interface {v0, v2}, Lcom/samsung/android/mcf/ble/BleScanner;->stopScan(Lcom/samsung/android/mcf/ble/BleScanCallback;)Z

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/server/desktopmode/McfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    .line 24
    .line 25
    const-string v0, "BLE_SCANNER_STATE_STOP_SCAN_REQUEST"

    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mBleScannerState:Ljava/lang/String;

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Lcom/samsung/android/mcf/McfBleAdapter;->close()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/android/server/desktopmode/McfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/samsung/android/mcf/McfAdapter;->unbindService()Z

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/android/server/desktopmode/McfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/android/server/desktopmode/McfManager;->mIsRequestingBindMcfAdapter:Z

    .line 49
    .line 50
    :cond_3
    return-void
.end method
