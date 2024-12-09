.class public final Lcom/android/server/display/LogicalDisplayMapper;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/display/DisplayDeviceRepository$Listener;


# static fields
.field public static final DEBUG:Z

.field public static sNextNonDefaultDisplayId:I


# instance fields
.field public mBootCompleted:Z

.field public mCurrentLayout:Lcom/android/server/display/layout/Layout;

.field public final mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

.field public mDeviceState:I

.field public mDeviceStateToBeAppliedAfterBoot:I

.field public final mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

.field public final mDeviceStatesOnWhichToSelectiveSleep:Landroid/util/SparseBooleanArray;

.field public final mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

.field public final mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

.field public final mDisplayGroupIdsByName:Landroid/util/ArrayMap;

.field public final mDisplayGroups:Landroid/util/SparseArray;

.field public final mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

.field public final mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

.field public final mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mFoldGracePeriodProvider:Lcom/android/internal/foldables/FoldGracePeriodProvider;

.field public final mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

.field public final mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

.field public mHiddenSpaceDisplay:Lcom/android/server/display/LogicalDisplay;

.field public final mIdProducer:Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;

.field public mInteractive:Z

.field public final mListener:Lcom/android/server/display/DisplayManagerService$1;

.field public final mLogicalDisplays:Landroid/util/SparseArray;

.field public final mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

.field public mNextNonDefaultGroupId:I

.field public mPendingDeviceState:I

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mSingleDisplayDemoMode:Z

.field public final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field public final mSyntheticModeManager:Lcom/android/server/display/mode/SyntheticModeManager;

.field public final mTempDisplayInfo:Landroid/view/DisplayInfo;

.field public final mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field public final mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

.field public final mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

.field public final mVirtualDeviceDisplayMapping:Landroid/util/ArrayMap;

