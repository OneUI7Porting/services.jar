.class Lcom/android/server/blob/BlobStoreSession;
.super Landroid/app/blob/IBlobStoreSession$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

.field public mBlobCommitCallback:Landroid/app/blob/IBlobCommitCallback;

.field public final mBlobHandle:Landroid/app/blob/BlobHandle;

.field public final mContext:Landroid/content/Context;

.field public final mCreationTimeMs:J

.field public mDataDigest:[B

.field public final mListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

.field public final mOwnerPackageName:Ljava/lang/String;

.field public final mOwnerUid:I

.field public final mRevocableFds:Ljava/util/ArrayList;

.field public mSessionFile:Ljava/io/File;

.field public final mSessionId:J

.field public final mSessionLock:Ljava/lang/Object;

.field public mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;ILjava/lang/String;JLcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/blob/IBlobStoreSession$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 20
    .line 21
    new-instance v0, Lcom/android/server/blob/BlobAccessMode;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/android/server/blob/BlobAccessMode;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreSession;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    iput-object p4, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    .line 31
    .line 32
    iput-wide p2, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    .line 33
    .line 34
    iput p5, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    .line 35
    .line 36
    iput-object p6, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    .line 37
    .line 38
    iput-wide p7, p0, Lcom/android/server/blob/BlobStoreSession;->mCreationTimeMs:J

    .line 39
    .line 40
    iput-object p9, p0, Lcom/android/server/blob/BlobStoreSession;->mListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

    .line 41
    .line 42
    return-void
.end method

.method public static createFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;)Lcom/android/server/blob/BlobStoreSession;
    .locals 12

    .line 1
    const-string/jumbo v0, "id"

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    .line 5
    .line 6
    .line 7
    move-result-wide v3

    .line 8
    const-string/jumbo v0, "p"

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v7

    .line 15
    const-string/jumbo v0, "u"

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    const/4 v0, 0x5

    .line 23
    if-lt p1, v0, :cond_0

    .line 24
    .line 25
    const-string/jumbo p1, "crt"

    .line 26
    .line 27
    .line 28
    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    :goto_0
    move-wide v8, v0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    goto :goto_0

    .line 39
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    const/4 v0, 0x0

    .line 44
    move-object v5, v0

    .line 45
    move-object v11, v5

    .line 46
    :cond_1
    :goto_2
    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    const-string/jumbo v1, "bh"

    .line 53
    .line 54
    .line 55
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    invoke-static {p0}, Landroid/app/blob/BlobHandle;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/blob/BlobHandle;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    const-string v1, "am"

    .line 71
    .line 72
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    invoke-static {p0}, Lcom/android/server/blob/BlobAccessMode;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/blob/BlobAccessMode;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    goto :goto_2

    .line 87
    :cond_3
    const-string p0, "BlobStore"

    .line 88
    .line 89
    if-nez v5, :cond_4

    .line 90
    .line 91
    const-string/jumbo p1, "blobHandle should be available"

    .line 92
    .line 93
    .line 94
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    return-object v0

    .line 98
    :cond_4
    if-nez v11, :cond_5

    .line 99
    .line 100
    const-string/jumbo p1, "blobAccessMode should be available"

    .line 101
    .line 102
    .line 103
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    return-object v0

    .line 107
    :cond_5
    new-instance p0, Lcom/android/server/blob/BlobStoreSession;

    .line 108
    .line 109
    move-object v1, p0

    .line 110
    move-object v2, p2

    .line 111
    move-object v10, p3

    .line 112
    invoke-direct/range {v1 .. v10}, Lcom/android/server/blob/BlobStoreSession;-><init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;ILjava/lang/String;JLcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    iget p2, v11, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 121
    .line 122
    and-int/lit8 p2, p2, 0x8

    .line 123
    .line 124
    if-eqz p2, :cond_6

    .line 125
    .line 126
    iget-object p2, p1, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    .line 127
    .line 128
    iget-object p3, v11, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    .line 129
    .line 130
    invoke-virtual {p2, p3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 131
    .line 132
    .line 133
    :cond_6
    iget p2, p1, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 134
    .line 135
    iget p3, v11, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 136
    .line 137
    or-int/2addr p2, p3

    .line 138
    iput p2, p1, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 139
    .line 140
    return-object p0
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_4

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "Unknown state: "

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string v0, "BlobStore"

    .line 33
    .line 34
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    const-string p0, "<unknown>"

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_0
    const-string p0, "<verified_invalid>"

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_1
    const-string p0, "<verified_valid>"

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_2
    const-string p0, "<committed>"

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_3
    const-string p0, "<abandoned>"

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_4
    const-string p0, "<opened>"

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_5
    const-string p0, "<closed>"

    .line 56
    .line 57
    return-object p0
.end method


# virtual methods
.method public final abandon()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/android/server/blob/BlobStoreSession;->closeSession(IZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final allowPackageAccess(Ljava/lang/String;[B)V
    .locals 5

    .line 1
    const-string v0, "Too many packages permitted to access the blob: "

    .line 2
    .line 3
    const-string v1, "Not allowed to change access type in state: "

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v2, "packageName must not be null"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v2

    .line 17
    :try_start_0
    iget v3, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    if-ne v3, v4, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    sget-boolean v3, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 31
    .line 32
    sget v3, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

    .line 33
    .line 34
    if-ge v1, v3, :cond_0

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 37
    .line 38
    iget v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 39
    .line 40
    or-int/lit8 v0, v0, 0x8

    .line 41
    .line 42
    iput v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    .line 45
    .line 46
    new-instance v0, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;

    .line 47
    .line 48
    invoke-direct {v0, p1, p2}, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;-><init>(Ljava/lang/String;[B)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    monitor-exit v2

    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance p1, Landroid/os/ParcelableException;

    .line 59
    .line 60
    new-instance p2, Landroid/os/LimitExceededException;

    .line 61
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-direct {p2, p0}, Landroid/os/LimitExceededException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-direct {p1, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    throw p1

    .line 89
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 90
    .line 91
    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 92
    .line 93
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1

    .line 105
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    throw p0
.end method

.method public final allowPublicAccess()V
    .locals 4

    .line 1
    const-string v0, "Not allowed to change access type in state: "

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget v2, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 15
    .line 16
    iget v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x2

    .line 19
    .line 20
    iput v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 21
    .line 22
    monitor-exit v1

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 29
    .line 30
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v2

    .line 42
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public final allowSameSignatureAccess()V
    .locals 4

    .line 1
    const-string v0, "Not allowed to change access type in state: "

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget v2, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 15
    .line 16
    iget v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x4

    .line 19
    .line 20
    iput v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 21
    .line 22
    monitor-exit v1

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 29
    .line 30
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v2

    .line 42
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public final assertCallerIsOwner()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    .line 18
    .line 19
    const-string v2, " is not the session owner"

    .line 20
    .line 21
    invoke-static {p0, v1, v2}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public final close()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lcom/android/server/blob/BlobStoreSession;->closeSession(IZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final closeSession(IZ)V
    .locals 4

    .line 1
    const-string v0, "Not allowed to delete or abandon a session with state: "

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget v2, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-eq v2, v3, :cond_1

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    monitor-exit v1

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 23
    .line 24
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    iput p1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->revokeAllFds()V

    .line 39
    .line 40
    .line 41
    if-eqz p2, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/server/blob/BlobStoreSession;->mListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 46
    .line 47
    iget-object p2, p1, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    .line 48
    .line 49
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-static {v0, p1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    .line 64
    .line 65
    :cond_2
    monitor-exit v1

    .line 66
    return-void

    .line 67
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p0
.end method

.method public final commit(Landroid/app/blob/IBlobCommitCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobCommitCallback:Landroid/app/blob/IBlobCommitCallback;

    .line 5
    .line 6
    const/4 p1, 0x3

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, p1, v1}, Lcom/android/server/blob/BlobStoreSession;->closeSession(IZ)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final getBlobAccessMode()Lcom/android/server/blob/BlobAccessMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object p0

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

.method public final getSessionFile()Ljava/io/File;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionFile:Ljava/io/File;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->prepareBlobStoreRootDir()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v3, Ljava/io/File;

    .line 12
    .line 13
    const-string/jumbo v4, "blobs"

    .line 14
    .line 15
    .line 16
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v4, 0x0

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v5, "Failed to mkdir(): "

    .line 35
    .line 36
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v3, "BlobStore"

    .line 47
    .line 48
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-object v3, v4

    .line 52
    :cond_0
    if-nez v3, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    new-instance v4, Ljava/io/File;

    .line 56
    .line 57
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    iput-object v4, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionFile:Ljava/io/File;

    .line 65
    .line 66
    :cond_2
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionFile:Ljava/io/File;

    .line 67
    .line 68
    return-object p0
.end method

.method public final getSize()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final isPackageAccessAllowed(Ljava/lang/String;[B)Z
    .locals 4

    .line 1
    const-string v0, "Not allowed to get access type in state: "

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "packageName must not be null"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    const-string/jumbo v1, "certificate"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkByteArrayNotEmpty([BLjava/lang/String;)[B

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v1

    .line 21
    :try_start_0
    iget v2, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    if-ne v2, v3, :cond_1

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 27
    .line 28
    iget v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 29
    .line 30
    and-int/lit8 v0, v0, 0x8

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p0, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    .line 37
    .line 38
    new-instance v0, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;

    .line 39
    .line 40
    invoke-direct {v0, p1, p2}, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;-><init>(Ljava/lang/String;[B)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    :goto_0
    monitor-exit v1

    .line 48
    return p0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 54
    .line 55
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p0
.end method

.method public final isPublicAccessAllowed()Z
    .locals 4

    .line 1
    const-string v0, "Not allowed to get access type in state: "

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget v2, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v2, v3, :cond_1

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 15
    .line 16
    iget p0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 17
    .line 18
    and-int/lit8 p0, p0, 0x2

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v3, 0x0

    .line 24
    :goto_0
    monitor-exit v1

    .line 25
    return v3

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 31
    .line 32
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v2

    .line 44
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final isSameSignatureAccessAllowed()Z
    .locals 4

    .line 1
    const-string v0, "Not allowed to get access type in state: "

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget v2, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v2, v3, :cond_1

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 15
    .line 16
    iget p0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 17
    .line 18
    and-int/lit8 p0, p0, 0x4

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v3, 0x0

    .line 24
    :goto_0
    monitor-exit v1

    .line 25
    return v3

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 31
    .line 32
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v2

    .line 44
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final open()V
    .locals 6

    .line 1
    const-string v0, "Not allowed to open session with state: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    iget v3, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x1

    .line 13
    if-eq v3, v4, :cond_1

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    if-ne v3, v4, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v3, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    move v3, v5

    .line 22
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    if-nez v3, :cond_2

    .line 24
    .line 25
    :try_start_2
    iput v5, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 26
    .line 27
    monitor-exit v1

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 34
    .line 35
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    :catchall_1
    move-exception p0

    .line 48
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 49
    :try_start_4
    throw p0

    .line 50
    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 51
    throw p0
.end method

.method public final openRead()Landroid/os/ParcelFileDescriptor;
    .locals 6

    .line 1
    const-string v0, "Not allowed to read in state: "

    .line 2
    .line 3
    const-string v1, "Not allowed to read in state: "

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v2

    .line 11
    :try_start_0
    iget v3, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    if-ne v3, v4, :cond_2

    .line 15
    .line 16
    sget-boolean v1, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 17
    .line 18
    sget-boolean v1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->USE_REVOCABLE_FD_FOR_READS:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    :try_start_1
    new-instance v0, Landroid/os/ParcelFileDescriptor;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->openReadInternal()Ljava/io/FileDescriptor;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v0, p0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    :try_start_2
    monitor-exit v2

    .line 32
    return-object v0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_2

    .line 35
    :catch_0
    move-exception p0

    .line 36
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    throw p0

    .line 41
    :cond_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->openReadInternal()Ljava/io/FileDescriptor;

    .line 43
    .line 44
    .line 45
    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 46
    :try_start_4
    new-instance v2, Landroid/os/RevocableFileDescriptor;

    .line 47
    .line 48
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreSession;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-direct {v2, v3, v1}, Landroid/os/RevocableFileDescriptor;-><init>(Landroid/content/Context;Ljava/io/FileDescriptor;)V

    .line 51
    .line 52
    .line 53
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    .line 54
    .line 55
    monitor-enter v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 56
    :try_start_5
    iget v5, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 57
    .line 58
    if-ne v5, v4, :cond_1

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    .line 61
    .line 62
    monitor-enter v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 63
    :try_start_6
    iget-object v4, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 69
    :try_start_7
    new-instance v0, Lcom/android/server/blob/BlobStoreSession$$ExternalSyntheticLambda0;

    .line 70
    .line 71
    invoke-direct {v0, p0, v2}, Lcom/android/server/blob/BlobStoreSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/blob/BlobStoreSession;Landroid/os/RevocableFileDescriptor;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v0}, Landroid/os/RevocableFileDescriptor;->addOnCloseListener(Landroid/os/ParcelFileDescriptor$OnCloseListener;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Landroid/os/RevocableFileDescriptor;->getRevocableFileDescriptor()Landroid/os/ParcelFileDescriptor;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 82
    return-object p0

    .line 83
    :catchall_1
    move-exception p0

    .line 84
    goto :goto_0

    .line 85
    :catchall_2
    move-exception p0

    .line 86
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 87
    :try_start_9
    throw p0

    .line 88
    :cond_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 89
    .line 90
    .line 91
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 92
    .line 93
    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 94
    .line 95
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v2

    .line 107
    :goto_0
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 108
    :try_start_a
    throw p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 109
    :catch_1
    move-exception p0

    .line 110
    goto :goto_1

    .line 111
    :catch_2
    move-exception p0

    .line 112
    const/4 v1, 0x0

    .line 113
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 114
    .line 115
    .line 116
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    throw p0

    .line 121
    :cond_2
    :try_start_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 122
    .line 123
    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 124
    .line 125
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v0

    .line 137
    :goto_2
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 138
    throw p0
.end method

.method public final openReadInternal()Ljava/io/FileDescriptor;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {p0, v0, v1}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "Couldn\'t get the file for this session"

    .line 24
    .line 25
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    throw p0
.end method

.method public final openWrite(JJ)Landroid/os/ParcelFileDescriptor;
    .locals 5

    .line 1
    const-string v0, "Not allowed to write in state: "

    .line 2
    .line 3
    const-string v1, "Not allowed to write in state: "

    .line 4
    .line 5
    const-string/jumbo v2, "offsetBytes must not be negative"

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p2, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(JLjava/lang/String;)J

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v2

    .line 17
    :try_start_0
    iget v3, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    if-ne v3, v4, :cond_1

    .line 21
    .line 22
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 23
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/blob/BlobStoreSession;->openWriteInternal(JJ)Ljava/io/FileDescriptor;

    .line 24
    .line 25
    .line 26
    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    :try_start_2
    new-instance p2, Landroid/os/RevocableFileDescriptor;

    .line 28
    .line 29
    iget-object p3, p0, Lcom/android/server/blob/BlobStoreSession;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {}, Lcom/android/server/blob/BlobStoreUtils;->getRevocableFdHandler()Landroid/os/Handler;

    .line 32
    .line 33
    .line 34
    move-result-object p4

    .line 35
    invoke-direct {p2, p3, p1, p4}, Landroid/os/RevocableFileDescriptor;-><init>(Landroid/content/Context;Ljava/io/FileDescriptor;Landroid/os/Handler;)V

    .line 36
    .line 37
    .line 38
    iget-object p3, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter p3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 41
    :try_start_3
    iget p4, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 42
    .line 43
    if-ne p4, v4, :cond_0

    .line 44
    .line 45
    iget-object p4, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    .line 46
    .line 47
    monitor-enter p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    :try_start_4
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    monitor-exit p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    :try_start_5
    new-instance p4, Lcom/android/server/blob/BlobStoreSession$$ExternalSyntheticLambda0;

    .line 55
    .line 56
    invoke-direct {p4, p0, p2}, Lcom/android/server/blob/BlobStoreSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/blob/BlobStoreSession;Landroid/os/RevocableFileDescriptor;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p4}, Landroid/os/RevocableFileDescriptor;->addOnCloseListener(Landroid/os/ParcelFileDescriptor$OnCloseListener;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/os/RevocableFileDescriptor;->getRevocableFileDescriptor()Landroid/os/ParcelFileDescriptor;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 67
    return-object p0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_0

    .line 70
    :catchall_1
    move-exception p0

    .line 71
    :try_start_6
    monitor-exit p4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 72
    :try_start_7
    throw p0

    .line 73
    :cond_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 74
    .line 75
    .line 76
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 77
    .line 78
    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 79
    .line 80
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p2

    .line 92
    :goto_0
    monitor-exit p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 93
    :try_start_8
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 94
    :catch_0
    move-exception p0

    .line 95
    goto :goto_1

    .line 96
    :catch_1
    move-exception p0

    .line 97
    const/4 p1, 0x0

    .line 98
    :goto_1
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 99
    .line 100
    .line 101
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    throw p0

    .line 106
    :catchall_2
    move-exception p0

    .line 107
    goto :goto_2

    .line 108
    :cond_1
    :try_start_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 109
    .line 110
    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 111
    .line 112
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p1

    .line 124
    :goto_2
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 125
    throw p0
.end method

.method public final openWriteInternal(JJ)Ljava/io/FileDescriptor;
    .locals 6

    .line 1
    const-string v0, "Failed to seek "

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget v2, Landroid/system/OsConstants;->O_CREAT:I

    .line 14
    .line 15
    sget v3, Landroid/system/OsConstants;->O_RDWR:I

    .line 16
    .line 17
    or-int/2addr v2, v3

    .line 18
    const/16 v3, 0x180

    .line 19
    .line 20
    invoke-static {v1, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    cmp-long v4, p1, v2

    .line 27
    .line 28
    if-lez v4, :cond_1

    .line 29
    .line 30
    sget v4, Landroid/system/OsConstants;->SEEK_SET:I

    .line 31
    .line 32
    invoke-static {v1, p1, p2, v4}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 33
    .line 34
    .line 35
    move-result-wide v4

    .line 36
    cmp-long v4, v4, p1

    .line 37
    .line 38
    if-nez v4, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    new-instance p3, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p4, "; curOffset="

    .line 52
    .line 53
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :catch_0
    move-exception p0

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    :goto_0
    cmp-long p1, p3, v2

    .line 70
    .line 71
    if-lez p1, :cond_2

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    const-class p1, Landroid/os/storage/StorageManager;

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    check-cast p0, Landroid/os/storage/StorageManager;

    .line 82
    .line 83
    invoke-virtual {p0, v1, p3, p4}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/io/FileDescriptor;J)V

    .line 84
    .line 85
    .line 86
    :cond_2
    return-object v1

    .line 87
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 88
    .line 89
    const-string p1, "Couldn\'t get the file for this session"

    .line 90
    .line 91
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_1
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    throw p0
.end method

.method public final revokeAllFds()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    :goto_0
    if-ltz v1, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/os/RevocableFileDescriptor;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/os/RevocableFileDescriptor;->revoke()V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v1, v1, -0x1

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
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 33
    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method

.method public final sendCommitCallbackResult(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobCommitCallback:Landroid/app/blob/IBlobCommitCallback;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Landroid/app/blob/IBlobCommitCallback;->onResult(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :catch_0
    move-exception p1

    .line 13
    :try_start_1
    const-string v1, "BlobStore"

    .line 14
    .line 15
    const-string v2, "Error sending the callback result"

    .line 16
    .line 17
    invoke-static {v1, v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    .line 19
    .line 20
    :goto_0
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobCommitCallback:Landroid/app/blob/IBlobCommitCallback;

    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "BlobStoreSession {id:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",handle:"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ",uid:"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ",pkg:"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    .line 39
    .line 40
    const-string/jumbo v1, "}"

    .line 41
    .line 42
    .line 43
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method public final writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string/jumbo v1, "id"

    .line 5
    .line 6
    .line 7
    iget-wide v2, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    .line 8
    .line 9
    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v1, "p"

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p1, v1, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    const-string/jumbo v1, "u"

    .line 21
    .line 22
    .line 23
    iget v2, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    .line 24
    .line 25
    invoke-static {p1, v1, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    const-string/jumbo v1, "crt"

    .line 29
    .line 30
    .line 31
    iget-wide v2, p0, Lcom/android/server/blob/BlobStoreSession;->mCreationTimeMs:J

    .line 32
    .line 33
    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 34
    .line 35
    .line 36
    const-string/jumbo v1, "bh"

    .line 37
    .line 38
    .line 39
    move-object v2, p1

    .line 40
    check-cast v2, Lcom/android/internal/util/FastXmlSerializer;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-virtual {v2, v3, v1}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Landroid/app/blob/BlobHandle;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 49
    .line 50
    .line 51
    const-string/jumbo v1, "bh"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3, v1}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 55
    .line 56
    .line 57
    const-string v1, "am"

    .line 58
    .line 59
    invoke-virtual {v2, v3, v1}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/blob/BlobAccessMode;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 65
    .line 66
    .line 67
    const-string p0, "am"

    .line 68
    .line 69
    invoke-virtual {v2, v3, p0}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    .line 71
    .line 72
    monitor-exit v0

    .line 73
    return-void

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0
.end method
