.class public final Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static mDefaultHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

.field public static mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public static final mSynObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->mSynObj:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;
    .locals 4

    .line 1
    const-class v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->mDefaultHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->mSynObj:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    sget-object v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 21
    .line 22
    invoke-direct {v3, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    sput-object v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :try_start_2
    sput-object v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->mDefaultHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :catchall_1
    move-exception p0

    .line 35
    goto :goto_3

    .line 36
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 37
    :try_start_4
    throw p0

    .line 38
    :cond_1
    :goto_2
    sget-object p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;->mDefaultHelper:Lcom/android/server/enterprise/nap/NetworkAnalyticsStorageHelper;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 39
    .line 40
    monitor-exit v0

    .line 41
    return-object p0

    .line 42
    :goto_3
    monitor-exit v0

    .line 43
    throw p0
.end method
