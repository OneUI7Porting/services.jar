.class public final Lcom/android/server/chimera/genie/GenieConfigurations;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final GENAI_UNLOAD_MEMORY_PSI_LEVEL:I

.field public static final GENAI_UNLOAD_MODEL_TIMEOUT:I

.field public static final GENAI_UNLOAD_OOMADJ_THRESHOLD:I

.field public static final GENAI_UNLOAD_THRESHOLD:I

.field public static final MODEL_COUNT:I

.field public static final sAIVersion:I

.field public static final sAIVersionGoogleModelSize:Ljava/util/Map;

.field public static final sAIVersionSepModelSize:Ljava/util/Map;

.field public static final sAllowedBroadcastActions:Ljava/util/List;

.field public static final sAllowedPackages:Ljava/util/List;

.field public static final sGenAIPackageMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    const-string/jumbo v0, "ro.slmk.genie.model_count"

    .line 2
    .line 3
    .line 4
    const-string v1, "1"

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sput v0, Lcom/android/server/chimera/genie/GenieConfigurations;->MODEL_COUNT:I

    .line 15
    .line 16
    const-string/jumbo v0, "ro.slmk.genie.unload.threshold"

    .line 17
    .line 18
    .line 19
    const-string v2, "2097152"

    .line 20
    .line 21
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    sput v0, Lcom/android/server/chimera/genie/GenieConfigurations;->GENAI_UNLOAD_THRESHOLD:I

    .line 30
    .line 31
    const-string/jumbo v0, "ro.slmk.genie.oomadj.threshold"

    .line 32
    .line 33
    .line 34
    const-string v2, "850"

    .line 35
    .line 36
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    sput v0, Lcom/android/server/chimera/genie/GenieConfigurations;->GENAI_UNLOAD_OOMADJ_THRESHOLD:I

    .line 45
    .line 46
    const-string/jumbo v0, "ro.slmk.genie.oomadj.psilevel"

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    sput v0, Lcom/android/server/chimera/genie/GenieConfigurations;->GENAI_UNLOAD_MEMORY_PSI_LEVEL:I

    .line 58
    .line 59
    const-string/jumbo v0, "ro.slmk.genie.unload.timeout"

    .line 60
    .line 61
    .line 62
    const-string v1, "7200"

    .line 63
    .line 64
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    mul-int/lit16 v0, v0, 0x3e8

    .line 73
    .line 74
    sput v0, Lcom/android/server/chimera/genie/GenieConfigurations;->GENAI_UNLOAD_MODEL_TIMEOUT:I

    .line 75
    .line 76
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_AI_VERSION"

    .line 81
    .line 82
    const/4 v2, -0x1

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    sput v0, Lcom/android/server/chimera/genie/GenieConfigurations;->sAIVersion:I

    .line 88
    .line 89
    new-instance v0, Ljava/util/ArrayList;

    .line 90
    .line 91
    const-string/jumbo v19, "com.google.android.apps.messaging"

    .line 92
    .line 93
    .line 94
    const-string/jumbo v20, "com.samsung.android.accessibility.talkback"

    .line 95
    .line 96
    .line 97
    const-string/jumbo v1, "com.sec.android.app.camera"

    .line 98
    .line 99
    .line 100
    const-string/jumbo v2, "com.samsung.android.honeyboard"

    .line 101
    .line 102
    .line 103
    const-string/jumbo v3, "com.samsung.android.offline.languagemodel.test_client"

    .line 104
    .line 105
    .line 106
    const-string/jumbo v4, "com.samsung.android.offline.languagemodel"

    .line 107
    .line 108
    .line 109
    const-string/jumbo v5, "com.samsung.android.wallpaper.magician"

    .line 110
    .line 111
    .line 112
    const-string/jumbo v6, "com.samsung.android.wallpaper.live"

    .line 113
    .line 114
    .line 115
    const-string/jumbo v7, "com.sec.android.mimage.photoretouching"

    .line 116
    .line 117
    .line 118
    const-string/jumbo v8, "com.sec.android.gallery3d"

    .line 119
    .line 120
    .line 121
    const-string/jumbo v9, "com.samsung.android.app.notes"

    .line 122
    .line 123
    .line 124
    const-string/jumbo v10, "com.sec.android.app.voicenote"

    .line 125
    .line 126
    .line 127
    const-string/jumbo v11, "com.sec.android.app.shealth"

    .line 128
    .line 129
    .line 130
    const-string/jumbo v12, "com.samsung.android.app.moments"

    .line 131
    .line 132
    .line 133
    const-string/jumbo v13, "com.samsung.android.oneconnect"

    .line 134
    .line 135
    .line 136
    const-string/jumbo v14, "com.sec.android.app.sbrowser"

    .line 137
    .line 138
    .line 139
    const-string/jumbo v15, "com.samsung.android.dialer"

    .line 140
    .line 141
    .line 142
    const-string/jumbo v16, "com.samsung.android.smartsuggestions"

    .line 143
    .line 144
    .line 145
    const-string/jumbo v17, "com.samsung.android.smartsuggestions:moneta"

    .line 146
    .line 147
    .line 148
    const-string/jumbo v18, "com.android.systemui"

    .line 149
    .line 150
    .line 151
    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 160
    .line 161
    .line 162
    sput-object v0, Lcom/android/server/chimera/genie/GenieConfigurations;->sAllowedPackages:Ljava/util/List;

    .line 163
    .line 164
    new-instance v0, Ljava/util/ArrayList;

    .line 165
    .line 166
    const-string/jumbo v1, "com.samsung.GEN_AI_RECLAIM"

    .line 167
    .line 168
    .line 169
    const-string v2, "AICORE_BROADCAST_ACTION_MODEL_LOADING"

    .line 170
    .line 171
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 180
    .line 181
    .line 182
    sput-object v0, Lcom/android/server/chimera/genie/GenieConfigurations;->sAllowedBroadcastActions:Ljava/util/List;

    .line 183
    .line 184
    new-instance v0, Lcom/android/server/chimera/genie/GenieConfigurations$1;

    .line 185
    .line 186
    invoke-direct {v0}, Lcom/android/server/chimera/genie/GenieConfigurations$1;-><init>()V

    .line 187
    .line 188
    .line 189
    sput-object v0, Lcom/android/server/chimera/genie/GenieConfigurations;->sAIVersionSepModelSize:Ljava/util/Map;

    .line 190
    .line 191
    new-instance v0, Lcom/android/server/chimera/genie/GenieConfigurations$2;

    .line 192
    .line 193
    invoke-direct {v0}, Lcom/android/server/chimera/genie/GenieConfigurations$2;-><init>()V

    .line 194
    .line 195
    .line 196
    sput-object v0, Lcom/android/server/chimera/genie/GenieConfigurations;->sAIVersionGoogleModelSize:Ljava/util/Map;

    .line 197
    .line 198
    new-instance v0, Lcom/android/server/chimera/genie/GenieConfigurations$3;

    .line 199
    .line 200
    invoke-direct {v0}, Lcom/android/server/chimera/genie/GenieConfigurations$3;-><init>()V

    .line 201
    .line 202
    .line 203
    sput-object v0, Lcom/android/server/chimera/genie/GenieConfigurations;->sGenAIPackageMap:Ljava/util/Map;

    .line 204
    .line 205
    return-void
.end method
