.class public final Lcom/android/server/job/JobStore$2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mJobFiles:Landroid/util/SparseArray;

.field public final mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

.field public final synthetic this$0:Lcom/android/server/job/JobStore;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobStore;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    .line 5
    .line 6
    new-instance p1, Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/job/JobStore$2;->mJobFiles:Landroid/util/SparseArray;

    .line 12
    .line 13
    new-instance p1, Lcom/android/server/job/JobStore$2$CopyConsumer;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/android/server/job/JobStore$2$CopyConsumer;-><init>(Lcom/android/server/job/JobStore$2;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    .line 19
    .line 20
    return-void
.end method

.method public static addAttributesToJobTag(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string/jumbo v1, "jobid"

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 16
    .line 17
    .line 18
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string/jumbo v1, "package"

    .line 29
    .line 30
    .line 31
    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 32
    .line 33
    .line 34
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string/jumbo v1, "class"

    .line 45
    .line 46
    .line 47
    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 48
    .line 49
    .line 50
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    const-string/jumbo v1, "sourcePackageName"

    .line 55
    .line 56
    .line 57
    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 58
    .line 59
    .line 60
    :cond_0
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    const-string/jumbo v1, "namespace"

    .line 65
    .line 66
    .line 67
    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    const-string/jumbo v1, "sourceTag"

    .line 75
    .line 76
    .line 77
    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    .line 79
    .line 80
    :cond_2
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 81
    .line 82
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string/jumbo v1, "sourceUserId"

    .line 87
    .line 88
    .line 89
    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    .line 91
    .line 92
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 93
    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const-string/jumbo v1, "uid"

    .line 99
    .line 100
    .line 101
    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 102
    .line 103
    .line 104
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getBias()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const-string/jumbo v1, "bias"

    .line 115
    .line 116
    .line 117
    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 118
    .line 119
    .line 120
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getPriority()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const-string/jumbo v1, "priority"

    .line 131
    .line 132
    .line 133
    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 134
    .line 135
    .line 136
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 137
    .line 138
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getFlags()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const-string/jumbo v1, "flags"

    .line 147
    .line 148
    .line 149
    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 150
    .line 151
    .line 152
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    .line 153
    .line 154
    if-eqz v0, :cond_3

    .line 155
    .line 156
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    const-string/jumbo v1, "internalFlags"

    .line 161
    .line 162
    .line 163
    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 164
    .line 165
    .line 166
    :cond_3
    iget-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    .line 167
    .line 168
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    const-string/jumbo v1, "lastSuccessfulRunTime"

    .line 173
    .line 174
    .line 175
    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 176
    .line 177
    .line 178
    iget-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    .line 179
    .line 180
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    const-string/jumbo v1, "lastFailedRunTime"

    .line 185
    .line 186
    .line 187
    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    .line 189
    .line 190
    iget-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    .line 191
    .line 192
    const-string/jumbo p1, "cumulativeExecutionTime"

    .line 193
    .line 194
    .line 195
    invoke-interface {p0, v2, p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    .line 197
    .line 198
    return-void
.end method

.method public static deepCopyBundle(ILandroid/os/PersistableBundle;)Landroid/os/PersistableBundle;
    .locals 4

    .line 1
    if-gtz p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->clone()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/os/PersistableBundle;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    instance-of v3, v2, Landroid/os/PersistableBundle;

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    check-cast v2, Landroid/os/PersistableBundle;

    .line 40
    .line 41
    add-int/lit8 v3, p0, -0x1

    .line 42
    .line 43
    invoke-static {v3, v2}, Lcom/android/server/job/JobStore$2;->deepCopyBundle(ILandroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    return-object v0
.end method

.method public static writeConstraintsToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "constraints"

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6
    .line 7
    .line 8
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_2

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/net/NetworkRequest;->getCapabilities()[I

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v3}, Lcom/android/server/job/JobStore;->intArrayToString([I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-string/jumbo v4, "net-capabilities-csv"

    .line 31
    .line 32
    .line 33
    invoke-interface {p0, v0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/net/NetworkRequest;->getForbiddenCapabilities()[I

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v3}, Lcom/android/server/job/JobStore;->intArrayToString([I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string/jumbo v4, "net-forbidden-capabilities-csv"

    .line 45
    .line 46
    .line 47
    invoke-interface {p0, v0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/net/NetworkRequest;->getTransportTypes()[I

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Lcom/android/server/job/JobStore;->intArrayToString([I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string/jumbo v3, "net-transport-types-csv"

    .line 59
    .line 60
    .line 61
    invoke-interface {p0, v0, v3, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getEstimatedNetworkDownloadBytes()J

    .line 65
    .line 66
    .line 67
    move-result-wide v3

    .line 68
    const-wide/16 v5, -0x1

    .line 69
    .line 70
    cmp-long p1, v3, v5

    .line 71
    .line 72
    if-eqz p1, :cond_0

    .line 73
    .line 74
    const-string/jumbo p1, "estimated-download-bytes"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getEstimatedNetworkDownloadBytes()J

    .line 78
    .line 79
    .line 80
    move-result-wide v3

    .line 81
    invoke-interface {p0, v0, p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    .line 83
    .line 84
    :cond_0
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getEstimatedNetworkUploadBytes()J

    .line 85
    .line 86
    .line 87
    move-result-wide v3

    .line 88
    cmp-long p1, v3, v5

    .line 89
    .line 90
    if-eqz p1, :cond_1

    .line 91
    .line 92
    const-string/jumbo p1, "estimated-upload-bytes"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getEstimatedNetworkUploadBytes()J

    .line 96
    .line 97
    .line 98
    move-result-wide v3

    .line 99
    invoke-interface {p0, v0, p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    .line 101
    .line 102
    :cond_1
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getMinimumNetworkChunkBytes()J

    .line 103
    .line 104
    .line 105
    move-result-wide v3

    .line 106
    cmp-long p1, v3, v5

    .line 107
    .line 108
    if-eqz p1, :cond_2

    .line 109
    .line 110
    const-string/jumbo p1, "minimum-network-chunk-bytes"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getMinimumNetworkChunkBytes()J

    .line 114
    .line 115
    .line 116
    move-result-wide v3

    .line 117
    invoke-interface {p0, v0, p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 118
    .line 119
    .line 120
    :cond_2
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    const/4 v3, 0x1

    .line 125
    if-eqz p1, :cond_3

    .line 126
    .line 127
    const-string/jumbo p1, "idle"

    .line 128
    .line 129
    .line 130
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-interface {p0, v0, p1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    .line 136
    .line 137
    :cond_3
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_4

    .line 142
    .line 143
    const-string/jumbo p1, "charging"

    .line 144
    .line 145
    .line 146
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-interface {p0, v0, p1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 151
    .line 152
    .line 153
    :cond_4
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-eqz p1, :cond_5

    .line 158
    .line 159
    const-string/jumbo p1, "battery-not-low"

    .line 160
    .line 161
    .line 162
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-interface {p0, v0, p1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 167
    .line 168
    .line 169
    :cond_5
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isRequireStorageNotLow()Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_6

    .line 174
    .line 175
    const-string/jumbo p1, "storage-not-low"

    .line 176
    .line 177
    .line 178
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-interface {p0, v0, p1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 183
    .line 184
    .line 185
    :cond_6
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method public static writeDebugInfoToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getDebugTagsArraySet()Landroid/util/ArraySet;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getTraceTag()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 23
    const-string/jumbo v3, "debug-info"

    .line 24
    .line 25
    .line 26
    invoke-interface {p0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 27
    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    const-string/jumbo v4, "trace-tag"

    .line 32
    .line 33
    .line 34
    invoke-interface {p0, v2, v4, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 35
    .line 36
    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    :goto_0
    if-ge p1, v1, :cond_2

    .line 39
    .line 40
    const-string/jumbo v4, "debug-tag"

    .line 41
    .line 42
    .line 43
    invoke-interface {p0, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Ljava/lang/String;

    .line 51
    .line 52
    const-string/jumbo v6, "tag"

    .line 53
    .line 54
    .line 55
    invoke-interface {p0, v2, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 56
    .line 57
    .line 58
    invoke-interface {p0, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 59
    .line 60
    .line 61
    add-int/lit8 p1, p1, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-interface {p0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public static writeExecutionCriteriaToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 12

    .line 1
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string/jumbo v2, "one-off"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v3, "periodic"

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v5

    .line 23
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string/jumbo v5, "period"

    .line 28
    .line 29
    .line 30
    invoke-interface {p0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getFlexMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v5

    .line 37
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string/jumbo v5, "flex"

    .line 42
    .line 43
    .line 44
    invoke-interface {p0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-interface {p0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 49
    .line 50
    .line 51
    :goto_0
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    .line 52
    .line 53
    sget-boolean v5, Lcom/android/server/job/JobStore;->DEBUG:Z

    .line 54
    .line 55
    if-eqz v5, :cond_1

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string/jumbo v6, "storing original UTC timestamps for "

    .line 62
    .line 63
    .line 64
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    const-string v6, "JobStore"

    .line 75
    .line 76
    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    :cond_1
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    .line 82
    .line 83
    .line 84
    move-result-wide v5

    .line 85
    sget-object v7, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 86
    .line 87
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 91
    .line 92
    .line 93
    move-result-wide v7

    .line 94
    const/high16 v9, 0x40000000    # 2.0f

    .line 95
    .line 96
    invoke-virtual {p1, v9}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    if-eqz v9, :cond_3

    .line 101
    .line 102
    if-nez v1, :cond_2

    .line 103
    .line 104
    iget-wide v9, p1, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    .line 105
    .line 106
    sub-long/2addr v9, v7

    .line 107
    add-long/2addr v9, v5

    .line 108
    goto :goto_1

    .line 109
    :cond_2
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v9, Ljava/lang/Long;

    .line 112
    .line 113
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 114
    .line 115
    .line 116
    move-result-wide v9

    .line 117
    :goto_1
    const-string/jumbo v11, "deadline"

    .line 118
    .line 119
    .line 120
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    invoke-interface {p0, v4, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 125
    .line 126
    .line 127
    :cond_3
    const/high16 v9, -0x80000000

    .line 128
    .line 129
    invoke-virtual {p1, v9}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    if-eqz v9, :cond_5

    .line 134
    .line 135
    if-nez v1, :cond_4

    .line 136
    .line 137
    iget-wide v9, p1, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    .line 138
    .line 139
    sub-long/2addr v9, v7

    .line 140
    add-long/2addr v9, v5

    .line 141
    goto :goto_2

    .line 142
    :cond_4
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v1, Ljava/lang/Long;

    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 147
    .line 148
    .line 149
    move-result-wide v9

    .line 150
    :goto_2
    const-string/jumbo v1, "delay"

    .line 151
    .line 152
    .line 153
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-interface {p0, v4, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 158
    .line 159
    .line 160
    :cond_5
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 161
    .line 162
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    .line 163
    .line 164
    .line 165
    move-result-wide v5

    .line 166
    const-wide/16 v7, 0x7530

    .line 167
    .line 168
    cmp-long v1, v5, v7

    .line 169
    .line 170
    if-nez v1, :cond_6

    .line 171
    .line 172
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    const/4 v1, 0x1

    .line 179
    if-eq p1, v1, :cond_7

    .line 180
    .line 181
    :cond_6
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    const-string/jumbo v1, "backoff-policy"

    .line 190
    .line 191
    .line 192
    invoke-interface {p0, v4, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    .line 196
    .line 197
    .line 198
    move-result-wide v5

    .line 199
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    const-string/jumbo v1, "initial-backoff"

    .line 204
    .line 205
    .line 206
    invoke-interface {p0, v4, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 207
    .line 208
    .line 209
    :cond_7
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-eqz p1, :cond_8

    .line 214
    .line 215
    invoke-interface {p0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 216
    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_8
    invoke-interface {p0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    .line 221
    .line 222
    :goto_3
    return-void
.end method

.method public static writeJobWorkItemListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;)V
    .locals 11

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_6

    .line 10
    .line 11
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Landroid/app/job/JobWorkItem;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    const-string v2, "JobStore"

    .line 31
    .line 32
    const-string v3, "Encountered JobWorkItem with Intent in persisting list"

    .line 33
    .line 34
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const/4 v3, 0x0

    .line 39
    const-string/jumbo v4, "job-work-item"

    .line 40
    .line 41
    .line 42
    invoke-interface {p0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 43
    .line 44
    .line 45
    const-string/jumbo v5, "delivery-count"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getDeliveryCount()I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    invoke-interface {p0, v3, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkDownloadBytes()J

    .line 56
    .line 57
    .line 58
    move-result-wide v5

    .line 59
    const-wide/16 v7, -0x1

    .line 60
    .line 61
    cmp-long v5, v5, v7

    .line 62
    .line 63
    if-eqz v5, :cond_3

    .line 64
    .line 65
    const-string/jumbo v5, "estimated-download-bytes"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkDownloadBytes()J

    .line 69
    .line 70
    .line 71
    move-result-wide v9

    .line 72
    invoke-interface {p0, v3, v5, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkUploadBytes()J

    .line 76
    .line 77
    .line 78
    move-result-wide v5

    .line 79
    cmp-long v5, v5, v7

    .line 80
    .line 81
    if-eqz v5, :cond_4

    .line 82
    .line 83
    const-string/jumbo v5, "estimated-upload-bytes"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkUploadBytes()J

    .line 87
    .line 88
    .line 89
    move-result-wide v9

    .line 90
    invoke-interface {p0, v3, v5, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    .line 92
    .line 93
    :cond_4
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getMinimumNetworkChunkBytes()J

    .line 94
    .line 95
    .line 96
    move-result-wide v5

    .line 97
    cmp-long v5, v5, v7

    .line 98
    .line 99
    if-eqz v5, :cond_5

    .line 100
    .line 101
    const-string/jumbo v5, "minimum-network-chunk-bytes"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getMinimumNetworkChunkBytes()J

    .line 105
    .line 106
    .line 107
    move-result-wide v6

    .line 108
    invoke-interface {p0, v3, v5, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    .line 110
    .line 111
    :cond_5
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getExtras()Landroid/os/PersistableBundle;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const-string/jumbo v5, "extras"

    .line 116
    .line 117
    .line 118
    invoke-interface {p0, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    .line 120
    .line 121
    const/16 v6, 0xa

    .line 122
    .line 123
    invoke-static {v6, v2}, Lcom/android/server/job/JobStore$2;->deepCopyBundle(ILandroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v2, p0}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 128
    .line 129
    .line 130
    invoke-interface {p0, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 131
    .line 132
    .line 133
    invoke-interface {p0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 134
    .line 135
    .line 136
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :cond_6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    .line 13
    .line 14
    iget-object v4, v0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v4

    .line 17
    :try_start_0
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    iput-boolean v5, v0, Lcom/android/server/job/JobStore;->mWriteScheduled:Z

    .line 21
    .line 22
    iget-boolean v6, v0, Lcom/android/server/job/JobStore;->mWriteInProgress:Z

    .line 23
    .line 24
    if-eqz v6, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    .line 27
    .line 28
    .line 29
    monitor-exit v4

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto/16 :goto_13

    .line 33
    .line 34
    :cond_0
    const/4 v6, 0x1

    .line 35
    iput-boolean v6, v0, Lcom/android/server/job/JobStore;->mWriteInProgress:Z

    .line 36
    .line 37
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    iget-object v7, v0, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter v7

    .line 41
    :try_start_1
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    .line 42
    .line 43
    iget-boolean v4, v0, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    .line 44
    .line 45
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/android/server/job/JobStore$2$CopyConsumer;->-$$Nest$mprepare(Lcom/android/server/job/JobStore$2$CopyConsumer;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 53
    .line 54
    iget-object v8, v1, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    .line 55
    .line 56
    const/4 v9, 0x0

    .line 57
    invoke-virtual {v0, v9, v8}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 65
    .line 66
    .line 67
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    .line 68
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    .line 71
    .line 72
    iput v5, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    .line 73
    .line 74
    iput v5, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    .line 75
    .line 76
    iput v5, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    .line 77
    .line 78
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    sub-int/2addr v0, v6

    .line 87
    move v7, v0

    .line 88
    :goto_0
    if-ltz v7, :cond_b

    .line 89
    .line 90
    if-eqz v4, :cond_1

    .line 91
    .line 92
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    .line 95
    .line 96
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->keyAt(I)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    iget-object v8, v1, Lcom/android/server/job/JobStore$2;->mJobFiles:Landroid/util/SparseArray;

    .line 101
    .line 102
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    check-cast v8, Landroid/util/AtomicFile;

    .line 107
    .line 108
    if-nez v8, :cond_2

    .line 109
    .line 110
    iget-object v8, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    .line 111
    .line 112
    new-instance v10, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string/jumbo v11, "jobs_"

    .line 115
    .line 116
    .line 117
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    new-instance v11, Ljava/io/File;

    .line 131
    .line 132
    iget-object v12, v8, Lcom/android/server/job/JobStore;->mJobFileDirectory:Ljava/io/File;

    .line 133
    .line 134
    const-string v13, ".xml"

    .line 135
    .line 136
    invoke-static {v10, v13}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    invoke-direct {v11, v12, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    new-instance v10, Landroid/util/AtomicFile;

    .line 144
    .line 145
    iget-object v8, v8, Lcom/android/server/job/JobStore;->mEventLogger:Landroid/util/SystemConfigFileCommitEventLogger;

    .line 146
    .line 147
    invoke-direct {v10, v11, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Landroid/util/SystemConfigFileCommitEventLogger;)V

    .line 148
    .line 149
    .line 150
    iget-object v8, v1, Lcom/android/server/job/JobStore$2;->mJobFiles:Landroid/util/SparseArray;

    .line 151
    .line 152
    invoke-virtual {v8, v0, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    move-object v8, v10

    .line 156
    goto :goto_1

    .line 157
    :cond_1
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    .line 158
    .line 159
    iget-object v8, v0, Lcom/android/server/job/JobStore;->mJobsFile:Landroid/util/AtomicFile;

    .line 160
    .line 161
    :cond_2
    :goto_1
    sget-boolean v0, Lcom/android/server/job/JobStore;->DEBUG:Z

    .line 162
    .line 163
    if-eqz v0, :cond_3

    .line 164
    .line 165
    const-string v0, "JobStore"

    .line 166
    .line 167
    new-instance v10, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v11, "Writing for "

    .line 170
    .line 171
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v11, v1, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    .line 175
    .line 176
    iget-object v11, v11, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    .line 177
    .line 178
    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->keyAt(I)I

    .line 179
    .line 180
    .line 181
    move-result v11

    .line 182
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v11, " to "

    .line 186
    .line 187
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 191
    .line 192
    .line 193
    move-result-object v11

    .line 194
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v11

    .line 198
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v11, ": "

    .line 202
    .line 203
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget-object v11, v1, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    .line 207
    .line 208
    iget-object v11, v11, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    .line 209
    .line 210
    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v11

    .line 214
    check-cast v11, Ljava/util/List;

    .line 215
    .line 216
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 217
    .line 218
    .line 219
    move-result v11

    .line 220
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v11, " jobs"

    .line 224
    .line 225
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v10

    .line 232
    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    :cond_3
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    .line 236
    .line 237
    iget-object v0, v0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    .line 238
    .line 239
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    check-cast v0, Ljava/util/List;

    .line 244
    .line 245
    const-string/jumbo v10, "job"

    .line 246
    .line 247
    .line 248
    const-string/jumbo v11, "job-info"

    .line 249
    .line 250
    .line 251
    const-string v12, "JobStore"

    .line 252
    .line 253
    iget-object v13, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    .line 254
    .line 255
    iget-object v13, v13, Lcom/android/server/job/JobStore;->mEventLogger:Landroid/util/SystemConfigFileCommitEventLogger;

    .line 256
    .line 257
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 258
    .line 259
    .line 260
    move-result-wide v14

    .line 261
    invoke-virtual {v13, v14, v15}, Landroid/util/SystemConfigFileCommitEventLogger;->setStartTime(J)V

    .line 262
    .line 263
    .line 264
    :try_start_2
    invoke-virtual {v8}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 265
    .line 266
    .line 267
    move-result-object v13
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 268
    :try_start_3
    invoke-static {v13}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 269
    .line 270
    .line 271
    move-result-object v14

    .line 272
    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 273
    .line 274
    invoke-interface {v14, v9, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 275
    .line 276
    .line 277
    const-string/jumbo v15, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 278
    .line 279
    .line 280
    invoke-interface {v14, v15, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 281
    .line 282
    .line 283
    invoke-interface {v14, v9, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 284
    .line 285
    .line 286
    const-string/jumbo v15, "version"

    .line 287
    .line 288
    .line 289
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    invoke-interface {v14, v9, v15, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 294
    .line 295
    .line 296
    const/4 v5, 0x0

    .line 297
    const/4 v15, 0x0

    .line 298
    const/16 v16, 0x0

    .line 299
    .line 300
    const/16 v17, 0x0

    .line 301
    .line 302
    :goto_2
    :try_start_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 303
    .line 304
    .line 305
    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 306
    if-ge v5, v6, :cond_6

    .line 307
    .line 308
    :try_start_5
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v6

    .line 312
    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    .line 313
    .line 314
    sget-boolean v18, Lcom/android/server/job/JobStore;->DEBUG:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 315
    .line 316
    if-eqz v18, :cond_4

    .line 317
    .line 318
    :try_start_6
    new-instance v9, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    move-object/from16 v19, v0

    .line 324
    .line 325
    const-string v0, "Saving job "

    .line 326
    .line 327
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    iget-object v0, v6, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 331
    .line 332
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 344
    .line 345
    .line 346
    const/4 v9, 0x0

    .line 347
    goto :goto_4

    .line 348
    :catchall_1
    move-exception v0

    .line 349
    move-object v5, v0

    .line 350
    move/from16 v20, v4

    .line 351
    .line 352
    :goto_3
    const/4 v4, 0x0

    .line 353
    goto/16 :goto_a

    .line 354
    .line 355
    :cond_4
    move-object/from16 v19, v0

    .line 356
    .line 357
    :goto_4
    :try_start_7
    invoke-interface {v14, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 358
    .line 359
    .line 360
    invoke-static {v14, v6}, Lcom/android/server/job/JobStore$2;->addAttributesToJobTag(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    .line 361
    .line 362
    .line 363
    invoke-static {v14, v6}, Lcom/android/server/job/JobStore$2;->writeConstraintsToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    .line 364
    .line 365
    .line 366
    invoke-static {v14, v6}, Lcom/android/server/job/JobStore$2;->writeExecutionCriteriaToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    .line 367
    .line 368
    .line 369
    iget-object v0, v6, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 370
    .line 371
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    const-string/jumbo v9, "extras"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 376
    .line 377
    .line 378
    move/from16 v20, v4

    .line 379
    .line 380
    const/4 v4, 0x0

    .line 381
    :try_start_8
    invoke-interface {v14, v4, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 382
    .line 383
    .line 384
    const/16 v4, 0xa

    .line 385
    .line 386
    invoke-static {v4, v0}, Lcom/android/server/job/JobStore$2;->deepCopyBundle(ILandroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-virtual {v0, v14}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 391
    .line 392
    .line 393
    const/4 v4, 0x0

    .line 394
    invoke-interface {v14, v4, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 395
    .line 396
    .line 397
    iget-object v0, v6, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 398
    .line 399
    invoke-static {v14, v0}, Lcom/android/server/job/JobStore$2;->writeJobWorkItemListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;)V

    .line 400
    .line 401
    .line 402
    iget-object v0, v6, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 403
    .line 404
    invoke-static {v14, v0}, Lcom/android/server/job/JobStore$2;->writeJobWorkItemListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;)V

    .line 405
    .line 406
    .line 407
    invoke-static {v14, v6}, Lcom/android/server/job/JobStore$2;->writeDebugInfoToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    .line 408
    .line 409
    .line 410
    const/4 v4, 0x0

    .line 411
    invoke-interface {v14, v4, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 412
    .line 413
    .line 414
    add-int/lit8 v15, v15, 0x1

    .line 415
    .line 416
    iget v0, v6, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 417
    .line 418
    const/16 v4, 0x3e8

    .line 419
    .line 420
    if-ne v0, v4, :cond_5

    .line 421
    .line 422
    add-int/lit8 v16, v16, 0x1

    .line 423
    .line 424
    const-class v0, Lcom/android/server/content/SyncJobService;

    .line 425
    .line 426
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    iget-object v4, v6, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 431
    .line 432
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 433
    .line 434
    .line 435
    move-result-object v4

    .line 436
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v4

    .line 440
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 444
    if-eqz v0, :cond_5

    .line 445
    .line 446
    add-int/lit8 v17, v17, 0x1

    .line 447
    .line 448
    goto :goto_6

    .line 449
    :goto_5
    move-object v5, v0

    .line 450
    goto :goto_3

    .line 451
    :cond_5
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 452
    .line 453
    move-object/from16 v0, v19

    .line 454
    .line 455
    move/from16 v4, v20

    .line 456
    .line 457
    const/4 v9, 0x0

    .line 458
    goto/16 :goto_2

    .line 459
    .line 460
    :catchall_2
    move-exception v0

    .line 461
    goto :goto_5

    .line 462
    :catchall_3
    move-exception v0

    .line 463
    move/from16 v20, v4

    .line 464
    .line 465
    goto :goto_5

    .line 466
    :cond_6
    move/from16 v20, v4

    .line 467
    .line 468
    move-object v4, v9

    .line 469
    :try_start_9
    invoke-interface {v14, v4, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 470
    .line 471
    .line 472
    invoke-interface {v14}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v8, v13}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 476
    .line 477
    .line 478
    if-eqz v13, :cond_7

    .line 479
    .line 480
    :try_start_a
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 481
    .line 482
    .line 483
    goto :goto_7

    .line 484
    :catchall_4
    move-exception v0

    .line 485
    move v5, v15

    .line 486
    goto/16 :goto_f

    .line 487
    .line 488
    :catch_0
    move-exception v0

    .line 489
    goto :goto_c

    .line 490
    :catch_1
    move-exception v0

    .line 491
    goto/16 :goto_d

    .line 492
    .line 493
    :cond_7
    :goto_7
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    .line 494
    .line 495
    iget-object v0, v0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    .line 496
    .line 497
    iget v5, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    .line 498
    .line 499
    add-int/2addr v5, v15

    .line 500
    iput v5, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    .line 501
    .line 502
    :goto_8
    iget v5, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    .line 503
    .line 504
    add-int v5, v5, v16

    .line 505
    .line 506
    iput v5, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    .line 507
    .line 508
    iget v5, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    .line 509
    .line 510
    add-int v5, v5, v17

    .line 511
    .line 512
    iput v5, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    .line 513
    .line 514
    goto/16 :goto_e

    .line 515
    .line 516
    :catchall_5
    move-exception v0

    .line 517
    :goto_9
    move-object v5, v0

    .line 518
    goto :goto_a

    .line 519
    :catchall_6
    move-exception v0

    .line 520
    move/from16 v20, v4

    .line 521
    .line 522
    move-object v4, v9

    .line 523
    goto :goto_9

    .line 524
    :catchall_7
    move-exception v0

    .line 525
    move/from16 v20, v4

    .line 526
    .line 527
    move-object v4, v9

    .line 528
    move-object v5, v0

    .line 529
    const/4 v15, 0x0

    .line 530
    const/16 v16, 0x0

    .line 531
    .line 532
    const/16 v17, 0x0

    .line 533
    .line 534
    :goto_a
    if-eqz v13, :cond_8

    .line 535
    .line 536
    :try_start_b
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 537
    .line 538
    .line 539
    goto :goto_b

    .line 540
    :catchall_8
    move-exception v0

    .line 541
    move-object v6, v0

    .line 542
    :try_start_c
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 543
    .line 544
    .line 545
    :cond_8
    :goto_b
    throw v5
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 546
    :catchall_9
    move-exception v0

    .line 547
    const/4 v5, 0x0

    .line 548
    const/16 v16, 0x0

    .line 549
    .line 550
    const/16 v17, 0x0

    .line 551
    .line 552
    goto :goto_f

    .line 553
    :catch_2
    move-exception v0

    .line 554
    move/from16 v20, v4

    .line 555
    .line 556
    move-object v4, v9

    .line 557
    const/4 v15, 0x0

    .line 558
    const/16 v16, 0x0

    .line 559
    .line 560
    const/16 v17, 0x0

    .line 561
    .line 562
    :goto_c
    :try_start_d
    sget-boolean v5, Lcom/android/server/job/JobStore;->DEBUG:Z

    .line 563
    .line 564
    if-eqz v5, :cond_9

    .line 565
    .line 566
    const-string v5, "Error persisting bundle."

    .line 567
    .line 568
    invoke-static {v12, v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 569
    .line 570
    .line 571
    :cond_9
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    .line 572
    .line 573
    iget-object v0, v0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    .line 574
    .line 575
    iget v5, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    .line 576
    .line 577
    add-int/2addr v5, v15

    .line 578
    iput v5, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    .line 579
    .line 580
    goto :goto_8

    .line 581
    :catch_3
    move-exception v0

    .line 582
    move/from16 v20, v4

    .line 583
    .line 584
    move-object v4, v9

    .line 585
    const/4 v15, 0x0

    .line 586
    const/16 v16, 0x0

    .line 587
    .line 588
    const/16 v17, 0x0

    .line 589
    .line 590
    :goto_d
    :try_start_e
    sget-boolean v5, Lcom/android/server/job/JobStore;->DEBUG:Z

    .line 591
    .line 592
    if-eqz v5, :cond_a

    .line 593
    .line 594
    const-string v5, "Error writing out job data."

    .line 595
    .line 596
    invoke-static {v12, v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 597
    .line 598
    .line 599
    :cond_a
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    .line 600
    .line 601
    iget-object v0, v0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    .line 602
    .line 603
    iget v5, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    .line 604
    .line 605
    add-int/2addr v5, v15

    .line 606
    iput v5, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    .line 607
    .line 608
    goto :goto_8

    .line 609
    :goto_e
    add-int/lit8 v7, v7, -0x1

    .line 610
    .line 611
    move-object v9, v4

    .line 612
    move/from16 v4, v20

    .line 613
    .line 614
    const/4 v5, 0x0

    .line 615
    const/4 v6, 0x1

    .line 616
    goto/16 :goto_0

    .line 617
    .line 618
    :goto_f
    iget-object v1, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    .line 619
    .line 620
    iget-object v1, v1, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    .line 621
    .line 622
    iget v2, v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    .line 623
    .line 624
    add-int/2addr v2, v5

    .line 625
    iput v2, v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    .line 626
    .line 627
    iget v2, v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    .line 628
    .line 629
    add-int v2, v2, v16

    .line 630
    .line 631
    iput v2, v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    .line 632
    .line 633
    iget v2, v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    .line 634
    .line 635
    add-int v2, v2, v17

    .line 636
    .line 637
    iput v2, v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    .line 638
    .line 639
    throw v0

    .line 640
    :cond_b
    move/from16 v20, v4

    .line 641
    .line 642
    sget-boolean v0, Lcom/android/server/job/JobStore;->DEBUG:Z

    .line 643
    .line 644
    if-eqz v0, :cond_c

    .line 645
    .line 646
    const-string v0, "JobStore"

    .line 647
    .line 648
    new-instance v4, Ljava/lang/StringBuilder;

    .line 649
    .line 650
    const-string v5, "Finished writing, took "

    .line 651
    .line 652
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 656
    .line 657
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 658
    .line 659
    .line 660
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 661
    .line 662
    .line 663
    move-result-wide v5

    .line 664
    sub-long/2addr v5, v2

    .line 665
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    const-string/jumbo v2, "ms"

    .line 669
    .line 670
    .line 671
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v2

    .line 678
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    .line 680
    .line 681
    :cond_c
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    .line 682
    .line 683
    iget-object v0, v0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    .line 684
    .line 685
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 686
    .line 687
    .line 688
    if-nez v20, :cond_d

    .line 689
    .line 690
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->mJobFiles:Landroid/util/SparseArray;

    .line 691
    .line 692
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 693
    .line 694
    .line 695
    :cond_d
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    .line 696
    .line 697
    iget-object v0, v0, Lcom/android/server/job/JobStore;->mJobFileDirectory:Ljava/io/File;

    .line 698
    .line 699
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 700
    .line 701
    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    .line 702
    .line 703
    .line 704
    move-result-wide v2

    .line 705
    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 706
    .line 707
    .line 708
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    .line 709
    .line 710
    iget-object v2, v0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    .line 711
    .line 712
    monitor-enter v2

    .line 713
    :try_start_f
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    .line 714
    .line 715
    iget-boolean v3, v0, Lcom/android/server/job/JobStore;->mSplitFileMigrationNeeded:Z

    .line 716
    .line 717
    if-eqz v3, :cond_10

    .line 718
    .line 719
    iget-object v0, v0, Lcom/android/server/job/JobStore;->mJobFileDirectory:Ljava/io/File;

    .line 720
    .line 721
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    array-length v3, v0

    .line 726
    const/4 v4, 0x0

    .line 727
    :goto_10
    if-ge v4, v3, :cond_10

    .line 728
    .line 729
    aget-object v5, v0, v4

    .line 730
    .line 731
    if-eqz v20, :cond_e

    .line 732
    .line 733
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v6

    .line 737
    const-string/jumbo v7, "jobs_"

    .line 738
    .line 739
    .line 740
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 741
    .line 742
    .line 743
    move-result v6

    .line 744
    if-nez v6, :cond_f

    .line 745
    .line 746
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 747
    .line 748
    .line 749
    goto :goto_11

    .line 750
    :catchall_a
    move-exception v0

    .line 751
    goto :goto_12

    .line 752
    :cond_e
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v6

    .line 756
    const-string/jumbo v7, "jobs_"

    .line 757
    .line 758
    .line 759
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 760
    .line 761
    .line 762
    move-result v6

    .line 763
    if-eqz v6, :cond_f

    .line 764
    .line 765
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 766
    .line 767
    .line 768
    :cond_f
    :goto_11
    add-int/lit8 v4, v4, 0x1

    .line 769
    .line 770
    goto :goto_10

    .line 771
    :cond_10
    iget-object v0, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    .line 772
    .line 773
    const/4 v1, 0x0

    .line 774
    iput-boolean v1, v0, Lcom/android/server/job/JobStore;->mWriteInProgress:Z

    .line 775
    .line 776
    iget-object v0, v0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    .line 777
    .line 778
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 779
    .line 780
    .line 781
    monitor-exit v2

    .line 782
    return-void

    .line 783
    :goto_12
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    .line 784
    throw v0

    .line 785
    :catchall_b
    move-exception v0

    .line 786
    :try_start_10
    monitor-exit v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    .line 787
    throw v0

    .line 788
    :goto_13
    :try_start_11
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 789
    throw v0
.end method
