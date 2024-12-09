.class public final Lcom/android/server/display/WifiDisplayMcfManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final mScanFilterData:[B

.field public static final mScanFilterDataMask:[B


# instance fields
.field public final mBleAdapterCallback:Lcom/android/server/display/WifiDisplayMcfManager$2;

.field public final mBleScanCallback:Lcom/android/server/display/WifiDisplayMcfManager$4;

.field public mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

.field public final mConnection:Lcom/android/server/display/WifiDisplayMcfManager$1;

.field public final mContext:Landroid/content/Context;

.field public mIsBounded:Z

.field public mIsIntentRegistered:Z

.field public mIsScanning:Z

.field public mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

.field public final mMcfAdapterListener:Lcom/android/server/display/WifiDisplayMcfManager$3;

.field public mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

.field public final mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

.field public final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field public final mReceiver:Lcom/android/server/display/WifiDisplayMcfManager$5;

.field public mService:Landroid/os/Messenger;


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
    sput-object v1, Lcom/android/server/display/WifiDisplayMcfManager;->mScanFilterData:[B

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/android/server/display/WifiDisplayMcfManager;->mScanFilterDataMask:[B

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
        0x10t
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
        0x10t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/PersistentDataStore;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/display/WifiDisplayMcfManager$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayMcfManager$1;-><init>(Lcom/android/server/display/WifiDisplayMcfManager;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mConnection:Lcom/android/server/display/WifiDisplayMcfManager$1;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/display/WifiDisplayMcfManager$2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayMcfManager$2;-><init>(Lcom/android/server/display/WifiDisplayMcfManager;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleAdapterCallback:Lcom/android/server/display/WifiDisplayMcfManager$2;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/display/WifiDisplayMcfManager$3;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayMcfManager$3;-><init>(Lcom/android/server/display/WifiDisplayMcfManager;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfAdapterListener:Lcom/android/server/display/WifiDisplayMcfManager$3;

    .line 24
    .line 25
    new-instance v0, Lcom/android/server/display/WifiDisplayMcfManager$4;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayMcfManager$4;-><init>(Lcom/android/server/display/WifiDisplayMcfManager;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanCallback:Lcom/android/server/display/WifiDisplayMcfManager$4;

    .line 31
    .line 32
    new-instance v0, Lcom/android/server/display/WifiDisplayMcfManager$5;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayMcfManager$5;-><init>(Lcom/android/server/display/WifiDisplayMcfManager;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mReceiver:Lcom/android/server/display/WifiDisplayMcfManager$5;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    new-instance p1, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-direct {p1, p0, p2}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;-><init>(Lcom/android/server/display/WifiDisplayMcfManager;Landroid/os/Looper;)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    .line 51
    .line 52
    iput-object p3, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final bindMcfAdapter()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "nearby_scanning_enabled"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    :catch_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "airplane_mode_on"

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string v0, "WifiDisplayMcfManager"

    .line 33
    .line 34
    const-string/jumbo v1, "bindMcfAdapter"

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    .line 41
    .line 42
    const/4 v1, 0x5

    .line 43
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 44
    .line 45
    .line 46
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    .line 47
    .line 48
    if-nez v3, :cond_1

    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfAdapterListener:Lcom/android/server/display/WifiDisplayMcfManager$3;

    .line 53
    .line 54
    invoke-static {v2, p0}, Lcom/samsung/android/mcf/McfAdapter;->bindService(Landroid/content/Context;Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-nez p0, :cond_3

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-wide/16 v1, 0x1388

    .line 65
    .line 66
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsScanning:Z

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    .line 75
    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanCallback:Lcom/android/server/display/WifiDisplayMcfManager$4;

    .line 79
    .line 80
    invoke-interface {v0, v1}, Lcom/samsung/android/mcf/ble/BleScanner;->stopScan(Lcom/samsung/android/mcf/ble/BleScanCallback;)Z

    .line 81
    .line 82
    .line 83
    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    .line 85
    .line 86
    iput-boolean v2, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsScanning:Z

    .line 87
    .line 88
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->retryStartScanBleScanner()V

    .line 89
    .line 90
    .line 91
    :cond_3
    :goto_0
    return-void
.end method

.method public final getInitiatedMirroringUuid()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mInitiatedMirroringUuid:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/16 v1, 0x10

    .line 16
    .line 17
    new-array v1, v1, [B

    .line 18
    .line 19
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {}, Ljava/util/Base64;->getUrlEncoder()Ljava/util/Base64$Encoder;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1, v0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/4 v1, 0x0

    .line 52
    const/16 v2, 0x16

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mInitiatedMirroringUuid:Ljava/lang/String;

    .line 62
    .line 63
    const/4 v1, 0x1

    .line 64
    iput-boolean v1, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    .line 65
    .line 66
    :cond_0
    return-object v0
.end method

.method public final initialize()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsIntentRegistered:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    .line 6
    .line 7
    .line 8
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 9
    .line 10
    const-string/jumbo v2, "com.samsung.android.nearbyscanning"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mReceiver:Lcom/android/server/display/WifiDisplayMcfManager$5;

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsIntentRegistered:Z

    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->bindMcfAdapter()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final retryStartScanBleScanner()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsScanning:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    .line 6
    .line 7
    const/4 v0, 0x6

    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-wide/16 v1, 0x3e8

    .line 16
    .line 17
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final tryStartScanBleScanner()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/samsung/android/mcf/McfBleAdapter;->getBleScanner()Lcom/samsung/android/mcf/ble/BleScanner;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    .line 10
    .line 11
    const-string v1, "WifiDisplayMcfManager"

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v2}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->setTimeout(I)Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->build()Lcom/samsung/android/mcf/ble/BleScanSettings;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v3, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v4, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 39
    .line 40
    invoke-virtual {v5}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 41
    .line 42
    .line 43
    iget-object v5, v5, Lcom/android/server/display/PersistentDataStore;->mRememberedInitiatedDevices:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-nez v6, :cond_3

    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_0

    .line 60
    .line 61
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    check-cast v6, Ljava/lang/String;

    .line 66
    .line 67
    new-instance v7, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string/jumbo v8, "tryStartScanBleScanner : "

    .line 70
    .line 71
    .line 72
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    new-instance v7, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    .line 86
    .line 87
    invoke-direct {v7}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;-><init>()V

    .line 88
    .line 89
    .line 90
    :try_start_0
    sget-object v8, Lcom/android/server/display/WifiDisplayMcfManager;->mScanFilterData:[B

    .line 91
    .line 92
    sget-object v9, Lcom/android/server/display/WifiDisplayMcfManager;->mScanFilterDataMask:[B

    .line 93
    .line 94
    const/16 v10, 0x75

    .line 95
    .line 96
    invoke-virtual {v7, v10, v8, v9}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setManufacturerData(I[B[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v7, v6}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->build()Lcom/samsung/android/mcf/ble/BleScanFilter;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catch_0
    move-exception v6

    .line 114
    new-instance v7, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string/jumbo v8, "tryStartScanBleScanner failed : "

    .line 117
    .line 118
    .line 119
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-lez v5, :cond_3

    .line 142
    .line 143
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-lez v5, :cond_3

    .line 148
    .line 149
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    .line 150
    .line 151
    iget-object v6, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanCallback:Lcom/android/server/display/WifiDisplayMcfManager$4;

    .line 152
    .line 153
    invoke-interface {v5, v3, v4, v0, v6}, Lcom/samsung/android/mcf/ble/BleScanner;->startScan(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;Lcom/samsung/android/mcf/ble/BleScanCallback;)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsScanning:Z

    .line 158
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    const-string/jumbo v3, "tryStartScanBleScanner startScan, ret="

    .line 162
    .line 163
    .line 164
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsScanning:Z

    .line 168
    .line 169
    invoke-static {v1, v0, v3}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 170
    .line 171
    .line 172
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsScanning:Z

    .line 173
    .line 174
    if-nez v0, :cond_3

    .line 175
    .line 176
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    .line 177
    .line 178
    if-eqz v0, :cond_1

    .line 179
    .line 180
    invoke-interface {v0, v6}, Lcom/samsung/android/mcf/ble/BleScanner;->stopScan(Lcom/samsung/android/mcf/ble/BleScanCallback;)Z

    .line 181
    .line 182
    .line 183
    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    .line 185
    .line 186
    iput-boolean v2, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsScanning:Z

    .line 187
    .line 188
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->retryStartScanBleScanner()V

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_2
    const-string p0, "BleScanner is Null"

    .line 193
    .line 194
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    :cond_3
    :goto_1
    return-void
.end method

.method public final unbindBleAdvertiserService()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsBounded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mService:Landroid/os/Messenger;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x2

    .line 10
    invoke-static {v2, v3, v0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    :catch_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mConnection:Lcom/android/server/display/WifiDisplayMcfManager$1;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 22
    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsBounded:Z

    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final unbindMcfAdapter()V
    .locals 3

    .line 1
    const-string v0, "WifiDisplayMcfManager"

    .line 2
    .line 3
    const-string/jumbo v1, "unbindMcfAdapter"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanCallback:Lcom/android/server/display/WifiDisplayMcfManager$4;

    .line 20
    .line 21
    invoke-interface {v0, v2}, Lcom/samsung/android/mcf/ble/BleScanner;->stopScan(Lcom/samsung/android/mcf/ble/BleScanCallback;)Z

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsScanning:Z

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-interface {v0}, Lcom/samsung/android/mcf/McfBleAdapter;->close()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/samsung/android/mcf/McfAdapter;->unbindService()Z

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    .line 46
    .line 47
    :cond_2
    return-void
.end method