.field public mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "LogicalDisplayMapper"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    .line 8
    .line 9
    const/4 v0, 0x5

    .line 10
    sput v0, Lcom/android/server/display/LogicalDisplayMapper;->sNextNonDefaultDisplayId:I

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/utils/FoldSettingProvider;Lcom/android/internal/foldables/FoldGracePeriodProvider;Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/DisplayManagerService$1;Lcom/android/server/display/DisplayManagerService$SyncRoot;Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/display/DeviceStateToLayoutMap;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2}, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, p8}, Lcom/android/server/display/DeviceStateToLayoutMap;-><init>(Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/android/server/display/mode/SyntheticModeManager;

    .line 13
    .line 14
    invoke-direct {v1, p8}, Lcom/android/server/display/mode/SyntheticModeManager;-><init>(Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Landroid/view/DisplayInfo;

    .line 21
    .line 22
    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 26
    .line 27
    new-instance v2, Landroid/view/DisplayInfo;

    .line 28
    .line 29
    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 33
    .line 34
    new-instance v2, Landroid/util/SparseArray;

    .line 35
    .line 36
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 40
    .line 41
    new-instance v2, Landroid/util/SparseBooleanArray;

    .line 42
    .line 43
    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

    .line 47
    .line 48
    new-instance v2, Landroid/util/SparseArray;

    .line 49
    .line 50
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    .line 54
    .line 55
    new-instance v2, Landroid/util/SparseIntArray;

    .line 56
    .line 57
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    .line 61
    .line 62
    new-instance v2, Landroid/util/ArrayMap;

    .line 63
    .line 64
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupIdsByName:Landroid/util/ArrayMap;

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    iput-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHiddenSpaceDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 71
    .line 72
    new-instance v3, Landroid/util/SparseIntArray;

    .line 73
    .line 74
    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    .line 78
    .line 79
    new-instance v3, Landroid/util/SparseIntArray;

    .line 80
    .line 81
    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    .line 85
    .line 86
    new-instance v3, Landroid/util/SparseIntArray;

    .line 87
    .line 88
    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 92
    .line 93
    new-instance v3, Landroid/util/SparseIntArray;

    .line 94
    .line 95
    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    .line 99
    .line 100
    new-instance v3, Landroid/util/ArrayMap;

    .line 101
    .line 102
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mVirtualDeviceDisplayMapping:Landroid/util/ArrayMap;

    .line 106
    .line 107
    const/4 v3, 0x5

    .line 108
    iput v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    .line 109
    .line 110
    new-instance v3, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;

    .line 111
    .line 112
    const/4 v4, 0x1

    .line 113
    invoke-direct {v3, v4}, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;-><init>(I)V

    .line 114
    .line 115
    .line 116
    iput-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mIdProducer:Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;

    .line 117
    .line 118
    iput-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 119
    .line 120
    const/4 v2, -0x1

    .line 121
    iput v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 122
    .line 123
    iput v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 124
    .line 125
    iput v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:I

    .line 126
    .line 127
    const/4 v2, 0x0

    .line 128
    iput-boolean v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    .line 129
    .line 130
    iput-object p6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 131
    .line 132
    const-class p6, Landroid/os/PowerManager;

    .line 133
    .line 134
    invoke-virtual {p1, p6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p6

    .line 138
    check-cast p6, Landroid/os/PowerManager;

    .line 139
    .line 140
    iput-object p6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPowerManager:Landroid/os/PowerManager;

    .line 141
    .line 142
    invoke-virtual {p6}, Landroid/os/PowerManager;->isInteractive()Z

    .line 143
    .line 144
    .line 145
    move-result p6

    .line 146
    iput-boolean p6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    .line 147
    .line 148
    new-instance p6, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    .line 149
    .line 150
    invoke-virtual {p7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 151
    .line 152
    .line 153
    move-result-object p7

    .line 154
    invoke-direct {p6, p0, p7}, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;-><init>(Lcom/android/server/display/LogicalDisplayMapper;Landroid/os/Looper;)V

    .line 155
    .line 156
    .line 157
    iput-object p6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    .line 158
    .line 159
    iput-object p4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 160
    .line 161
    iput-object p5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/DisplayManagerService$1;

    .line 162
    .line 163
    iput-object p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

    .line 164
    .line 165
    iput-object p3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldGracePeriodProvider:Lcom/android/internal/foldables/FoldGracePeriodProvider;

    .line 166
    .line 167
    const-string/jumbo p2, "persist.demo.singledisplay"

    .line 168
    .line 169
    .line 170
    invoke-static {p2, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    iput-boolean p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSingleDisplayDemoMode:Z

    .line 175
    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    const p3, 0x111024e

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    const p3, 0x10700ca

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    new-instance p3, Landroid/util/SparseBooleanArray;

    .line 198
    .line 199
    const/4 p5, 0x2

    .line 200
    invoke-direct {p3, p5}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 201
    .line 202
    .line 203
    move p6, v2

    .line 204
    :goto_0
    const/4 p7, 0x1

    .line 205
    if-eqz p2, :cond_0

    .line 206
    .line 207
    array-length v3, p2

    .line 208
    if-ge p6, v3, :cond_0

    .line 209
    .line 210
    aget v3, p2, p6

    .line 211
    .line 212
    invoke-virtual {p3, v3, p7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 213
    .line 214
    .line 215
    add-int/lit8 p6, p6, 0x1

    .line 216
    .line 217
    goto :goto_0

    .line 218
    :cond_0
    iput-object p3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    .line 219
    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    const p2, 0x10700c9

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    new-instance p2, Landroid/util/SparseBooleanArray;

    .line 232
    .line 233
    invoke-direct {p2, p5}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 234
    .line 235
    .line 236
    :goto_1
    if-eqz p1, :cond_1

    .line 237
    .line 238
    array-length p3, p1

    .line 239
    if-ge v2, p3, :cond_1

    .line 240
    .line 241
    aget p3, p1, v2

    .line 242
    .line 243
    invoke-virtual {p2, p3, p7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 244
    .line 245
    .line 246
    add-int/lit8 v2, v2, 0x1

    .line 247
    .line 248
    goto :goto_1

    .line 249
    :cond_1
    iput-object p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSelectiveSleep:Landroid/util/SparseBooleanArray;

    .line 250
    .line 251
    iget-object p1, p4, Lcom/android/server/display/DisplayDeviceRepository;->mListeners:Ljava/util/List;

    .line 252
    .line 253
    check-cast p1, Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    .line 259
    .line 260
    iput-object p8, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 261
    .line 262
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyntheticModeManager:Lcom/android/server/display/mode/SyntheticModeManager;

    .line 263
    .line 264
    return-void
.end method


# virtual methods
.method public final applyLayoutLocked()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "Applying layout: "

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ", Previous layout: "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "LogicalDisplayMapper"

    .line 38
    .line 39
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    .line 45
    .line 46
    check-cast v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/4 v2, 0x0

    .line 53
    move v3, v2

    .line 54
    :goto_0
    if-ge v3, v0, :cond_f

    .line 55
    .line 56
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 57
    .line 58
    iget-object v4, v4, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    .line 59
    .line 60
    check-cast v4, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lcom/android/server/display/layout/Layout$Display;

    .line 67
    .line 68
    iget-object v5, v4, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    .line 69
    .line 70
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 71
    .line 72
    invoke-virtual {v6, v5}, Lcom/android/server/display/DisplayDeviceRepository;->getByAddressLocked(Landroid/view/DisplayAddress;)Lcom/android/server/display/DisplayDevice;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    if-nez v6, :cond_0

    .line 77
    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string/jumbo v6, "applyLayoutLocked: The display device ("

    .line 81
    .line 82
    .line 83
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v5, "), is not available for the display state "

    .line 90
    .line 91
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 95
    .line 96
    invoke-static {v4, v5, v1}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto/16 :goto_4

    .line 100
    .line 101
    :cond_0
    iget v5, v4, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    .line 102
    .line 103
    const/4 v7, 0x1

    .line 104
    invoke-virtual {p0, v5, v7}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    const/4 v9, 0x0

    .line 109
    if-nez v8, :cond_1

    .line 110
    .line 111
    invoke-virtual {p0, v9, v5}, Lcom/android/server/display/LogicalDisplayMapper;->createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    move v5, v7

    .line 116
    goto :goto_1

    .line 117
    :cond_1
    move v5, v2

    .line 118
    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    iget v11, v8, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 123
    .line 124
    if-eq v8, v10, :cond_3

    .line 125
    .line 126
    if-nez v5, :cond_2

    .line 127
    .line 128
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 129
    .line 130
    if-eqz v5, :cond_2

    .line 131
    .line 132
    check-cast v5, Lcom/android/server/policy/PhoneWindowManager;

    .line 133
    .line 134
    if-nez v11, :cond_2

    .line 135
    .line 136
    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 137
    .line 138
    iget-object v5, v5, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 139
    .line 140
    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayUpdater:Lcom/android/server/wm/DisplayUpdater;

    .line 141
    .line 142
    invoke-interface {v5, v7}, Lcom/android/server/wm/DisplayUpdater;->onDisplaySwitching(Z)V

    .line 143
    .line 144
    .line 145
    :cond_2
    iget-object v5, v8, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 146
    .line 147
    invoke-virtual {v10, v5}, Lcom/android/server/display/LogicalDisplay;->setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-virtual {v8, v5}, Lcom/android/server/display/LogicalDisplay;->setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    .line 152
    .line 153
    .line 154
    :cond_3
    invoke-virtual {v6}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    iget v6, v8, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    .line 159
    .line 160
    iget v10, v4, Lcom/android/server/display/layout/Layout$Display;->mPosition:I

    .line 161
    .line 162
    if-eq v6, v10, :cond_4

    .line 163
    .line 164
    iput v10, v8, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    .line 165
    .line 166
    iput-boolean v7, v8, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 167
    .line 168
    :cond_4
    iget v6, v4, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayId:I

    .line 169
    .line 170
    iget v10, v8, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    .line 171
    .line 172
    if-eq v11, v10, :cond_5

    .line 173
    .line 174
    if-eq v11, v6, :cond_5

    .line 175
    .line 176
    iput v6, v8, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    .line 177
    .line 178
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    iget-object v6, v4, Lcom/android/server/display/layout/Layout$Display;->mRefreshRateZoneId:Ljava/lang/String;

    .line 182
    .line 183
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    if-eqz v10, :cond_6

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_6
    iget-object v9, v5, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    .line 191
    .line 192
    check-cast v9, Ljava/util/HashMap;

    .line 193
    .line 194
    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    move-object v9, v6

    .line 199
    check-cast v9, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 200
    .line 201
    :goto_2
    iget-object v6, v8, Lcom/android/server/display/LogicalDisplay;->mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 202
    .line 203
    invoke-static {v9, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    if-nez v6, :cond_7

    .line 208
    .line 209
    iput-object v9, v8, Lcom/android/server/display/LogicalDisplay;->mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 210
    .line 211
    iput-boolean v7, v8, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 212
    .line 213
    :cond_7
    const-string/jumbo v6, "default"

    .line 214
    .line 215
    .line 216
    iget-object v9, v4, Lcom/android/server/display/layout/Layout$Display;->mThermalRefreshRateThrottlingMapId:Ljava/lang/String;

    .line 217
    .line 218
    if-nez v9, :cond_8

    .line 219
    .line 220
    move-object v9, v6

    .line 221
    :cond_8
    iget-object v5, v5, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    .line 222
    .line 223
    check-cast v5, Ljava/util/HashMap;

    .line 224
    .line 225
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    check-cast v5, Landroid/util/SparseArray;

    .line 230
    .line 231
    if-nez v5, :cond_9

    .line 232
    .line 233
    new-instance v5, Landroid/util/SparseArray;

    .line 234
    .line 235
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 236
    .line 237
    .line 238
    :cond_9
    iget-object v9, v8, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 239
    .line 240
    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    .line 241
    .line 242
    .line 243
    move-result v9

    .line 244
    if-nez v9, :cond_a

    .line 245
    .line 246
    iput-object v5, v8, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 247
    .line 248
    iput-boolean v7, v8, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 249
    .line 250
    :cond_a
    iget-boolean v5, v4, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    .line 251
    .line 252
    invoke-virtual {p0, v8, v5}, Lcom/android/server/display/LogicalDisplayMapper;->setEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    .line 253
    .line 254
    .line 255
    iget-object v5, v4, Lcom/android/server/display/layout/Layout$Display;->mThermalBrightnessThrottlingMapId:Ljava/lang/String;

    .line 256
    .line 257
    if-nez v5, :cond_b

    .line 258
    .line 259
    move-object v5, v6

    .line 260
    :cond_b
    iget-object v9, v8, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v9

    .line 266
    if-nez v9, :cond_c

    .line 267
    .line 268
    iput-object v5, v8, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 269
    .line 270
    iput-boolean v7, v8, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 271
    .line 272
    :cond_c
    iget-object v5, v4, Lcom/android/server/display/layout/Layout$Display;->mPowerThrottlingMapId:Ljava/lang/String;

    .line 273
    .line 274
    if-nez v5, :cond_d

    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_d
    move-object v6, v5

    .line 278
    :goto_3
    iget-object v5, v8, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    .line 279
    .line 280
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    if-nez v5, :cond_e

    .line 285
    .line 286
    iput-object v6, v8, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    .line 287
    .line 288
    iput-boolean v7, v8, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 289
    .line 290
    :cond_e
    iget-object v4, v4, Lcom/android/server/display/layout/Layout$Display;->mDisplayGroupName:Ljava/lang/String;

    .line 291
    .line 292
    iput-object v4, v8, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupName:Ljava/lang/String;

    .line 293
    .line 294
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 295
    .line 296
    goto/16 :goto_0

    .line 297
    .line 298
    :cond_f
    return-void
.end method

.method public final areAllTransitioningDisplaysOffLocked()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

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
    const/4 v3, 0x1

    .line 10
    if-ge v2, v0, :cond_2

    .line 11
    .line 12
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Lcom/android/server/display/LogicalDisplay;

    .line 19
    .line 20
    iget-boolean v5, v4, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    .line 21
    .line 22
    if-nez v5, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object v4, v4, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 26
    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    iget v4, v4, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 34
    .line 35
    if-eq v4, v3, :cond_1

    .line 36
    .line 37
    return v1

    .line 38
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return v3
.end method

.method public final assignDisplayGroupLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 13

    .line 1
    iget-object v0, p1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 2
    .line 3
    if-eqz v0, :cond_13

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mVirtualDeviceDisplayMapping:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Integer;

    .line 14
    .line 15
    iget v2, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupIdFromDisplayIdLocked(I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-lez v4, :cond_0

    .line 34
    .line 35
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v4, 0x0

    .line 51
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    iget-object v6, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupName:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 62
    .line 63
    and-int/lit16 v7, v7, 0x4000

    .line 64
    .line 65
    const/4 v8, 0x1

    .line 66
    const/4 v9, 0x2

    .line 67
    const/4 v10, 0x0

    .line 68
    if-nez v7, :cond_2

    .line 69
    .line 70
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-eqz v6, :cond_2

    .line 75
    .line 76
    if-ne v3, v9, :cond_1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    move v6, v10

    .line 80
    goto :goto_2

    .line 81
    :cond_2
    :goto_1
    move v6, v8

    .line 82
    :goto_2
    if-eqz v3, :cond_3

    .line 83
    .line 84
    move v7, v8

    .line 85
    goto :goto_3

    .line 86
    :cond_3
    move v7, v10

    .line 87
    :goto_3
    if-nez v6, :cond_4

    .line 88
    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    move v11, v8

    .line 92
    goto :goto_4

    .line 93
    :cond_4
    move v11, v10

    .line 94
    :goto_4
    if-eqz v4, :cond_5

    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-ne v3, v4, :cond_5

    .line 101
    .line 102
    move v4, v8

    .line 103
    goto :goto_5

    .line 104
    :cond_5
    move v4, v10

    .line 105
    :goto_5
    const/4 v12, -0x1

    .line 106
    if-eq v3, v12, :cond_6

    .line 107
    .line 108
    if-ne v7, v6, :cond_6

    .line 109
    .line 110
    if-eq v4, v11, :cond_d

    .line 111
    .line 112
    :cond_6
    if-ne v2, v9, :cond_7

    .line 113
    .line 114
    move v3, v9

    .line 115
    goto :goto_7

    .line 116
    :cond_7
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->CARLIFE_DISPLAY_GROUP:Z

    .line 117
    .line 118
    if-eqz v3, :cond_8

    .line 119
    .line 120
    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 121
    .line 122
    const/high16 v3, -0x80000000

    .line 123
    .line 124
    and-int/2addr v0, v3

    .line 125
    if-eqz v0, :cond_8

    .line 126
    .line 127
    const/4 v3, 0x4

    .line 128
    goto :goto_7

    .line 129
    :cond_8
    iget-object v0, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupName:Ljava/lang/String;

    .line 130
    .line 131
    if-eqz v11, :cond_a

    .line 132
    .line 133
    if-eqz v1, :cond_a

    .line 134
    .line 135
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_9

    .line 146
    .line 147
    iget v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    .line 148
    .line 149
    add-int/lit8 v3, v0, 0x1

    .line 150
    .line 151
    iput v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    .line 152
    .line 153
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    invoke-virtual {v3, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 160
    .line 161
    .line 162
    :cond_9
    :goto_6
    move v3, v0

    .line 163
    goto :goto_7

    .line 164
    :cond_a
    if-nez v6, :cond_b

    .line 165
    .line 166
    move v3, v10

    .line 167
    goto :goto_7

    .line 168
    :cond_b
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupIdsByName:Landroid/util/ArrayMap;

    .line 169
    .line 170
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    check-cast v1, Ljava/lang/Integer;

    .line 175
    .line 176
    if-nez v1, :cond_c

    .line 177
    .line 178
    iget v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    .line 179
    .line 180
    add-int/lit8 v3, v1, 0x1

    .line 181
    .line 182
    iput v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    .line 183
    .line 184
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupIdsByName:Landroid/util/ArrayMap;

    .line 189
    .line 190
    invoke-virtual {v3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    goto :goto_6

    .line 198
    :cond_d
    :goto_7
    invoke-virtual {p0, v3}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    if-nez v0, :cond_e

    .line 203
    .line 204
    new-instance v0, Lcom/android/server/display/DisplayGroup;

    .line 205
    .line 206
    invoke-direct {v0, v3}, Lcom/android/server/display/DisplayGroup;-><init>(I)V

    .line 207
    .line 208
    .line 209
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    .line 210
    .line 211
    invoke-virtual {p0, v3, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    :cond_e
    if-eq v5, v0, :cond_13

    .line 215
    .line 216
    if-eqz v5, :cond_f

    .line 217
    .line 218
    iget p0, v5, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    .line 219
    .line 220
    add-int/2addr p0, v8

    .line 221
    iput p0, v5, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    .line 222
    .line 223
    iget-object p0, v5, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    .line 224
    .line 225
    check-cast p0, Ljava/util/ArrayList;

    .line 226
    .line 227
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    :cond_f
    iget-object p0, v0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    .line 231
    .line 232
    check-cast p0, Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result p0

    .line 238
    if-nez p0, :cond_10

    .line 239
    .line 240
    iget p0, v0, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    .line 241
    .line 242
    add-int/2addr p0, v8

    .line 243
    iput p0, v0, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    .line 244
    .line 245
    iget-object p0, v0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    .line 246
    .line 247
    check-cast p0, Ljava/util/ArrayList;

    .line 248
    .line 249
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    :cond_10
    iget p0, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    .line 253
    .line 254
    if-eq v3, p0, :cond_11

    .line 255
    .line 256
    iput v3, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    .line 257
    .line 258
    iput-boolean v8, p1, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 259
    .line 260
    :cond_11
    const-string p0, "Setting new display group "

    .line 261
    .line 262
    const-string p1, " for display "

    .line 263
    .line 264
    const-string v0, ", from previous group: "

    .line 265
    .line 266
    invoke-static {v3, v2, p0, p1, v0}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    if-eqz v5, :cond_12

    .line 271
    .line 272
    iget p1, v5, Lcom/android/server/display/DisplayGroup;->mGroupId:I

    .line 273
    .line 274
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    goto :goto_8

    .line 279
    :cond_12
    const-string/jumbo p1, "null"

    .line 280
    .line 281
    .line 282
    :goto_8
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    const-string p1, "LogicalDisplayMapper"

    .line 290
    .line 291
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    :cond_13
    return-void
.end method

.method public final createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;
    .locals 7

    .line 1
    new-instance v6, Lcom/android/server/display/LogicalDisplay;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPixelAnisotropyCorrectionEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAlwaysRotateDisplayDevice:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    move-object v0, v6

    .line 18
    move v1, p2

    .line 19
    move v2, p2

    .line 20
    move-object v3, p1

    .line 21
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/LogicalDisplay;-><init>(IILcom/android/server/display/DisplayDevice;ZZ)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyntheticModeManager:Lcom/android/server/display/mode/SyntheticModeManager;

    .line 27
    .line 28
    invoke-virtual {v6, p1, v0}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/mode/SyntheticModeManager;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget p1, p1, Landroid/view/DisplayInfo;->type:I

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    if-ne p1, v0, :cond_0

    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-le p1, v0, :cond_0

    .line 49
    .line 50
    iget-boolean p1, v6, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 51
    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    iput-boolean v0, v6, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    iput-boolean p1, v6, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 58
    .line 59
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 60
    .line 61
    invoke-virtual {p0, p2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-object v6
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 7

    .line 1
    const-string v0, "LogicalDisplayMapper:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/util/IndentingPrintWriter;

    .line 7
    .line 8
    const-string v1, "  "

    .line 9
    .line 10
    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 14
    .line 15
    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string/jumbo v1, "mSingleDisplayDemoMode="

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSingleDisplayDemoMode:Z

    .line 25
    .line 26
    const-string/jumbo v2, "mCurrentLayout="

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v1, v0, v2}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string/jumbo v1, "mDeviceStatesOnWhichToWakeUp="

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string/jumbo v1, "mDeviceStatesOnWhichSelectiveSleep="

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSelectiveSleep:Landroid/util/SparseBooleanArray;

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string/jumbo v1, "mInteractive="

    .line 88
    .line 89
    .line 90
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    .line 94
    .line 95
    const-string/jumbo v2, "mBootCompleted="

    .line 96
    .line 97
    .line 98
    invoke-static {p1, v1, v0, v2}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    .line 103
    .line 104
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 115
    .line 116
    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string/jumbo v1, "mDeviceState="

    .line 120
    .line 121
    .line 122
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 126
    .line 127
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string/jumbo v1, "mPendingDeviceState="

    .line 140
    .line 141
    .line 142
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 146
    .line 147
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string/jumbo v1, "mDeviceStateToBeAppliedAfterBoot="

    .line 160
    .line 161
    .line 162
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:I

    .line 166
    .line 167
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 184
    .line 185
    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    const-string v2, "Logical Displays: size="

    .line 189
    .line 190
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    const/4 v1, 0x0

    .line 204
    move v2, v1

    .line 205
    :goto_0
    if-ge v2, p1, :cond_0

    .line 206
    .line 207
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 208
    .line 209
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 214
    .line 215
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    check-cast v4, Lcom/android/server/display/LogicalDisplay;

    .line 220
    .line 221
    new-instance v5, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    const-string v6, "Display "

    .line 224
    .line 225
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v3, ":"

    .line 232
    .line 233
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4, v0}, Lcom/android/server/display/LogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 253
    .line 254
    .line 255
    add-int/lit8 v2, v2, 0x1

    .line 256
    .line 257
    goto :goto_0

    .line 258
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    .line 259
    .line 260
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    const-string p1, "DeviceStateToLayoutMap:"

    .line 264
    .line 265
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 269
    .line 270
    .line 271
    new-instance p1, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    const-string/jumbo v2, "mIsPortInDisplayLayoutEnabled="

    .line 274
    .line 275
    .line 276
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    iget-boolean v2, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mIsPortInDisplayLayoutEnabled:Z

    .line 280
    .line 281
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    const-string p1, "Registered Layouts:"

    .line 292
    .line 293
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    :goto_1
    iget-object p1, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    .line 297
    .line 298
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    if-ge v1, p1, :cond_1

    .line 303
    .line 304
    new-instance p1, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    const-string/jumbo v2, "state("

    .line 307
    .line 308
    .line 309
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    iget-object v2, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    .line 313
    .line 314
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    const-string v2, "): "

    .line 322
    .line 323
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    iget-object v2, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    .line 327
    .line 328
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    add-int/lit8 v1, v1, 0x1

    .line 343
    .line 344
    goto :goto_1

    .line 345
    :cond_1
    return-void
.end method

.method public final finishStateTransitionLocked(Z)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    .line 18
    .line 19
    iget v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 20
    .line 21
    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    move v0, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v0, v2

    .line 38
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSelectiveSleep:Landroid/util/SparseBooleanArray;

    .line 39
    .line 40
    iget v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 41
    .line 42
    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_3

    .line 47
    .line 48
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSelectiveSleep:Landroid/util/SparseBooleanArray;

    .line 49
    .line 50
    iget v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 51
    .line 52
    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_3

    .line 57
    .line 58
    iget-boolean v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    .line 59
    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    iget-boolean v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    .line 63
    .line 64
    if-eqz v4, :cond_3

    .line 65
    .line 66
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

    .line 67
    .line 68
    invoke-virtual {v4}, Lcom/android/server/utils/FoldSettingProvider;->getFoldSettingValue()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    const-string/jumbo v6, "stay_awake_on_fold_key"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-nez v5, :cond_3

    .line 80
    .line 81
    invoke-virtual {v4}, Lcom/android/server/utils/FoldSettingProvider;->getFoldSettingValue()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    const-string/jumbo v5, "selective_stay_awake_key"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_2

    .line 93
    .line 94
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldGracePeriodProvider:Lcom/android/internal/foldables/FoldGracePeriodProvider;

    .line 95
    .line 96
    invoke-virtual {v4}, Lcom/android/internal/foldables/FoldGracePeriodProvider;->isEnabled()Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_2

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    move v4, v3

    .line 104
    goto :goto_2

    .line 105
    :cond_3
    :goto_1
    move v4, v2

    .line 106
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->areAllTransitioningDisplaysOffLocked()Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-eqz v5, :cond_4

    .line 111
    .line 112
    if-nez v0, :cond_4

    .line 113
    .line 114
    if-nez v4, :cond_4

    .line 115
    .line 116
    move v0, v3

    .line 117
    goto :goto_3

    .line 118
    :cond_4
    move v0, v2

    .line 119
    :goto_3
    if-nez v0, :cond_6

    .line 120
    .line 121
    if-eqz p1, :cond_5

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_5
    sget-boolean v1, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    .line 125
    .line 126
    if-eqz v1, :cond_7

    .line 127
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v2, "Not yet ready to transition to state="

    .line 131
    .line 132
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v2, " with displays-off="

    .line 141
    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v2, ", force="

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string p1, ", mInteractive="

    .line 157
    .line 158
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    .line 162
    .line 163
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string p0, ", isReady="

    .line 167
    .line 168
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    const-string p1, "LogicalDisplayMapper"

    .line 179
    .line 180
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_6
    :goto_4
    iget p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 185
    .line 186
    iget v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 187
    .line 188
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->resetLayoutLocked(IIZ)V

    .line 189
    .line 190
    .line 191
    iget p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 192
    .line 193
    iput p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 194
    .line 195
    iput v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 196
    .line 197
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->applyLayoutLocked()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked$1()V

    .line 201
    .line 202
    .line 203
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    .line 204
    .line 205
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 206
    .line 207
    .line 208
    :cond_7
    :goto_5
    return-void
.end method

.method public final forEachLocked(Ljava/util/function/Consumer;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_2

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/server/display/LogicalDisplay;

    .line 17
    .line 18
    iget-boolean v3, v2, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    iget v3, v2, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method

.method public getDisplayGroupIdFromDisplayIdLocked(I)I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    const/4 v0, -0x1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v1, :cond_2

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/android/server/display/DisplayGroup;

    .line 26
    .line 27
    iget-object v3, v3, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    .line 28
    .line 29
    check-cast v3, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0

    .line 44
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    return v0
.end method

.method public final getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/display/DisplayGroup;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getDisplayInfoForStateLocked(II)Landroid/view/DisplayInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "LogicalDisplayMapper"

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string p0, "Cannot get layout for given state:"

    .line 13
    .line 14
    invoke-static {p1, p0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/display/layout/Layout;->getById(I)Lcom/android/server/display/layout/Layout$Display;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string p1, "Cannot get display for given layout:"

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_1
    iget-object v0, p1, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 45
    .line 46
    invoke-virtual {v3, v0}, Lcom/android/server/display/DisplayDeviceRepository;->getByAddressLocked(Landroid/view/DisplayAddress;)Lcom/android/server/display/DisplayDevice;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v3, "), is not available for the display state "

    .line 51
    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v0, "The display device ("

    .line 57
    .line 58
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p1, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 70
    .line 71
    invoke-static {p2, p0, v2}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-object v1

    .line 75
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-nez v0, :cond_3

    .line 80
    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v0, "The logical display associated with address ("

    .line 84
    .line 85
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p1, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    .line 89
    .line 90
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 97
    .line 98
    invoke-static {p2, p0, v2}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-object v1

    .line 102
    :cond_3
    new-instance p0, Landroid/view/DisplayInfo;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-direct {p0, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    .line 109
    .line 110
    .line 111
    iput p2, p0, Landroid/view/DisplayInfo;->displayId:I

    .line 112
    .line 113
    return-object p0
.end method

.method public final getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/LogicalDisplay;

    if-eqz p0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 4
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 5
    iget-object v4, v3, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final resetLayoutLocked(IIZ)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p2}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    move v2, v1

    .line 19
    :goto_0
    if-ge v2, v0, :cond_e

    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 28
    .line 29
    iget v4, v3, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 30
    .line 31
    iget-object v5, v3, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 32
    .line 33
    if-nez v5, :cond_0

    .line 34
    .line 35
    goto/16 :goto_a

    .line 36
    .line 37
    :cond_0
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    iget-object v5, v5, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    if-eqz v5, :cond_1

    .line 45
    .line 46
    invoke-virtual {p1, v5}, Lcom/android/server/display/layout/Layout;->getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move-object v7, v6

    .line 52
    :goto_1
    if-eqz v5, :cond_2

    .line 53
    .line 54
    invoke-virtual {p2, v5}, Lcom/android/server/display/layout/Layout;->getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    :cond_2
    const/4 v5, 0x1

    .line 59
    if-nez v7, :cond_3

    .line 60
    .line 61
    move v8, v5

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    move v8, v1

    .line 64
    :goto_2
    if-nez v6, :cond_4

    .line 65
    .line 66
    move v9, v5

    .line 67
    goto :goto_3

    .line 68
    :cond_4
    move v9, v1

    .line 69
    :goto_3
    if-eq v8, v9, :cond_5

    .line 70
    .line 71
    move v8, v5

    .line 72
    goto :goto_4

    .line 73
    :cond_5
    move v8, v1

    .line 74
    :goto_4
    if-eqz v7, :cond_7

    .line 75
    .line 76
    iget-boolean v9, v7, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    .line 77
    .line 78
    if-eqz v9, :cond_6

    .line 79
    .line 80
    goto :goto_5

    .line 81
    :cond_6
    move v9, v1

    .line 82
    goto :goto_6

    .line 83
    :cond_7
    :goto_5
    move v9, v5

    .line 84
    :goto_6
    if-eqz v6, :cond_9

    .line 85
    .line 86
    iget-boolean v10, v6, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    .line 87
    .line 88
    if-eqz v10, :cond_8

    .line 89
    .line 90
    goto :goto_7

    .line 91
    :cond_8
    move v10, v1

    .line 92
    goto :goto_8

    .line 93
    :cond_9
    :goto_7
    move v10, v5

    .line 94
    :goto_8
    if-eqz v7, :cond_a

    .line 95
    .line 96
    if-eqz v6, :cond_a

    .line 97
    .line 98
    iget v7, v7, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    .line 99
    .line 100
    iget v6, v6, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    .line 101
    .line 102
    if-eq v7, v6, :cond_a

    .line 103
    .line 104
    move v6, v5

    .line 105
    goto :goto_9

    .line 106
    :cond_a
    move v6, v1

    .line 107
    :goto_9
    iget-boolean v7, v3, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    .line 108
    .line 109
    if-nez v7, :cond_b

    .line 110
    .line 111
    if-ne v9, v10, :cond_b

    .line 112
    .line 113
    if-nez v6, :cond_b

    .line 114
    .line 115
    if-eqz v8, :cond_d

    .line 116
    .line 117
    :cond_b
    if-eq p3, v7, :cond_c

    .line 118
    .line 119
    new-instance v6, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v7, "Set isInTransition on display "

    .line 122
    .line 123
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v7, ": "

    .line 130
    .line 131
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    const-string v7, "LogicalDisplayMapper"

    .line 142
    .line 143
    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    :cond_c
    iput-boolean p3, v3, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    .line 147
    .line 148
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    .line 149
    .line 150
    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 151
    .line 152
    .line 153
    :cond_d
    :goto_a
    add-int/lit8 v2, v2, 0x1

    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_e
    return-void
.end method

.method public final sendUpdatesForDisplaysLocked(I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    sub-int/2addr v2, v3

    .line 13
    :goto_0
    if-ltz v2, :cond_28

    .line 14
    .line 15
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 16
    .line 17
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eq v4, v1, :cond_0

    .line 22
    .line 23
    move v5, v3

    .line 24
    goto/16 :goto_13

    .line 25
    .line 26
    :cond_0
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 27
    .line 28
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {v0, v4, v3}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    sget-boolean v6, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    .line 37
    .line 38
    if-eqz v6, :cond_2

    .line 39
    .line 40
    iget-object v6, v5, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 41
    .line 42
    if-nez v6, :cond_1

    .line 43
    .line 44
    const-string/jumbo v6, "null"

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iget-object v6, v6, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 49
    .line 50
    :goto_1
    const-string v8, "LogicalDisplayMapper"

    .line 51
    .line 52
    new-instance v9, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v10, "Sending "

    .line 55
    .line 56
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    packed-switch v1, :pswitch_data_0

    .line 60
    .line 61
    .line 62
    const/4 v10, 0x0

    .line 63
    goto :goto_2

    .line 64
    :pswitch_0
    const-string/jumbo v10, "disconnected"

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :pswitch_1
    const-string/jumbo v10, "connected"

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :pswitch_2
    const-string/jumbo v10, "hdr_sdr_ratio_changed"

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :pswitch_3
    const-string/jumbo v10, "transition"

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :pswitch_4
    const-string/jumbo v10, "framerate_override"

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :pswitch_5
    const-string/jumbo v10, "swapped"

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :pswitch_6
    const-string/jumbo v10, "removed"

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :pswitch_7
    const-string/jumbo v10, "changed"

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :pswitch_8
    const-string v10, "added"

    .line 97
    .line 98
    :goto_2
    const-string v11, " for display="

    .line 99
    .line 100
    const-string v12, " with device="

    .line 101
    .line 102
    invoke-static {v4, v10, v11, v12, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v9, v6, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 109
    .line 110
    iget-object v6, v6, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 111
    .line 112
    invoke-virtual {v6}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    const/4 v8, 0x3

    .line 117
    if-eqz v6, :cond_4

    .line 118
    .line 119
    if-ne v1, v3, :cond_3

    .line 120
    .line 121
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

    .line 122
    .line 123
    invoke-virtual {v6, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_3
    if-ne v1, v8, :cond_4

    .line 128
    .line 129
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

    .line 130
    .line 131
    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 132
    .line 133
    .line 134
    :cond_4
    :goto_3
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/DisplayManagerService$1;

    .line 135
    .line 136
    const/4 v9, 0x0

    .line 137
    const/4 v10, 0x5

    .line 138
    const/16 v11, 0x326

    .line 139
    .line 140
    const/4 v12, 0x7

    .line 141
    const/4 v13, 0x2

    .line 142
    const/4 v14, 0x6

    .line 143
    packed-switch v1, :pswitch_data_1

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    :cond_5
    :goto_4
    move v5, v3

    .line 150
    goto/16 :goto_12

    .line 151
    .line 152
    :pswitch_9
    iget-object v6, v6, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 153
    .line 154
    iget-object v9, v6, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 155
    .line 156
    iget-object v9, v9, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 157
    .line 158
    invoke-virtual {v9}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 159
    .line 160
    .line 161
    move-result v9

    .line 162
    if-nez v9, :cond_6

    .line 163
    .line 164
    const-string v5, "DisplayManagerService"

    .line 165
    .line 166
    const-string v6, "DisplayDisconnected shouldn\'t be received when the flag is off"

    .line 167
    .line 168
    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_6
    invoke-virtual {v6, v5, v12}, Lcom/android/server/display/DisplayManagerService;->releaseDisplayAndEmitEvent(Lcom/android/server/display/LogicalDisplay;I)V

    .line 173
    .line 174
    .line 175
    iget-object v6, v6, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayPolicy:Lcom/android/server/display/ExternalDisplayPolicy;

    .line 176
    .line 177
    iget-object v9, v6, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 178
    .line 179
    iget-object v9, v9, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 180
    .line 181
    invoke-virtual {v9}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    if-nez v9, :cond_7

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_7
    iget v5, v5, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 189
    .line 190
    iget-object v9, v6, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    .line 191
    .line 192
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v10

    .line 196
    check-cast v9, Ljava/util/HashSet;

    .line 197
    .line 198
    invoke-virtual {v9, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v9

    .line 202
    if-eqz v9, :cond_8

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_8
    iget-object v6, v6, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 206
    .line 207
    const-string/jumbo v9, "logStateDisconnected displayId="

    .line 208
    .line 209
    .line 210
    iget-object v10, v6, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 211
    .line 212
    monitor-enter v10

    .line 213
    :try_start_0
    iget-object v12, v6, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 214
    .line 215
    invoke-virtual {v12, v5, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 216
    .line 217
    .line 218
    move-result v12

    .line 219
    if-ne v12, v3, :cond_a

    .line 220
    .line 221
    sget-boolean v6, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    .line 222
    .line 223
    if-eqz v6, :cond_9

    .line 224
    .line 225
    const-string v6, "ExternalDisplayStatsService"

    .line 226
    .line 227
    new-instance v11, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string v5, " already disconnected"

    .line 236
    .line 237
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    goto :goto_5

    .line 248
    :catchall_0
    move-exception v0

    .line 249
    goto :goto_6

    .line 250
    :cond_9
    :goto_5
    monitor-exit v10

    .line 251
    goto :goto_4

    .line 252
    :cond_a
    iget-object v9, v6, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 253
    .line 254
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    .line 255
    .line 256
    .line 257
    move-result v9

    .line 258
    iget-object v13, v6, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 259
    .line 260
    invoke-virtual {v13, v5}, Landroid/util/SparseIntArray;->delete(I)V

    .line 261
    .line 262
    .line 263
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    iget-object v10, v6, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 265
    .line 266
    iget-boolean v13, v6, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 267
    .line 268
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    invoke-static {v11, v3, v9, v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZ)V

    .line 272
    .line 273
    .line 274
    sget-boolean v10, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    .line 275
    .line 276
    if-eqz v10, :cond_b

    .line 277
    .line 278
    const-string v10, "ExternalDisplayStatsService"

    .line 279
    .line 280
    const-string/jumbo v11, "logStateDisconnected displayId="

    .line 281
    .line 282
    .line 283
    const-string v13, " countOfExternalDisplays="

    .line 284
    .line 285
    const-string v14, " currentState="

    .line 286
    .line 287
    invoke-static {v5, v9, v11, v13, v14}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string v11, " state=1 mIsExternalDisplayUsedForAudio="

    .line 295
    .line 296
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    iget-boolean v11, v6, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 300
    .line 301
    invoke-static {v10, v5, v11}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 302
    .line 303
    .line 304
    :cond_b
    if-ne v9, v3, :cond_5

    .line 305
    .line 306
    iget-object v5, v6, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 307
    .line 308
    iget-object v5, v5, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mHandler:Landroid/os/Handler;

    .line 309
    .line 310
    new-instance v9, Lcom/android/server/display/ExternalDisplayStatsService$$ExternalSyntheticLambda0;

    .line 311
    .line 312
    const/4 v10, 0x0

    .line 313
    invoke-direct {v9, v6, v10}, Lcom/android/server/display/ExternalDisplayStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/ExternalDisplayStatsService;I)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v5, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 317
    .line 318
    .line 319
    goto/16 :goto_4

    .line 320
    .line 321
    :goto_6
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    throw v0

    .line 323
    :pswitch_a
    iget-object v6, v6, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 324
    .line 325
    iget-object v10, v6, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 326
    .line 327
    iget-object v10, v10, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 328
    .line 329
    invoke-virtual {v10}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 330
    .line 331
    .line 332
    move-result v10

    .line 333
    if-nez v10, :cond_c

    .line 334
    .line 335
    const-string v5, "DisplayManagerService"

    .line 336
    .line 337
    const-string v6, "DisplayConnected shouldn\'t be received when the flag is off"

    .line 338
    .line 339
    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    goto/16 :goto_4

    .line 343
    .line 344
    :cond_c
    invoke-virtual {v6, v5}, Lcom/android/server/display/DisplayManagerService;->setupLogicalDisplay(Lcom/android/server/display/LogicalDisplay;)V

    .line 345
    .line 346
    .line 347
    invoke-static {v5}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    .line 348
    .line 349
    .line 350
    move-result v10

    .line 351
    if-eqz v10, :cond_d

    .line 352
    .line 353
    iget-object v10, v6, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayPolicy:Lcom/android/server/display/ExternalDisplayPolicy;

    .line 354
    .line 355
    invoke-virtual {v10, v5}, Lcom/android/server/display/ExternalDisplayPolicy;->handleExternalDisplayConnectedLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 356
    .line 357
    .line 358
    goto :goto_7

    .line 359
    :cond_d
    invoke-virtual {v6, v5, v14}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    .line 360
    .line 361
    .line 362
    :goto_7
    iget-object v10, v5, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 363
    .line 364
    invoke-virtual {v6, v10}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    .line 365
    .line 366
    .line 367
    move-result-object v10

    .line 368
    if-eqz v10, :cond_e

    .line 369
    .line 370
    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    .line 371
    .line 372
    .line 373
    :cond_e
    invoke-virtual {v6, v9}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 374
    .line 375
    .line 376
    iget-boolean v9, v6, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    .line 377
    .line 378
    if-eqz v9, :cond_5

    .line 379
    .line 380
    invoke-virtual {v5}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 381
    .line 382
    .line 383
    move-result-object v5

    .line 384
    iget v5, v5, Landroid/view/DisplayInfo;->type:I

    .line 385
    .line 386
    if-ne v5, v13, :cond_5

    .line 387
    .line 388
    iget-object v5, v6, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    .line 389
    .line 390
    new-instance v9, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda15;

    .line 391
    .line 392
    const/4 v10, 0x4

    .line 393
    invoke-direct {v9, v6, v10}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/display/DisplayManagerService;I)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v5, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 397
    .line 398
    .line 399
    iget-object v5, v6, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 400
    .line 401
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDeviceRepository;->isDexDisplayDeviceEnabledLocked()Z

    .line 402
    .line 403
    .line 404
    move-result v6

    .line 405
    if-nez v6, :cond_5

    .line 406
    .line 407
    iput-boolean v3, v5, Lcom/android/server/display/DisplayDeviceRepository;->mNeedWakeLock:Z

    .line 408
    .line 409
    goto/16 :goto_4

    .line 410
    .line 411
    :pswitch_b
    iget-object v6, v6, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 412
    .line 413
    invoke-virtual {v6, v5, v10}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventIfEnabledLocked(Lcom/android/server/display/LogicalDisplay;I)V

    .line 414
    .line 415
    .line 416
    goto/16 :goto_4

    .line 417
    .line 418
    :pswitch_c
    iget-object v6, v6, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 419
    .line 420
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 421
    .line 422
    .line 423
    iget v10, v5, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 424
    .line 425
    iget-object v11, v6, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 426
    .line 427
    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v11

    .line 431
    check-cast v11, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 432
    .line 433
    if-eqz v11, :cond_5

    .line 434
    .line 435
    iget v12, v5, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    .line 436
    .line 437
    sget-boolean v13, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    .line 438
    .line 439
    if-eqz v13, :cond_f

    .line 440
    .line 441
    sget-boolean v14, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    .line 442
    .line 443
    if-nez v14, :cond_f

    .line 444
    .line 445
    if-ne v10, v3, :cond_f

    .line 446
    .line 447
    iget v10, v6, Lcom/android/server/display/DisplayManagerService;->mDualScreenPolicy:I

    .line 448
    .line 449
    const/4 v14, -0x1

    .line 450
    if-ne v10, v14, :cond_f

    .line 451
    .line 452
    goto :goto_8

    .line 453
    :cond_f
    move v9, v12

    .line 454
    :goto_8
    invoke-virtual {v6, v11, v9}, Lcom/android/server/display/DisplayManagerService;->updateDisplayPowerControllerLeaderLocked(Lcom/android/server/display/DisplayPowerControllerInterface;I)V

    .line 455
    .line 456
    .line 457
    iget-object v6, v6, Lcom/android/server/display/DisplayManagerService;->mHighBrightnessModeMetadataMapper:Lcom/android/server/display/HighBrightnessModeMetadataMapper;

    .line 458
    .line 459
    invoke-virtual {v6, v5}, Lcom/android/server/display/HighBrightnessModeMetadataMapper;->getHighBrightnessModeMetadataLocked(Lcom/android/server/display/LogicalDisplay;)Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 460
    .line 461
    .line 462
    move-result-object v6

    .line 463
    invoke-virtual {v5}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 464
    .line 465
    .line 466
    move-result-object v5

    .line 467
    if-nez v6, :cond_10

    .line 468
    .line 469
    if-eqz v13, :cond_5

    .line 470
    .line 471
    iget v5, v5, Landroid/view/DisplayInfo;->type:I

    .line 472
    .line 473
    if-ne v5, v3, :cond_5

    .line 474
    .line 475
    :cond_10
    check-cast v11, Lcom/android/server/display/DisplayPowerController;

    .line 476
    .line 477
    invoke-virtual {v11, v6, v9}, Lcom/android/server/display/DisplayPowerController;->onDisplayChanged(Lcom/android/server/display/HighBrightnessModeMetadata;I)V

    .line 478
    .line 479
    .line 480
    goto/16 :goto_4

    .line 481
    .line 482
    :pswitch_d
    iget-object v6, v6, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 483
    .line 484
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 485
    .line 486
    .line 487
    iget v5, v5, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 488
    .line 489
    iget-object v10, v6, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 490
    .line 491
    invoke-virtual {v10, v12, v5, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 492
    .line 493
    .line 494
    move-result-object v5

    .line 495
    invoke-virtual {v10, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 496
    .line 497
    .line 498
    invoke-virtual {v6, v9}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 499
    .line 500
    .line 501
    goto/16 :goto_4

    .line 502
    .line 503
    :pswitch_e
    iget-object v6, v6, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 504
    .line 505
    invoke-virtual {v6, v5}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 506
    .line 507
    .line 508
    iget v9, v5, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 509
    .line 510
    if-nez v9, :cond_11

    .line 511
    .line 512
    iget-object v5, v5, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 513
    .line 514
    iget-object v5, v5, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 515
    .line 516
    iget-object v9, v6, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 517
    .line 518
    invoke-virtual {v9, v5}, Lcom/android/server/display/mode/DisplayModeDirector;->defaultDisplayDeviceUpdated(Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 519
    .line 520
    .line 521
    :cond_11
    iget-object v5, v6, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 522
    .line 523
    invoke-virtual {v5, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 524
    .line 525
    .line 526
    goto/16 :goto_4

    .line 527
    .line 528
    :pswitch_f
    iget-object v6, v6, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 529
    .line 530
    iget-object v9, v6, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 531
    .line 532
    iget-object v9, v9, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 533
    .line 534
    invoke-virtual {v9}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 535
    .line 536
    .line 537
    move-result v9

    .line 538
    if-eqz v9, :cond_13

    .line 539
    .line 540
    iget-object v9, v5, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 541
    .line 542
    if-eqz v9, :cond_12

    .line 543
    .line 544
    invoke-virtual {v6, v5}, Lcom/android/server/display/DisplayManagerService;->updateViewportPowerStateLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 545
    .line 546
    .line 547
    :cond_12
    invoke-virtual {v6, v5, v8}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    .line 548
    .line 549
    .line 550
    iget-object v9, v5, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 551
    .line 552
    if-eqz v9, :cond_5

    .line 553
    .line 554
    invoke-virtual {v6, v5}, Lcom/android/server/display/DisplayManagerService;->applyDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 555
    .line 556
    .line 557
    goto/16 :goto_4

    .line 558
    .line 559
    :cond_13
    invoke-virtual {v6, v5, v8}, Lcom/android/server/display/DisplayManagerService;->releaseDisplayAndEmitEvent(Lcom/android/server/display/LogicalDisplay;I)V

    .line 560
    .line 561
    .line 562
    goto/16 :goto_4

    .line 563
    .line 564
    :pswitch_10
    iget-object v6, v6, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 565
    .line 566
    invoke-virtual {v6, v5}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 567
    .line 568
    .line 569
    goto/16 :goto_4

    .line 570
    .line 571
    :pswitch_11
    iget-object v6, v6, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 572
    .line 573
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 574
    .line 575
    .line 576
    iget v12, v5, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 577
    .line 578
    if-nez v12, :cond_14

    .line 579
    .line 580
    move v15, v3

    .line 581
    goto :goto_9

    .line 582
    :cond_14
    move v15, v9

    .line 583
    :goto_9
    iget-object v7, v6, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 584
    .line 585
    iget-object v7, v7, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 586
    .line 587
    invoke-virtual {v7}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 588
    .line 589
    .line 590
    move-result v7

    .line 591
    if-nez v7, :cond_15

    .line 592
    .line 593
    invoke-virtual {v6, v5}, Lcom/android/server/display/DisplayManagerService;->setupLogicalDisplay(Lcom/android/server/display/LogicalDisplay;)V

    .line 594
    .line 595
    .line 596
    :cond_15
    if-eqz v15, :cond_16

    .line 597
    .line 598
    iget-object v7, v6, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 599
    .line 600
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 601
    .line 602
    .line 603
    :cond_16
    invoke-virtual {v6, v5, v3}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventIfEnabledLocked(Lcom/android/server/display/LogicalDisplay;I)V

    .line 604
    .line 605
    .line 606
    iget-object v7, v5, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 607
    .line 608
    invoke-virtual {v6, v7}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    .line 609
    .line 610
    .line 611
    move-result-object v7

    .line 612
    if-eqz v7, :cond_17

    .line 613
    .line 614
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 615
    .line 616
    .line 617
    :cond_17
    invoke-virtual {v6, v9}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 618
    .line 619
    .line 620
    iget-object v7, v6, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayPolicy:Lcom/android/server/display/ExternalDisplayPolicy;

    .line 621
    .line 622
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 623
    .line 624
    .line 625
    invoke-static {v5}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    .line 626
    .line 627
    .line 628
    move-result v15

    .line 629
    if-nez v15, :cond_18

    .line 630
    .line 631
    goto/16 :goto_11

    .line 632
    .line 633
    :cond_18
    iget-object v15, v7, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 634
    .line 635
    iget-object v15, v15, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 636
    .line 637
    invoke-virtual {v15}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 638
    .line 639
    .line 640
    move-result v15

    .line 641
    if-nez v15, :cond_19

    .line 642
    .line 643
    goto/16 :goto_11

    .line 644
    .line 645
    :cond_19
    iget-object v7, v7, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 646
    .line 647
    iget v15, v5, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 648
    .line 649
    iget-object v8, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 650
    .line 651
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 652
    .line 653
    .line 654
    :try_start_2
    iget-object v8, v8, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mContext:Landroid/content/Context;

    .line 655
    .line 656
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 657
    .line 658
    .line 659
    move-result-object v8

    .line 660
    const-string/jumbo v13, "force_desktop_mode_on_external_displays"

    .line 661
    .line 662
    .line 663
    invoke-static {v8, v13, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 664
    .line 665
    .line 666
    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 667
    if-eqz v8, :cond_1f

    .line 668
    .line 669
    iget-object v8, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 670
    .line 671
    monitor-enter v8

    .line 672
    :try_start_3
    iget-object v10, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 673
    .line 674
    invoke-virtual {v10, v15, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 675
    .line 676
    .line 677
    move-result v10

    .line 678
    if-eq v10, v3, :cond_1e

    .line 679
    .line 680
    if-ne v10, v14, :cond_1a

    .line 681
    .line 682
    goto/16 :goto_c

    .line 683
    .line 684
    :cond_1a
    :goto_a
    iget-object v13, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 685
    .line 686
    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    .line 687
    .line 688
    .line 689
    move-result v13

    .line 690
    if-ge v9, v13, :cond_1d

    .line 691
    .line 692
    iget-object v13, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 693
    .line 694
    invoke-virtual {v13, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 695
    .line 696
    .line 697
    move-result v13

    .line 698
    if-eq v13, v15, :cond_1c

    .line 699
    .line 700
    :cond_1b
    move v3, v14

    .line 701
    goto :goto_b

    .line 702
    :cond_1c
    iget-object v13, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 703
    .line 704
    invoke-virtual {v13, v15, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 705
    .line 706
    .line 707
    iget-object v13, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 708
    .line 709
    add-int/lit8 v3, v9, 0x1

    .line 710
    .line 711
    iget-boolean v11, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 712
    .line 713
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 714
    .line 715
    .line 716
    const/16 v13, 0x326

    .line 717
    .line 718
    invoke-static {v13, v14, v3, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZ)V

    .line 719
    .line 720
    .line 721
    sget-boolean v11, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    .line 722
    .line 723
    if-eqz v11, :cond_1b

    .line 724
    .line 725
    const-string v11, "ExternalDisplayStatsService"

    .line 726
    .line 727
    new-instance v13, Ljava/lang/StringBuilder;

    .line 728
    .line 729
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 730
    .line 731
    .line 732
    const-string/jumbo v14, "logStateExtended displayId="

    .line 733
    .line 734
    .line 735
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    .line 737
    .line 738
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    const-string v14, " countOfExternalDisplays="

    .line 742
    .line 743
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    const-string v3, " currentState="

    .line 750
    .line 751
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    .line 753
    .line 754
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    const-string v3, " state="

    .line 758
    .line 759
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    .line 761
    .line 762
    const/4 v3, 0x6

    .line 763
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    const-string v14, " mIsExternalDisplayUsedForAudio="

    .line 767
    .line 768
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    iget-boolean v14, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 772
    .line 773
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 774
    .line 775
    .line 776
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v13

    .line 780
    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    .line 782
    .line 783
    goto :goto_b

    .line 784
    :catchall_1
    move-exception v0

    .line 785
    goto :goto_d

    .line 786
    :goto_b
    add-int/lit8 v9, v9, 0x1

    .line 787
    .line 788
    move v14, v3

    .line 789
    const/4 v3, 0x1

    .line 790
    const/16 v11, 0x326

    .line 791
    .line 792
    goto :goto_a

    .line 793
    :cond_1d
    monitor-exit v8

    .line 794
    goto/16 :goto_11

    .line 795
    .line 796
    :cond_1e
    :goto_c
    monitor-exit v8

    .line 797
    goto/16 :goto_11

    .line 798
    .line 799
    :goto_d
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 800
    throw v0

    .line 801
    :catchall_2
    :cond_1f
    iget-object v3, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 802
    .line 803
    monitor-enter v3

    .line 804
    :try_start_4
    iget-object v8, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 805
    .line 806
    const/4 v11, 0x1

    .line 807
    invoke-virtual {v8, v15, v11}, Landroid/util/SparseIntArray;->get(II)I

    .line 808
    .line 809
    .line 810
    move-result v8

    .line 811
    if-eq v8, v11, :cond_24

    .line 812
    .line 813
    if-ne v8, v10, :cond_20

    .line 814
    .line 815
    goto :goto_10

    .line 816
    :cond_20
    :goto_e
    iget-object v11, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 817
    .line 818
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    .line 819
    .line 820
    .line 821
    move-result v11

    .line 822
    if-ge v9, v11, :cond_23

    .line 823
    .line 824
    iget-object v11, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 825
    .line 826
    invoke-virtual {v11, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 827
    .line 828
    .line 829
    move-result v11

    .line 830
    if-eq v11, v15, :cond_21

    .line 831
    .line 832
    goto :goto_f

    .line 833
    :cond_21
    iget-object v11, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 834
    .line 835
    invoke-virtual {v11, v15, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 836
    .line 837
    .line 838
    iget-object v11, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 839
    .line 840
    add-int/lit8 v13, v9, 0x1

    .line 841
    .line 842
    iget-boolean v14, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 843
    .line 844
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 845
    .line 846
    .line 847
    const/16 v11, 0x326

    .line 848
    .line 849
    invoke-static {v11, v10, v13, v14}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZ)V

    .line 850
    .line 851
    .line 852
    sget-boolean v14, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    .line 853
    .line 854
    if-eqz v14, :cond_22

    .line 855
    .line 856
    const-string v14, "ExternalDisplayStatsService"

    .line 857
    .line 858
    new-instance v11, Ljava/lang/StringBuilder;

    .line 859
    .line 860
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 861
    .line 862
    .line 863
    const-string/jumbo v10, "logStateMirroring displayId="

    .line 864
    .line 865
    .line 866
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    .line 868
    .line 869
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 870
    .line 871
    .line 872
    const-string v10, " countOfExternalDisplays="

    .line 873
    .line 874
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    .line 876
    .line 877
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 878
    .line 879
    .line 880
    const-string v10, " currentState="

    .line 881
    .line 882
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    .line 884
    .line 885
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 886
    .line 887
    .line 888
    const-string v10, " state="

    .line 889
    .line 890
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    .line 892
    .line 893
    const/4 v10, 0x5

    .line 894
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 895
    .line 896
    .line 897
    const-string v13, " mIsExternalDisplayUsedForAudio="

    .line 898
    .line 899
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    .line 901
    .line 902
    iget-boolean v13, v7, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 903
    .line 904
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 905
    .line 906
    .line 907
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 908
    .line 909
    .line 910
    move-result-object v11

    .line 911
    invoke-static {v14, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    .line 913
    .line 914
    goto :goto_f

    .line 915
    :catchall_3
    move-exception v0

    .line 916
    goto :goto_14

    .line 917
    :cond_22
    :goto_f
    add-int/lit8 v9, v9, 0x1

    .line 918
    .line 919
    goto :goto_e

    .line 920
    :cond_23
    monitor-exit v3

    .line 921
    goto :goto_11

    .line 922
    :cond_24
    :goto_10
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 923
    :goto_11
    iget-boolean v3, v6, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    .line 924
    .line 925
    if-eqz v3, :cond_25

    .line 926
    .line 927
    invoke-virtual {v5}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 928
    .line 929
    .line 930
    move-result-object v3

    .line 931
    iget v3, v3, Landroid/view/DisplayInfo;->type:I

    .line 932
    .line 933
    const/4 v5, 0x2

    .line 934
    if-ne v3, v5, :cond_25

    .line 935
    .line 936
    iput v12, v6, Lcom/android/server/display/DisplayManagerService;->mConnectedExternalDisplayId:I

    .line 937
    .line 938
    iget-object v3, v6, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    .line 939
    .line 940
    new-instance v5, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda15;

    .line 941
    .line 942
    const/4 v7, 0x0

    .line 943
    invoke-direct {v5, v6, v7}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/display/DisplayManagerService;I)V

    .line 944
    .line 945
    .line 946
    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 947
    .line 948
    .line 949
    iget-object v3, v6, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 950
    .line 951
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceRepository;->isDexDisplayDeviceEnabledLocked()Z

    .line 952
    .line 953
    .line 954
    move-result v3

    .line 955
    if-nez v3, :cond_25

    .line 956
    .line 957
    iget-object v3, v6, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 958
    .line 959
    const/4 v5, 0x1

    .line 960
    iput-boolean v5, v3, Lcom/android/server/display/DisplayDeviceRepository;->mNeedWakeLock:Z

    .line 961
    .line 962
    goto :goto_12

    .line 963
    :cond_25
    const/4 v5, 0x1

    .line 964
    :goto_12
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 965
    .line 966
    iget-object v3, v3, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 967
    .line 968
    invoke-virtual {v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 969
    .line 970
    .line 971
    move-result v3

    .line 972
    if-eqz v3, :cond_26

    .line 973
    .line 974
    const/16 v3, 0x9

    .line 975
    .line 976
    if-ne v1, v3, :cond_27

    .line 977
    .line 978
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 979
    .line 980
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V

    .line 981
    .line 982
    .line 983
    goto :goto_13

    .line 984
    :cond_26
    const/4 v3, 0x3

    .line 985
    if-ne v1, v3, :cond_27

    .line 986
    .line 987
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 988
    .line 989
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V

    .line 990
    .line 991
    .line 992
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mHiddenSpaceDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 993
    .line 994
    if-eqz v3, :cond_27

    .line 995
    .line 996
    iget v3, v3, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 997
    .line 998
    if-ne v3, v4, :cond_27

    .line 999
    .line 1000
    const/4 v3, 0x0

    .line 1001
    iput-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mHiddenSpaceDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 1002
    .line 1003
    :cond_27
    :goto_13
    add-int/lit8 v2, v2, -0x1

    .line 1004
    .line 1005
    move v3, v5

    .line 1006
    goto/16 :goto_0

    .line 1007
    .line 1008
    :goto_14
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1009
    throw v0

    .line 1010
    :cond_28
    return-void

    .line 1011
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public final sendUpdatesForGroupsLocked(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eq v1, p1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/DisplayManagerService$1;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 29
    .line 30
    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 31
    .line 32
    const/16 v3, 0x8

    .line 33
    .line 34
    invoke-virtual {v2, v3, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x3

    .line 42
    if-ne p1, v2, :cond_1

    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    .line 50
    .line 51
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-ltz v1, :cond_1

    .line 56
    .line 57
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    .line 58
    .line 59
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    return-void
.end method

.method public final setDeviceStateLocked(I)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    .line 2
    .line 3
    const-string v1, "Postponing transition to state: "

    .line 4
    .line 5
    sget-boolean v2, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    .line 6
    .line 7
    const-string v3, "LogicalDisplayMapper"

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 19
    .line 20
    const-string v2, " until boot is completed"

    .line 21
    .line 22
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iput p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:I

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    const-string v0, "Requesting Transition to state: "

    .line 29
    .line 30
    const-string v4, ", from state="

    .line 31
    .line 32
    invoke-static {p1, v0, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 37
    .line 38
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v4, ", interactive="

    .line 42
    .line 43
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-boolean v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    .line 47
    .line 48
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v4, ", mBootCompleted="

    .line 52
    .line 53
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-boolean v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    .line 57
    .line 58
    invoke-static {v3, v0, v4}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 59
    .line 60
    .line 61
    iget v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 62
    .line 63
    const/4 v4, 0x1

    .line 64
    invoke-virtual {p0, v0, p1, v4}, Lcom/android/server/display/LogicalDisplayMapper;->resetLayoutLocked(IIZ)V

    .line 65
    .line 66
    .line 67
    iput p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 68
    .line 69
    const/4 v0, -0x1

    .line 70
    iput v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:I

    .line 71
    .line 72
    iget v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 73
    .line 74
    iget-boolean v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    .line 75
    .line 76
    iget-boolean v7, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    .line 77
    .line 78
    invoke-virtual {p0, p1, v5, v6, v7}, Lcom/android/server/display/LogicalDisplayMapper;->shouldDeviceBeWoken(IIZZ)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    iget v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 83
    .line 84
    iget v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 85
    .line 86
    iget-boolean v7, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    .line 87
    .line 88
    iget-boolean v8, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    .line 89
    .line 90
    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/server/display/LogicalDisplayMapper;->shouldDeviceBePutToSleep(IIZZ)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->areAllTransitioningDisplaysOffLocked()Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    const/4 v7, 0x0

    .line 99
    if-eqz v6, :cond_2

    .line 100
    .line 101
    if-nez p1, :cond_2

    .line 102
    .line 103
    if-nez v5, :cond_2

    .line 104
    .line 105
    iget p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 106
    .line 107
    iget v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 108
    .line 109
    invoke-virtual {p0, p1, v1, v7}, Lcom/android/server/display/LogicalDisplayMapper;->resetLayoutLocked(IIZ)V

    .line 110
    .line 111
    .line 112
    iget p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 113
    .line 114
    iput p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 115
    .line 116
    iput v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->applyLayoutLocked()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked$1()V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_2
    if-eqz v2, :cond_3

    .line 126
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 133
    .line 134
    invoke-static {v0, v1, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked$1()V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    .line 141
    .line 142
    if-nez p1, :cond_4

    .line 143
    .line 144
    if-eqz v5, :cond_7

    .line 145
    .line 146
    :cond_4
    if-eqz p1, :cond_5

    .line 147
    .line 148
    new-instance p1, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda0;

    .line 149
    .line 150
    invoke-direct {p1, p0}, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/LogicalDisplayMapper;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_5
    if-eqz v5, :cond_7

    .line 158
    .line 159
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/android/server/utils/FoldSettingProvider;->getFoldSettingValue()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    const-string/jumbo v1, "sleep_on_fold_key"

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_6

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_6
    const/4 v7, 0x2

    .line 176
    :goto_0
    new-instance p1, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda1;

    .line 177
    .line 178
    invoke-direct {p1, p0, v7}, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/LogicalDisplayMapper;I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    .line 183
    .line 184
    :cond_7
    :goto_1
    const-wide/16 p0, 0xbb8

    .line 185
    .line 186
    invoke-virtual {v0, v4, p0, p1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 187
    .line 188
    .line 189
    return-void
.end method

.method public final setDisplayEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 2
    .line 3
    if-ne v0, p2, :cond_1

    .line 4
    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string p2, "Display is already "

    .line 8
    .line 9
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string/jumbo p2, "enabled"

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string/jumbo p2, "disabled"

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p2, ": "

    .line 25
    .line 26
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget p1, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 30
    .line 31
    const-string p2, "LogicalDisplayMapper"

    .line 32
    .line 33
    invoke-static {p0, p1, p2}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LogicalDisplayMapper;->setEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked$1()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final setEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V
    .locals 4

    .line 1
    iget v0, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSingleDisplayDemoMode:Z

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    iget p0, v1, Landroid/view/DisplayInfo;->type:I

    .line 14
    .line 15
    if-eq p0, v2, :cond_0

    .line 16
    .line 17
    move p0, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p0, v3

    .line 20
    :goto_0
    const-string v1, "LogicalDisplayMapper"

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    new-instance p0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string p2, "Not creating a logical display for a secondary display because single display demo mode is enabled: "

    .line 29
    .line 30
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move p2, v3

    .line 48
    :cond_1
    iget-boolean p0, p1, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 49
    .line 50
    if-eq p0, p2, :cond_2

    .line 51
    .line 52
    new-instance p0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v3, "SetEnabled on display "

    .line 55
    .line 56
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, ": "

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    iget-boolean p0, p1, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 78
    .line 79
    if-eq p2, p0, :cond_2

    .line 80
    .line 81
    iput-boolean v2, p1, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 82
    .line 83
    iput-boolean p2, p1, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 84
    .line 85
    :cond_2
    return-void
.end method

.method public shouldDeviceBePutToSleep(IIZZ)Z
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p2, v0, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSelectiveSleep:Landroid/util/SparseBooleanArray;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSelectiveSleep:Landroid/util/SparseBooleanArray;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    if-eqz p4, :cond_0

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/utils/FoldSettingProvider;->getFoldSettingValue()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string/jumbo p1, "stay_awake_on_fold_key"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_0

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p0, 0x0

    .line 42
    :goto_0
    return p0
.end method

.method public shouldDeviceBeWoken(IIZZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    if-nez p3, :cond_0

    .line 18
    .line 19
    if-eqz p4, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public updateLogicalDisplays()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked$1()V

    .line 5
    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p0
.end method

.method public final updateLogicalDisplaysLocked(IZ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    sub-int/2addr v2, v3

    .line 13
    const/4 v4, 0x0

    .line 14
    move v5, v4

    .line 15
    :goto_0
    const/16 v10, 0x8

    .line 16
    .line 17
    iget-object v13, v0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 18
    .line 19
    const-string v14, "LogicalDisplayMapper"

    .line 20
    .line 21
    if-ltz v2, :cond_1d

    .line 22
    .line 23
    iget-object v15, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 26
    .line 27
    .line 28
    move-result v15

    .line 29
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    check-cast v6, Lcom/android/server/display/LogicalDisplay;

    .line 36
    .line 37
    invoke-virtual {v0, v6}, Lcom/android/server/display/LogicalDisplayMapper;->assignDisplayGroupLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 38
    .line 39
    .line 40
    iget-boolean v7, v6, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 41
    .line 42
    iget-object v11, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 43
    .line 44
    invoke-virtual {v6}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v12

    .line 48
    invoke-virtual {v11, v12}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 49
    .line 50
    .line 51
    iget-object v11, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 52
    .line 53
    iget-object v12, v6, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 54
    .line 55
    invoke-virtual {v11, v12}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 56
    .line 57
    .line 58
    iget-object v11, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 59
    .line 60
    iget-object v12, v0, Lcom/android/server/display/LogicalDisplayMapper;->mSyntheticModeManager:Lcom/android/server/display/mode/SyntheticModeManager;

    .line 61
    .line 62
    invoke-virtual {v6, v11, v12}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/mode/SyntheticModeManager;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 66
    .line 67
    .line 68
    move-result-object v12

    .line 69
    iget-object v8, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    .line 70
    .line 71
    invoke-virtual {v8, v15, v4}, Landroid/util/SparseIntArray;->get(II)I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    if-eqz v8, :cond_0

    .line 76
    .line 77
    move/from16 v16, v3

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_0
    move/from16 v16, v4

    .line 81
    .line 82
    :goto_1
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

    .line 83
    .line 84
    invoke-virtual {v4, v15}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    iget-boolean v9, v6, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 89
    .line 90
    iget-object v3, v6, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 91
    .line 92
    if-eqz v3, :cond_18

    .line 93
    .line 94
    if-nez v16, :cond_3

    .line 95
    .line 96
    iget-object v3, v13, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_1

    .line 103
    .line 104
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 105
    .line 106
    invoke-virtual {v3, v15, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 107
    .line 108
    .line 109
    const/4 v4, 0x2

    .line 110
    const/4 v5, 0x1

    .line 111
    goto/16 :goto_5

    .line 112
    .line 113
    :cond_1
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 114
    .line 115
    const/4 v4, 0x1

    .line 116
    invoke-virtual {v3, v15, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 117
    .line 118
    .line 119
    :cond_2
    :goto_2
    const/4 v4, 0x2

    .line 120
    goto/16 :goto_5

    .line 121
    .line 122
    :cond_3
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 123
    .line 124
    iget-object v3, v3, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 125
    .line 126
    iget-object v10, v12, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {v3, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-nez v3, :cond_4

    .line 133
    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v4, "Swapping new display: "

    .line 137
    .line 138
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v4, ": "

    .line 145
    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-static {v14, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 160
    .line 161
    const/4 v4, 0x4

    .line 162
    invoke-virtual {v3, v15, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_4
    iget-object v3, v13, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 167
    .line 168
    invoke-virtual {v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-eqz v3, :cond_7

    .line 173
    .line 174
    if-eq v4, v9, :cond_7

    .line 175
    .line 176
    iget v3, v12, Landroid/view/DisplayInfo;->type:I

    .line 177
    .line 178
    const/4 v4, 0x1

    .line 179
    if-ne v3, v4, :cond_5

    .line 180
    .line 181
    if-eqz v9, :cond_7

    .line 182
    .line 183
    :cond_5
    if-eqz v9, :cond_6

    .line 184
    .line 185
    const/4 v3, 0x1

    .line 186
    goto :goto_3

    .line 187
    :cond_6
    const/4 v3, 0x3

    .line 188
    :goto_3
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 189
    .line 190
    invoke-virtual {v4, v15, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_7
    if-nez v7, :cond_8

    .line 195
    .line 196
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 197
    .line 198
    invoke-virtual {v3, v12}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-nez v3, :cond_9

    .line 203
    .line 204
    :cond_8
    const/4 v4, 0x2

    .line 205
    goto :goto_4

    .line 206
    :cond_9
    const/4 v3, 0x1

    .line 207
    if-ne v8, v3, :cond_a

    .line 208
    .line 209
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 210
    .line 211
    const/4 v4, 0x6

    .line 212
    invoke-virtual {v3, v15, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 213
    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_a
    iget-object v3, v6, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    .line 217
    .line 218
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    if-nez v3, :cond_b

    .line 223
    .line 224
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 225
    .line 226
    const/4 v4, 0x5

    .line 227
    invoke-virtual {v3, v15, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 228
    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_b
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 232
    .line 233
    iget-object v4, v6, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 234
    .line 235
    invoke-virtual {v3, v4}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 236
    .line 237
    .line 238
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 239
    .line 240
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 241
    .line 242
    invoke-virtual {v3, v4}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-nez v3, :cond_2

    .line 247
    .line 248
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 249
    .line 250
    const/4 v4, 0x2

    .line 251
    invoke-virtual {v3, v15, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 252
    .line 253
    .line 254
    goto :goto_5

    .line 255
    :goto_4
    const/16 v3, 0x10

    .line 256
    .line 257
    if-ne v1, v3, :cond_c

    .line 258
    .line 259
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 260
    .line 261
    const/4 v7, 0x7

    .line 262
    invoke-virtual {v3, v15, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 263
    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_c
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 267
    .line 268
    invoke-virtual {v3, v15, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 269
    .line 270
    .line 271
    :goto_5
    iget v3, v6, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 272
    .line 273
    if-eqz v3, :cond_17

    .line 274
    .line 275
    if-eq v3, v4, :cond_17

    .line 276
    .line 277
    iget-object v7, v6, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 278
    .line 279
    if-nez v7, :cond_d

    .line 280
    .line 281
    goto/16 :goto_a

    .line 282
    .line 283
    :cond_d
    invoke-virtual {v0, v4}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupIdFromDisplayIdLocked(I)I

    .line 284
    .line 285
    .line 286
    move-result v7

    .line 287
    const/4 v4, -0x1

    .line 288
    if-ne v7, v4, :cond_e

    .line 289
    .line 290
    goto/16 :goto_a

    .line 291
    .line 292
    :cond_e
    invoke-virtual {v6}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    iget-object v7, v6, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 297
    .line 298
    invoke-virtual {v7}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    .line 299
    .line 300
    .line 301
    move-result-object v8

    .line 302
    iget v9, v4, Landroid/view/DisplayInfo;->flags:I

    .line 303
    .line 304
    and-int/lit16 v9, v9, 0x100

    .line 305
    .line 306
    if-eqz v9, :cond_f

    .line 307
    .line 308
    goto/16 :goto_a

    .line 309
    .line 310
    :cond_f
    iget v4, v4, Landroid/view/DisplayInfo;->type:I

    .line 311
    .line 312
    const/4 v9, 0x5

    .line 313
    if-ne v4, v9, :cond_10

    .line 314
    .line 315
    iget-boolean v4, v6, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    .line 316
    .line 317
    if-nez v4, :cond_10

    .line 318
    .line 319
    invoke-virtual {v7}, Lcom/android/server/display/DisplayDevice;->getDisplayIdToMirrorLocked()I

    .line 320
    .line 321
    .line 322
    move-result v4

    .line 323
    const/4 v7, 0x2

    .line 324
    if-ne v4, v7, :cond_10

    .line 325
    .line 326
    goto :goto_6

    .line 327
    :cond_10
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    invoke-static {v8}, Lcom/android/server/display/DisplayDeviceRepository;->isExternalDisplayDeviceForDexLocked(Lcom/android/server/display/DisplayDeviceInfo;)Z

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    if-eqz v4, :cond_17

    .line 335
    .line 336
    :goto_6
    invoke-virtual {v0, v3}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupIdFromDisplayIdLocked(I)I

    .line 337
    .line 338
    .line 339
    move-result v4

    .line 340
    invoke-virtual {v0, v4}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    .line 341
    .line 342
    .line 343
    move-result-object v7

    .line 344
    invoke-virtual {v11}, Lcom/android/server/display/DisplayDeviceRepository;->isDexDisplayDeviceEnabledLocked()Z

    .line 345
    .line 346
    .line 347
    move-result v8

    .line 348
    if-eqz v8, :cond_11

    .line 349
    .line 350
    if-nez v4, :cond_11

    .line 351
    .line 352
    const/4 v4, 0x2

    .line 353
    goto :goto_7

    .line 354
    :cond_11
    if-nez v8, :cond_12

    .line 355
    .line 356
    const/4 v8, 0x2

    .line 357
    if-ne v4, v8, :cond_12

    .line 358
    .line 359
    const/4 v4, 0x0

    .line 360
    :cond_12
    :goto_7
    invoke-virtual {v0, v4}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    .line 361
    .line 362
    .line 363
    move-result-object v8

    .line 364
    if-eqz v8, :cond_17

    .line 365
    .line 366
    if-eq v7, v8, :cond_17

    .line 367
    .line 368
    if-eqz v7, :cond_13

    .line 369
    .line 370
    iget v9, v7, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    .line 371
    .line 372
    const/4 v10, 0x1

    .line 373
    add-int/2addr v9, v10

    .line 374
    iput v9, v7, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    .line 375
    .line 376
    iget-object v9, v7, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    .line 377
    .line 378
    check-cast v9, Ljava/util/ArrayList;

    .line 379
    .line 380
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    :cond_13
    iget-object v9, v8, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    .line 384
    .line 385
    check-cast v9, Ljava/util/ArrayList;

    .line 386
    .line 387
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result v9

    .line 391
    if-nez v9, :cond_14

    .line 392
    .line 393
    iget v9, v8, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    .line 394
    .line 395
    const/4 v10, 0x1

    .line 396
    add-int/2addr v9, v10

    .line 397
    iput v9, v8, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    .line 398
    .line 399
    iget-object v8, v8, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    .line 400
    .line 401
    check-cast v8, Ljava/util/ArrayList;

    .line 402
    .line 403
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    goto :goto_8

    .line 407
    :cond_14
    const/4 v10, 0x1

    .line 408
    :goto_8
    iget v8, v6, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    .line 409
    .line 410
    if-eq v4, v8, :cond_15

    .line 411
    .line 412
    iput v4, v6, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    .line 413
    .line 414
    iput-boolean v10, v6, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 415
    .line 416
    :cond_15
    const-string/jumbo v6, "moveToDisplayGroupLocked: new display group "

    .line 417
    .line 418
    .line 419
    const-string v8, " for display "

    .line 420
    .line 421
    const-string v9, ", from previous group: "

    .line 422
    .line 423
    invoke-static {v4, v3, v6, v8, v9}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    move-result-object v3

    .line 427
    if-eqz v7, :cond_16

    .line 428
    .line 429
    iget v4, v7, Lcom/android/server/display/DisplayGroup;->mGroupId:I

    .line 430
    .line 431
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 432
    .line 433
    .line 434
    move-result-object v4

    .line 435
    goto :goto_9

    .line 436
    :cond_16
    const-string/jumbo v4, "null"

    .line 437
    .line 438
    .line 439
    :goto_9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    invoke-static {v14, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .line 448
    .line 449
    :cond_17
    :goto_a
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    .line 450
    .line 451
    const/4 v4, 0x2

    .line 452
    invoke-virtual {v3, v15, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 453
    .line 454
    .line 455
    goto :goto_b

    .line 456
    :cond_18
    invoke-virtual {v0, v15}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupIdFromDisplayIdLocked(I)I

    .line 457
    .line 458
    .line 459
    move-result v3

    .line 460
    invoke-virtual {v0, v3}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    .line 461
    .line 462
    .line 463
    move-result-object v3

    .line 464
    if-eqz v3, :cond_19

    .line 465
    .line 466
    const-string v4, "Removing display #"

    .line 467
    .line 468
    const-string v7, " from group #"

    .line 469
    .line 470
    invoke-static {v15, v4, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    move-result-object v4

    .line 474
    iget v7, v3, Lcom/android/server/display/DisplayGroup;->mGroupId:I

    .line 475
    .line 476
    invoke-static {v4, v7, v14}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 477
    .line 478
    .line 479
    iget v4, v3, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    .line 480
    .line 481
    const/4 v7, 0x1

    .line 482
    add-int/2addr v4, v7

    .line 483
    iput v4, v3, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    .line 484
    .line 485
    iget-object v3, v3, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    .line 486
    .line 487
    check-cast v3, Ljava/util/ArrayList;

    .line 488
    .line 489
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    :cond_19
    if-eqz v16, :cond_1c

    .line 493
    .line 494
    iget-object v3, v13, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 495
    .line 496
    invoke-virtual {v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 497
    .line 498
    .line 499
    move-result v3

    .line 500
    if-eqz v3, :cond_1b

    .line 501
    .line 502
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

    .line 503
    .line 504
    invoke-virtual {v3, v15}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 505
    .line 506
    .line 507
    move-result v3

    .line 508
    if-eqz v3, :cond_1a

    .line 509
    .line 510
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 511
    .line 512
    const/4 v4, 0x3

    .line 513
    invoke-virtual {v3, v15, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 514
    .line 515
    .line 516
    const/4 v5, 0x1

    .line 517
    goto :goto_b

    .line 518
    :cond_1a
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    .line 519
    .line 520
    invoke-virtual {v3, v15}, Landroid/util/SparseIntArray;->delete(I)V

    .line 521
    .line 522
    .line 523
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 524
    .line 525
    const/16 v4, 0x9

    .line 526
    .line 527
    invoke-virtual {v3, v15, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 528
    .line 529
    .line 530
    goto :goto_b

    .line 531
    :cond_1b
    const/4 v4, 0x3

    .line 532
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    .line 533
    .line 534
    invoke-virtual {v3, v15}, Landroid/util/SparseIntArray;->delete(I)V

    .line 535
    .line 536
    .line 537
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 538
    .line 539
    invoke-virtual {v3, v15, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 540
    .line 541
    .line 542
    goto :goto_b

    .line 543
    :cond_1c
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 544
    .line 545
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 546
    .line 547
    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    .line 549
    .line 550
    const-string v4, "Removed display: "

    .line 551
    .line 552
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v3

    .line 562
    invoke-static {v14, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    .line 564
    .line 565
    :goto_b
    add-int/lit8 v2, v2, -0x1

    .line 566
    .line 567
    const/4 v3, 0x1

    .line 568
    const/4 v4, 0x0

    .line 569
    goto/16 :goto_0

    .line 570
    .line 571
    :cond_1d
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    .line 572
    .line 573
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 574
    .line 575
    .line 576
    move-result v2

    .line 577
    const/4 v3, 0x1

    .line 578
    sub-int/2addr v2, v3

    .line 579
    :goto_c
    if-ltz v2, :cond_23

    .line 580
    .line 581
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    .line 582
    .line 583
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 584
    .line 585
    .line 586
    move-result v3

    .line 587
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    .line 588
    .line 589
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    move-result-object v4

    .line 593
    check-cast v4, Lcom/android/server/display/DisplayGroup;

    .line 594
    .line 595
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    .line 596
    .line 597
    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 598
    .line 599
    .line 600
    move-result v6

    .line 601
    const/4 v7, -0x1

    .line 602
    if-le v6, v7, :cond_1e

    .line 603
    .line 604
    const/4 v6, 0x1

    .line 605
    goto :goto_d

    .line 606
    :cond_1e
    const/4 v6, 0x0

    .line 607
    :goto_d
    iget v8, v4, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    .line 608
    .line 609
    iget-object v4, v4, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    .line 610
    .line 611
    check-cast v4, Ljava/util/ArrayList;

    .line 612
    .line 613
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 614
    .line 615
    .line 616
    move-result v4

    .line 617
    if-eqz v4, :cond_1f

    .line 618
    .line 619
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    .line 620
    .line 621
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->delete(I)V

    .line 622
    .line 623
    .line 624
    if-eqz v6, :cond_22

    .line 625
    .line 626
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    .line 627
    .line 628
    const/4 v6, 0x3

    .line 629
    invoke-virtual {v4, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 630
    .line 631
    .line 632
    goto :goto_f

    .line 633
    :cond_1f
    if-nez v6, :cond_20

    .line 634
    .line 635
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    .line 636
    .line 637
    const/4 v6, 0x1

    .line 638
    invoke-virtual {v4, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 639
    .line 640
    .line 641
    goto :goto_e

    .line 642
    :cond_20
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    .line 643
    .line 644
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 645
    .line 646
    .line 647
    move-result v4

    .line 648
    if-eq v4, v8, :cond_21

    .line 649
    .line 650
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    .line 651
    .line 652
    const/4 v6, 0x2

    .line 653
    invoke-virtual {v4, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 654
    .line 655
    .line 656
    :cond_21
    :goto_e
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    .line 657
    .line 658
    invoke-virtual {v4, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 659
    .line 660
    .line 661
    :cond_22
    :goto_f
    add-int/lit8 v2, v2, -0x1

    .line 662
    .line 663
    goto :goto_c

    .line 664
    :cond_23
    const/4 v2, 0x6

    .line 665
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 666
    .line 667
    .line 668
    const/4 v2, 0x1

    .line 669
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForGroupsLocked(I)V

    .line 670
    .line 671
    .line 672
    const/4 v2, 0x3

    .line 673
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 674
    .line 675
    .line 676
    iget-object v2, v13, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 677
    .line 678
    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 679
    .line 680
    .line 681
    move-result v2

    .line 682
    if-eqz v2, :cond_24

    .line 683
    .line 684
    const/16 v2, 0x9

    .line 685
    .line 686
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 687
    .line 688
    .line 689
    :cond_24
    const/4 v2, 0x2

    .line 690
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 691
    .line 692
    .line 693
    const/4 v2, 0x5

    .line 694
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 695
    .line 696
    .line 697
    const/4 v2, 0x4

    .line 698
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 699
    .line 700
    .line 701
    iget-object v2, v13, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 702
    .line 703
    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 704
    .line 705
    .line 706
    move-result v2

    .line 707
    if-eqz v2, :cond_25

    .line 708
    .line 709
    invoke-virtual {v0, v10}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 710
    .line 711
    .line 712
    :cond_25
    const/4 v2, 0x1

    .line 713
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 714
    .line 715
    .line 716
    const/4 v2, 0x7

    .line 717
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 718
    .line 719
    .line 720
    const/4 v2, 0x2

    .line 721
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForGroupsLocked(I)V

    .line 722
    .line 723
    .line 724
    const/4 v2, 0x3

    .line 725
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForGroupsLocked(I)V

    .line 726
    .line 727
    .line 728
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 729
    .line 730
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 731
    .line 732
    .line 733
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    .line 734
    .line 735
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 736
    .line 737
    .line 738
    if-eqz v5, :cond_27

    .line 739
    .line 740
    if-eqz p2, :cond_26

    .line 741
    .line 742
    const-string v0, "Trying to loop a third time"

    .line 743
    .line 744
    invoke-static {v14, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    .line 746
    .line 747
    return-void

    .line 748
    :cond_26
    const/4 v2, 0x1

    .line 749
    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked(IZ)V

    .line 750
    .line 751
    .line 752
    :cond_27
    return-void
.end method

.method public final updateLogicalDisplaysLocked$1()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked(IZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
