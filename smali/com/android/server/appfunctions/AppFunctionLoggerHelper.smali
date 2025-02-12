.class public final Lcom/android/server/appfunctions/AppFunctionLoggerHelper;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final SA_LOG_ENABLED:Z

.field public static final SHIP_BUILD:Z

.field public static final USER_BUILD:Z


# instance fields
.field public final mAppFunctionExecutionHistory:[Landroid/app/appfunctions/AppFunctionExecutionRecord;

.field public mAppFunctionExecutionHistoryIdx:I

.field public final mContext:Landroid/content/Context;

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "user"

    .line 2
    .line 3
    .line 4
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sput-boolean v0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->USER_BUILD:Z

    .line 11
    .line 12
    const-string/jumbo v0, "ro.product_ship"

    .line 13
    .line 14
    .line 15
    const-string/jumbo v1, "false"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string/jumbo v1, "true"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    sput-boolean v0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->SHIP_BUILD:Z

    .line 30
    .line 31
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    sput-boolean v0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->SA_LOG_ENABLED:Z

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    new-array v0, v0, [Landroid/app/appfunctions/AppFunctionExecutionRecord;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->mAppFunctionExecutionHistory:[Landroid/app/appfunctions/AppFunctionExecutionRecord;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->mAppFunctionExecutionHistoryIdx:I

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "App Function Execution History:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->mAppFunctionExecutionHistory:[Landroid/app/appfunctions/AppFunctionExecutionRecord;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->mAppFunctionExecutionHistory:[Landroid/app/appfunctions/AppFunctionExecutionRecord;

    .line 13
    .line 14
    array-length v1, p0

    .line 15
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, [Landroid/app/appfunctions/AppFunctionExecutionRecord;

    .line 20
    .line 21
    new-instance v1, Lcom/android/server/appfunctions/AppFunctionLoggerHelper$$ExternalSyntheticLambda1;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Ljava/util/Comparator;->nullsLast(Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v1, v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Ljava/util/Comparator;->nullsLast(Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {p0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 43
    .line 44
    .line 45
    array-length v1, p0

    .line 46
    const/4 v2, 0x0

    .line 47
    move v3, v2

    .line 48
    :goto_0
    if-ge v3, v1, :cond_4

    .line 49
    .line 50
    aget-object v4, p0, v3

    .line 51
    .line 52
    if-eqz v4, :cond_3

    .line 53
    .line 54
    array-length v5, p2

    .line 55
    if-lez v5, :cond_0

    .line 56
    .line 57
    const-string v5, "-s"

    .line 58
    .line 59
    aget-object v6, p2, v2

    .line 60
    .line 61
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_0

    .line 66
    .line 67
    invoke-virtual {v4}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->toSummaryString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_3

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    goto :goto_4

    .line 77
    :cond_0
    sget-boolean v5, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->USER_BUILD:Z

    .line 78
    .line 79
    if-nez v5, :cond_2

    .line 80
    .line 81
    sget-boolean v5, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->SHIP_BUILD:Z

    .line 82
    .line 83
    if-eqz v5, :cond_1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    move v5, v2

    .line 87
    goto :goto_2

    .line 88
    :cond_2
    :goto_1
    const/4 v5, 0x1

    .line 89
    :goto_2
    invoke-virtual {v4, v5}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->toFullString(Z)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :goto_4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    throw p0
.end method

.method public final getDimensionMap(Landroid/app/appfunctions/AppFunctionExecutionRecord;)Ljava/util/HashMap;
    .locals 8

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->getCallingPackage()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-string/jumbo v3, "caller_app"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->getCallingPackage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-wide/16 v3, -0x1

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    :try_start_0
    iget-object v6, p0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 26
    .line 27
    invoke-virtual {v6, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 34
    .line 35
    .line 36
    move-result-wide v6

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-wide v6, v3

    .line 39
    :goto_0
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-object v2, v0

    .line 45
    :goto_1
    const-string/jumbo v6, "caller_app_version"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    const-string/jumbo v2, "target_app"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->getTargetPackageName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->getTargetPackageName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    :try_start_1
    iget-object v6, p0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 66
    .line 67
    invoke-virtual {v6, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 74
    .line 75
    .line 76
    move-result-wide v3

    .line 77
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    :catch_1
    const-string/jumbo v2, "target_app_version"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    const-string/jumbo v0, "function_id"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->getFunctionIdentifier()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    const-string/jumbo v0, "result_code"

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->getResultCode()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/app/appfunctions/AppFunctionExecutionRecord;->getDuration()J

    .line 108
    .line 109
    .line 110
    move-result-wide v2

    .line 111
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const-string/jumbo v0, "duration"

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    new-instance p1, Ljava/util/ArrayList;

    .line 122
    .line 123
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->mContext:Landroid/content/Context;

    .line 124
    .line 125
    const-class v2, Landroid/app/ActivityManager;

    .line 126
    .line 127
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Landroid/app/ActivityManager;

    .line 132
    .line 133
    const v2, 0x7fffffff

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .line 144
    .line 145
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-ge v5, v3, :cond_3

    .line 150
    .line 151
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 156
    .line 157
    if-eqz v3, :cond_2

    .line 158
    .line 159
    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 160
    .line 161
    if-eqz v4, :cond_2

    .line 162
    .line 163
    iget-boolean v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    .line 164
    .line 165
    if-eqz v3, :cond_2

    .line 166
    .line 167
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_3
    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->mContext:Landroid/content/Context;

    .line 181
    .line 182
    const-class v2, Landroid/app/KeyguardManager;

    .line 183
    .line 184
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    check-cast v0, Landroid/app/KeyguardManager;

    .line 189
    .line 190
    if-eqz v0, :cond_4

    .line 191
    .line 192
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_4

    .line 197
    .line 198
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->mContext:Landroid/content/Context;

    .line 199
    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    const v0, 0x104003a

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    :cond_4
    const-string p0, ","

    .line 215
    .line 216
    invoke-static {p0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    const-string/jumbo p1, "foreground_app"

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    return-object v1
.end method
