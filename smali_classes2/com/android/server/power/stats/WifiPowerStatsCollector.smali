.class public final Lcom/android/server/power/stats/WifiPowerStatsCollector;
.super Lcom/android/server/power/stats/PowerStatsCollector;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

.field public mDeviceStats:[J

.field public mEnergyConsumerIds:[I

.field public final mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

.field public mIsInitialized:Z

.field public mLastConsumedEnergyUws:[J

.field public mLastNetworkStats:Landroid/net/NetworkStats;

.field public final mLastScanTimes:Landroid/util/SparseArray;

.field public mLastVoltageMv:I

.field public mLastWifiActiveDuration:J

.field public mLastWifiActivityInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

.field public mLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

.field public volatile mNetworkStatsSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda1;

.field public mPowerReportingSupported:Z

.field public mPowerStats:Lcom/android/internal/os/PowerStats;

.field public final mScanTimes:Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;

.field public mVoltageSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;

.field public volatile mWifiManager:Landroid/net/wifi/WifiManager;

.field public volatile mWifiStatsRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$2;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;)V
    .locals 13

    .line 1
    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 2
    .line 3
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    .line 4
    .line 5
    const/16 v0, 0xb

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 16
    .line 17
    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 18
    .line 19
    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 20
    .line 21
    move-object v1, p0

    .line 22
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/PowerStatsCollector;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    new-array v0, v0, [I

    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mEnergyConsumerIds:[I

    .line 29
    .line 30
    new-instance v0, Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 31
    .line 32
    const-wide/16 v5, 0x0

    .line 33
    .line 34
    const-wide/16 v7, 0x0

    .line 35
    .line 36
    const-wide/16 v2, 0x0

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    const-wide/16 v9, 0x0

    .line 40
    .line 41
    const-wide/16 v11, 0x0

    .line 42
    .line 43
    move-object v1, v0

    .line 44
    invoke-direct/range {v1 .. v12}, Landroid/os/connectivity/WifiActivityEnergyInfo;-><init>(JIJJJJ)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActivityInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 48
    .line 49
    new-instance v0, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mScanTimes:Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;

    .line 55
    .line 56
    new-instance v0, Landroid/util/SparseArray;

    .line 57
    .line 58
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastScanTimes:Landroid/util/SparseArray;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public final collectStats()Lcom/android/internal/os/PowerStats;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-boolean v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mIsInitialized:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const-wide/16 v3, -0x1

    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    iget-boolean v0, v1, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-object v6

    .line 19
    :cond_1
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    .line 20
    .line 21
    iget-object v7, v0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    .line 22
    .line 23
    iput-object v7, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    .line 24
    .line 25
    new-instance v7, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    invoke-direct {v7, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;)V

    .line 28
    .line 29
    .line 30
    iput-object v7, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mVoltageSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 33
    .line 34
    iput-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 35
    .line 36
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance v7, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda1;

    .line 42
    .line 43
    const/4 v8, 0x1

    .line 44
    invoke-direct {v7, v0, v8}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;I)V

    .line 45
    .line 46
    .line 47
    iput-object v7, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mNetworkStatsSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda1;

    .line 48
    .line 49
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiStatsRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$2;

    .line 54
    .line 55
    iput-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mWifiStatsRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$2;

    .line 56
    .line 57
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isEnhancedPowerReportingSupported()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    move v0, v2

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    move v0, v5

    .line 72
    :goto_0
    iput-boolean v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerReportingSupported:Z

    .line 73
    .line 74
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    .line 75
    .line 76
    const/4 v7, 0x6

    .line 77
    invoke-virtual {v0, v7, v6}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->getEnergyConsumerIds(ILjava/lang/String;)[I

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mEnergyConsumerIds:[I

    .line 82
    .line 83
    array-length v0, v0

    .line 84
    new-array v0, v0, [J

    .line 85
    .line 86
    iput-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastConsumedEnergyUws:[J

    .line 87
    .line 88
    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    .line 89
    .line 90
    .line 91
    new-instance v0, Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 92
    .line 93
    invoke-direct {v0}, Lcom/android/server/power/stats/PowerStatsLayout;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 97
    .line 98
    iget-boolean v7, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerReportingSupported:Z

    .line 99
    .line 100
    iput-boolean v7, v0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mPowerReportingSupported:Z

    .line 101
    .line 102
    const-string/jumbo v8, "scan"

    .line 103
    .line 104
    .line 105
    const/4 v9, -0x1

    .line 106
    if-eqz v7, :cond_3

    .line 107
    .line 108
    iput v9, v0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceActiveTimePosition:I

    .line 109
    .line 110
    const-string/jumbo v7, "rx"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v2, v5, v7}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    iput v7, v0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceRxTimePosition:I

    .line 118
    .line 119
    const-string/jumbo v7, "tx"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v2, v5, v7}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    iput v7, v0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceTxTimePosition:I

    .line 127
    .line 128
    const-string v7, "idle"

    .line 129
    .line 130
    invoke-virtual {v0, v2, v5, v7}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    iput v7, v0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceIdleTimePosition:I

    .line 135
    .line 136
    invoke-virtual {v0, v2, v5, v8}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    iput v7, v0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceScanTimePosition:I

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_3
    const-string/jumbo v7, "rx-tx"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v2, v5, v7}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    iput v7, v0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceActiveTimePosition:I

    .line 151
    .line 152
    iput v9, v0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceRxTimePosition:I

    .line 153
    .line 154
    iput v9, v0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceTxTimePosition:I

    .line 155
    .line 156
    iput v9, v0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceIdleTimePosition:I

    .line 157
    .line 158
    iput v9, v0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceScanTimePosition:I

    .line 159
    .line 160
    :goto_1
    const-string v7, "basic-scan"

    .line 161
    .line 162
    invoke-virtual {v0, v2, v2, v7}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    iput v7, v0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceBasicScanTimePosition:I

    .line 167
    .line 168
    const-string v7, "batched-scan"

    .line 169
    .line 170
    invoke-virtual {v0, v2, v2, v7}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    .line 171
    .line 172
    .line 173
    move-result v9

    .line 174
    iput v9, v0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceBatchedScanTimePosition:I

    .line 175
    .line 176
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 177
    .line 178
    iget-object v9, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mEnergyConsumerIds:[I

    .line 179
    .line 180
    array-length v9, v9

    .line 181
    invoke-virtual {v0, v9}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSectionEnergyConsumers(I)V

    .line 182
    .line 183
    .line 184
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 185
    .line 186
    const-string/jumbo v9, "rx-pkts"

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v2, v5, v9}, Lcom/android/server/power/stats/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    .line 190
    .line 191
    .line 192
    move-result v9

    .line 193
    iput v9, v0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidRxPacketsPosition:I

    .line 194
    .line 195
    const-string/jumbo v9, "rx-B"

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v2, v5, v9}, Lcom/android/server/power/stats/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    .line 199
    .line 200
    .line 201
    move-result v9

    .line 202
    iput v9, v0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidRxBytesPosition:I

    .line 203
    .line 204
    const-string/jumbo v9, "tx-pkts"

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v2, v5, v9}, Lcom/android/server/power/stats/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    .line 208
    .line 209
    .line 210
    move-result v9

    .line 211
    iput v9, v0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidTxPacketsPosition:I

    .line 212
    .line 213
    const-string/jumbo v9, "tx-B"

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v2, v5, v9}, Lcom/android/server/power/stats/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    .line 217
    .line 218
    .line 219
    move-result v9

    .line 220
    iput v9, v0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidTxBytesPosition:I

    .line 221
    .line 222
    invoke-virtual {v0, v2, v2, v8}, Lcom/android/server/power/stats/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    .line 223
    .line 224
    .line 225
    move-result v8

    .line 226
    iput v8, v0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidScanTimePosition:I

    .line 227
    .line 228
    invoke-virtual {v0, v2, v2, v7}, Lcom/android/server/power/stats/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    .line 229
    .line 230
    .line 231
    move-result v7

    .line 232
    iput v7, v0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidBatchScanTimePosition:I

    .line 233
    .line 234
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 235
    .line 236
    const-string/jumbo v7, "usage"

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v2, v2, v7}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    .line 240
    .line 241
    .line 242
    move-result v7

    .line 243
    iput v7, v0, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceDurationPosition:I

    .line 244
    .line 245
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 246
    .line 247
    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSectionPowerEstimate()V

    .line 248
    .line 249
    .line 250
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 251
    .line 252
    const/4 v7, 0x5

    .line 253
    const-string/jumbo v8, "power"

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v2, v7, v8}, Lcom/android/server/power/stats/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    .line 257
    .line 258
    .line 259
    move-result v7

    .line 260
    iput v7, v0, Lcom/android/server/power/stats/PowerStatsLayout;->mUidPowerEstimatePosition:I

    .line 261
    .line 262
    new-instance v14, Landroid/os/PersistableBundle;

    .line 263
    .line 264
    invoke-direct {v14}, Landroid/os/PersistableBundle;-><init>()V

    .line 265
    .line 266
    .line 267
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 268
    .line 269
    invoke-virtual {v0, v14}, Lcom/android/server/power/stats/WifiPowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 270
    .line 271
    .line 272
    new-instance v0, Lcom/android/internal/os/PowerStats$Descriptor;

    .line 273
    .line 274
    iget-object v7, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 275
    .line 276
    iget v10, v7, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceStatsArrayLength:I

    .line 277
    .line 278
    iget v13, v7, Lcom/android/server/power/stats/PowerStatsLayout;->mUidStatsArrayLength:I

    .line 279
    .line 280
    const/4 v12, 0x0

    .line 281
    const/16 v9, 0xb

    .line 282
    .line 283
    const/4 v11, 0x0

    .line 284
    move-object v8, v0

    .line 285
    invoke-direct/range {v8 .. v14}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    .line 286
    .line 287
    .line 288
    new-instance v7, Lcom/android/internal/os/PowerStats;

    .line 289
    .line 290
    invoke-direct {v7, v0}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 291
    .line 292
    .line 293
    iput-object v7, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 294
    .line 295
    iget-object v0, v7, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 296
    .line 297
    iput-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mDeviceStats:[J

    .line 298
    .line 299
    iput-boolean v2, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mIsInitialized:Z

    .line 300
    .line 301
    :goto_2
    iget-boolean v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerReportingSupported:Z

    .line 302
    .line 303
    const-wide/16 v7, 0x0

    .line 304
    .line 305
    if-eqz v0, :cond_5

    .line 306
    .line 307
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    .line 308
    .line 309
    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 310
    .line 311
    .line 312
    iget-object v5, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 313
    .line 314
    new-instance v9, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 315
    .line 316
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 317
    .line 318
    .line 319
    new-instance v10, Lcom/android/server/power/stats/WifiPowerStatsCollector$$ExternalSyntheticLambda0;

    .line 320
    .line 321
    invoke-direct {v10, v0}, Lcom/android/server/power/stats/WifiPowerStatsCollector$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v5, v9, v10}, Landroid/net/wifi/WifiManager;->getWifiActivityEnergyInfoAsync(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;)V

    .line 325
    .line 326
    .line 327
    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 328
    .line 329
    const-wide/16 v9, 0x4e20

    .line 330
    .line 331
    invoke-virtual {v0, v9, v10, v5}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    check-cast v0, Landroid/os/connectivity/WifiActivityEnergyInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .line 337
    move-object v6, v0

    .line 338
    goto :goto_3

    .line 339
    :catch_0
    move-exception v0

    .line 340
    const-string v5, "WifiPowerStatsCollector"

    .line 341
    .line 342
    const-string v9, "Cannot acquire WifiActivityEnergyInfo"

    .line 343
    .line 344
    invoke-static {v5, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    .line 346
    .line 347
    :goto_3
    if-nez v6, :cond_4

    .line 348
    .line 349
    goto :goto_4

    .line 350
    :cond_4
    invoke-virtual {v6}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    .line 351
    .line 352
    .line 353
    move-result-wide v9

    .line 354
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActivityInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 355
    .line 356
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    .line 357
    .line 358
    .line 359
    move-result-wide v11

    .line 360
    sub-long/2addr v9, v11

    .line 361
    invoke-virtual {v6}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    .line 362
    .line 363
    .line 364
    move-result-wide v11

    .line 365
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActivityInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 366
    .line 367
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    .line 368
    .line 369
    .line 370
    move-result-wide v13

    .line 371
    sub-long/2addr v11, v13

    .line 372
    invoke-virtual {v6}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    .line 373
    .line 374
    .line 375
    move-result-wide v13

    .line 376
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActivityInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 377
    .line 378
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    .line 379
    .line 380
    .line 381
    move-result-wide v15

    .line 382
    sub-long/2addr v13, v15

    .line 383
    invoke-virtual {v6}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    .line 384
    .line 385
    .line 386
    move-result-wide v15

    .line 387
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActivityInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 388
    .line 389
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    .line 390
    .line 391
    .line 392
    move-result-wide v17

    .line 393
    sub-long v15, v15, v17

    .line 394
    .line 395
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 396
    .line 397
    iget-object v5, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mDeviceStats:[J

    .line 398
    .line 399
    iget v3, v0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceRxTimePosition:I

    .line 400
    .line 401
    aput-wide v9, v5, v3

    .line 402
    .line 403
    iget v3, v0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceTxTimePosition:I

    .line 404
    .line 405
    aput-wide v11, v5, v3

    .line 406
    .line 407
    iget v3, v0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceScanTimePosition:I

    .line 408
    .line 409
    aput-wide v13, v5, v3

    .line 410
    .line 411
    iget v0, v0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceIdleTimePosition:I

    .line 412
    .line 413
    aput-wide v15, v5, v0

    .line 414
    .line 415
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 416
    .line 417
    add-long/2addr v9, v11

    .line 418
    add-long/2addr v9, v13

    .line 419
    add-long/2addr v9, v15

    .line 420
    iput-wide v9, v0, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 421
    .line 422
    iput-object v6, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActivityInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 423
    .line 424
    goto :goto_4

    .line 425
    :cond_5
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mWifiStatsRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$2;

    .line 426
    .line 427
    iget-object v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 428
    .line 429
    monitor-enter v3

    .line 430
    :try_start_1
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 431
    .line 432
    iget-object v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 433
    .line 434
    invoke-virtual {v4}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 435
    .line 436
    .line 437
    move-result-wide v9

    .line 438
    const-wide/16 v11, 0x3e8

    .line 439
    .line 440
    mul-long/2addr v9, v11

    .line 441
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mGlobalWifiRunningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 442
    .line 443
    invoke-virtual {v0, v9, v10, v5}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    .line 444
    .line 445
    .line 446
    move-result-wide v4

    .line 447
    div-long/2addr v4, v11

    .line 448
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 449
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 450
    .line 451
    iget-object v3, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mDeviceStats:[J

    .line 452
    .line 453
    iget-wide v9, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActiveDuration:J

    .line 454
    .line 455
    sub-long v9, v4, v9

    .line 456
    .line 457
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 458
    .line 459
    .line 460
    move-result-wide v9

    .line 461
    iget v0, v0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceActiveTimePosition:I

    .line 462
    .line 463
    aput-wide v9, v3, v0

    .line 464
    .line 465
    iput-wide v4, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActiveDuration:J

    .line 466
    .line 467
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 468
    .line 469
    iput-wide v4, v0, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 470
    .line 471
    :goto_4
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 472
    .line 473
    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    .line 474
    .line 475
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 476
    .line 477
    .line 478
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mNetworkStatsSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda1;

    .line 479
    .line 480
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda1;->get()Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    check-cast v0, Landroid/net/NetworkStats;

    .line 485
    .line 486
    if-nez v0, :cond_6

    .line 487
    .line 488
    goto/16 :goto_7

    .line 489
    .line 490
    :cond_6
    iget-object v3, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastNetworkStats:Landroid/net/NetworkStats;

    .line 491
    .line 492
    invoke-static {v0, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->computeDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;)Ljava/util/List;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    iput-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastNetworkStats:Landroid/net/NetworkStats;

    .line 497
    .line 498
    check-cast v3, Ljava/util/ArrayList;

    .line 499
    .line 500
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 501
    .line 502
    .line 503
    move-result v0

    .line 504
    sub-int/2addr v0, v2

    .line 505
    :goto_5
    if-ltz v0, :cond_9

    .line 506
    .line 507
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object v4

    .line 511
    check-cast v4, Lcom/android/server/power/stats/BatteryStatsImpl$NetworkStatsDelta;

    .line 512
    .line 513
    iget-wide v5, v4, Lcom/android/server/power/stats/BatteryStatsImpl$NetworkStatsDelta;->mRxBytes:J

    .line 514
    .line 515
    iget-wide v9, v4, Lcom/android/server/power/stats/BatteryStatsImpl$NetworkStatsDelta;->mTxBytes:J

    .line 516
    .line 517
    iget-wide v11, v4, Lcom/android/server/power/stats/BatteryStatsImpl$NetworkStatsDelta;->mRxPackets:J

    .line 518
    .line 519
    iget-wide v13, v4, Lcom/android/server/power/stats/BatteryStatsImpl$NetworkStatsDelta;->mTxPackets:J

    .line 520
    .line 521
    cmp-long v15, v5, v7

    .line 522
    .line 523
    if-nez v15, :cond_7

    .line 524
    .line 525
    cmp-long v15, v9, v7

    .line 526
    .line 527
    if-nez v15, :cond_7

    .line 528
    .line 529
    cmp-long v15, v11, v7

    .line 530
    .line 531
    if-nez v15, :cond_7

    .line 532
    .line 533
    cmp-long v15, v13, v7

    .line 534
    .line 535
    if-nez v15, :cond_7

    .line 536
    .line 537
    goto :goto_6

    .line 538
    :cond_7
    iget-object v15, v1, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 539
    .line 540
    iget v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl$NetworkStatsDelta;->mUid:I

    .line 541
    .line 542
    invoke-virtual {v15, v4}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    .line 543
    .line 544
    .line 545
    move-result v4

    .line 546
    iget-object v15, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 547
    .line 548
    iget-object v15, v15, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    .line 549
    .line 550
    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v15

    .line 554
    check-cast v15, [J

    .line 555
    .line 556
    if-nez v15, :cond_8

    .line 557
    .line 558
    iget-object v15, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 559
    .line 560
    iget v15, v15, Lcom/android/server/power/stats/PowerStatsLayout;->mUidStatsArrayLength:I

    .line 561
    .line 562
    new-array v15, v15, [J

    .line 563
    .line 564
    iget-object v2, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 565
    .line 566
    iget-object v2, v2, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    .line 567
    .line 568
    invoke-virtual {v2, v4, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 569
    .line 570
    .line 571
    iget-object v2, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 572
    .line 573
    iget v4, v2, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidRxBytesPosition:I

    .line 574
    .line 575
    aput-wide v5, v15, v4

    .line 576
    .line 577
    iget v4, v2, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidTxBytesPosition:I

    .line 578
    .line 579
    aput-wide v9, v15, v4

    .line 580
    .line 581
    iget v4, v2, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidRxPacketsPosition:I

    .line 582
    .line 583
    aput-wide v11, v15, v4

    .line 584
    .line 585
    iget v2, v2, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidTxPacketsPosition:I

    .line 586
    .line 587
    aput-wide v13, v15, v2

    .line 588
    .line 589
    goto :goto_6

    .line 590
    :cond_8
    iget-object v2, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 591
    .line 592
    iget v4, v2, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidRxBytesPosition:I

    .line 593
    .line 594
    aget-wide v19, v15, v4

    .line 595
    .line 596
    add-long v19, v19, v5

    .line 597
    .line 598
    aput-wide v19, v15, v4

    .line 599
    .line 600
    iget v4, v2, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidTxBytesPosition:I

    .line 601
    .line 602
    aget-wide v5, v15, v4

    .line 603
    .line 604
    add-long/2addr v5, v9

    .line 605
    aput-wide v5, v15, v4

    .line 606
    .line 607
    iget v4, v2, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidRxPacketsPosition:I

    .line 608
    .line 609
    aget-wide v5, v15, v4

    .line 610
    .line 611
    add-long/2addr v5, v11

    .line 612
    aput-wide v5, v15, v4

    .line 613
    .line 614
    iget v2, v2, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidTxPacketsPosition:I

    .line 615
    .line 616
    aget-wide v4, v15, v2

    .line 617
    .line 618
    add-long/2addr v4, v13

    .line 619
    aput-wide v4, v15, v2

    .line 620
    .line 621
    :goto_6
    add-int/lit8 v0, v0, -0x1

    .line 622
    .line 623
    const/4 v2, 0x1

    .line 624
    goto :goto_5

    .line 625
    :cond_9
    :goto_7
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mScanTimes:Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;

    .line 626
    .line 627
    iput-wide v7, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->basicScanTimeMs:J

    .line 628
    .line 629
    iput-wide v7, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->batchedScanTimeMs:J

    .line 630
    .line 631
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mWifiStatsRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$2;

    .line 632
    .line 633
    new-instance v2, Lcom/android/server/power/stats/WifiPowerStatsCollector$$ExternalSyntheticLambda1;

    .line 634
    .line 635
    invoke-direct {v2, v1}, Lcom/android/server/power/stats/WifiPowerStatsCollector$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/WifiPowerStatsCollector;)V

    .line 636
    .line 637
    .line 638
    iget-object v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 639
    .line 640
    monitor-enter v4

    .line 641
    :try_start_2
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 642
    .line 643
    invoke-static {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$mretrieveWifiScanTimesLocked(Lcom/android/server/power/stats/BatteryStatsImpl;Lcom/android/server/power/stats/WifiPowerStatsCollector$$ExternalSyntheticLambda1;)V

    .line 644
    .line 645
    .line 646
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 647
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 648
    .line 649
    iget-object v2, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mDeviceStats:[J

    .line 650
    .line 651
    iget-object v3, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mScanTimes:Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;

    .line 652
    .line 653
    iget-wide v4, v3, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->basicScanTimeMs:J

    .line 654
    .line 655
    iget v6, v0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceBasicScanTimePosition:I

    .line 656
    .line 657
    aput-wide v4, v2, v6

    .line 658
    .line 659
    iget-wide v3, v3, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->batchedScanTimeMs:J

    .line 660
    .line 661
    iget v0, v0, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceBatchedScanTimePosition:I

    .line 662
    .line 663
    aput-wide v3, v2, v0

    .line 664
    .line 665
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mEnergyConsumerIds:[I

    .line 666
    .line 667
    array-length v0, v0

    .line 668
    if-eqz v0, :cond_f

    .line 669
    .line 670
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mVoltageSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;

    .line 671
    .line 672
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;->getAsInt()I

    .line 673
    .line 674
    .line 675
    move-result v0

    .line 676
    if-gtz v0, :cond_a

    .line 677
    .line 678
    new-instance v2, Ljava/lang/StringBuilder;

    .line 679
    .line 680
    const-string v3, "Unexpected battery voltage ("

    .line 681
    .line 682
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    const-string v0, " mV) when querying energy consumers"

    .line 689
    .line 690
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    .line 692
    .line 693
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    const-string v2, "WifiPowerStatsCollector"

    .line 698
    .line 699
    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    .line 701
    .line 702
    goto :goto_b

    .line 703
    :cond_a
    iget v2, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastVoltageMv:I

    .line 704
    .line 705
    if-eqz v2, :cond_b

    .line 706
    .line 707
    add-int/2addr v2, v0

    .line 708
    div-int/lit8 v2, v2, 0x2

    .line 709
    .line 710
    goto :goto_8

    .line 711
    :cond_b
    move v2, v0

    .line 712
    :goto_8
    iput v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastVoltageMv:I

    .line 713
    .line 714
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    .line 715
    .line 716
    iget-object v3, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mEnergyConsumerIds:[I

    .line 717
    .line 718
    invoke-virtual {v0, v3}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->getConsumedEnergyUws([I)[J

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    if-nez v0, :cond_c

    .line 723
    .line 724
    goto :goto_b

    .line 725
    :cond_c
    array-length v3, v0

    .line 726
    const/4 v4, 0x1

    .line 727
    sub-int/2addr v3, v4

    .line 728
    :goto_9
    if-ltz v3, :cond_f

    .line 729
    .line 730
    iget-object v4, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastConsumedEnergyUws:[J

    .line 731
    .line 732
    aget-wide v4, v4, v3

    .line 733
    .line 734
    const-wide/16 v9, -0x1

    .line 735
    .line 736
    cmp-long v6, v4, v9

    .line 737
    .line 738
    if-eqz v6, :cond_d

    .line 739
    .line 740
    aget-wide v11, v0, v3

    .line 741
    .line 742
    sub-long/2addr v11, v4

    .line 743
    goto :goto_a

    .line 744
    :cond_d
    move-wide v11, v7

    .line 745
    :goto_a
    cmp-long v4, v11, v7

    .line 746
    .line 747
    if-gez v4, :cond_e

    .line 748
    .line 749
    move-wide v11, v7

    .line 750
    :cond_e
    iget-object v4, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 751
    .line 752
    iget-object v5, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 753
    .line 754
    iget-object v5, v5, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 755
    .line 756
    invoke-static {v2, v11, v12}, Lcom/android/server/power/stats/PowerStatsCollector;->uJtoUc(IJ)J

    .line 757
    .line 758
    .line 759
    move-result-wide v11

    .line 760
    invoke-virtual {v4, v5, v3, v11, v12}, Lcom/android/server/power/stats/PowerStatsLayout;->setConsumedEnergy([JIJ)V

    .line 761
    .line 762
    .line 763
    iget-object v4, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastConsumedEnergyUws:[J

    .line 764
    .line 765
    aget-wide v5, v0, v3

    .line 766
    .line 767
    aput-wide v5, v4, v3

    .line 768
    .line 769
    add-int/lit8 v3, v3, -0x1

    .line 770
    .line 771
    goto :goto_9

    .line 772
    :cond_f
    :goto_b
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 773
    .line 774
    return-object v0

    .line 775
    :catchall_0
    move-exception v0

    .line 776
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 777
    throw v0

    .line 778
    :catchall_1
    move-exception v0

    .line 779
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 780
    throw v0
.end method

.method public final onUidRemoved(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastScanTimes:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
