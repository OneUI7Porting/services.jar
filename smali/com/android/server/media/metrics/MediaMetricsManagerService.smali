.class public final Lcom/android/server/media/metrics/MediaMetricsManagerService;
.super Lcom/android/server/SystemService;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final EMPTY_MEDIA_ITEM_INFO:Landroid/media/metrics/MediaItemInfo;

.field public static final PATTERN_KNOWN_EDITING_LIBRARY_NAMES:Ljava/util/regex/Pattern;


# instance fields
.field public mAllowlist:Ljava/util/List;

.field public mBlockList:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public mMode:Ljava/lang/Integer;

.field public mNoUidAllowlist:Ljava/util/List;

.field public mNoUidBlocklist:Ljava/util/List;

.field public final mSecureRandom:Ljava/security/SecureRandom;


# direct methods
.method public static -$$Nest$smgetBucketedDurationMillis(J)J
    .locals 6

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    cmp-long v2, p0, v0

    .line 4
    .line 5
    if-eqz v2, :cond_1

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v2, p0, v2

    .line 10
    .line 11
    if-gtz v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-wide/16 v0, 0x1

    .line 15
    .line 16
    add-long/2addr p0, v0

    .line 17
    long-to-double p0, p0

    .line 18
    const-wide v0, 0x40ed4c0000000000L    # 60000.0

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    div-double/2addr p0, v0

    .line 24
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    .line 25
    .line 26
    .line 27
    move-result-wide p0

    .line 28
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 29
    .line 30
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    div-double/2addr p0, v4

    .line 35
    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    .line 36
    .line 37
    add-double/2addr p0, v4

    .line 38
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    .line 39
    .line 40
    .line 41
    move-result-wide p0

    .line 42
    double-to-int p0, p0

    .line 43
    const/4 p1, 0x0

    .line 44
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    const/16 p1, 0xd

    .line 49
    .line 50
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    add-int/lit8 p0, p0, -0x8

    .line 55
    .line 56
    int-to-double p0, p0

    .line 57
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    .line 58
    .line 59
    .line 60
    move-result-wide p0

    .line 61
    mul-double/2addr p0, v0

    .line 62
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    .line 63
    .line 64
    .line 65
    move-result-wide p0

    .line 66
    double-to-long v0, p0

    .line 67
    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static -$$Nest$smgetFilteredFirstMimeType(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getFilteredMimeType(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string p0, ""

    .line 29
    .line 30
    :goto_1
    return-object p0
.end method

.method public static -$$Nest$smgetVideoFrameRateEnum(F)I
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x18

    .line 6
    .line 7
    if-eq p0, v0, :cond_8

    .line 8
    .line 9
    const/16 v0, 0x19

    .line 10
    .line 11
    if-eq p0, v0, :cond_7

    .line 12
    .line 13
    const/16 v0, 0x1e

    .line 14
    .line 15
    if-eq p0, v0, :cond_6

    .line 16
    .line 17
    const/16 v0, 0x32

    .line 18
    .line 19
    if-eq p0, v0, :cond_5

    .line 20
    .line 21
    const/16 v0, 0x3c

    .line 22
    .line 23
    if-eq p0, v0, :cond_4

    .line 24
    .line 25
    const/16 v0, 0x78

    .line 26
    .line 27
    if-eq p0, v0, :cond_3

    .line 28
    .line 29
    const/16 v0, 0xf0

    .line 30
    .line 31
    if-eq p0, v0, :cond_2

    .line 32
    .line 33
    const/16 v0, 0x1e0

    .line 34
    .line 35
    if-eq p0, v0, :cond_1

    .line 36
    .line 37
    const/16 v0, 0x3c0

    .line 38
    .line 39
    if-eq p0, v0, :cond_0

    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const p0, 0x17700

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const p0, 0xbb80

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/16 p0, 0x5dc0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const/16 p0, 0x2ee0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    const/16 p0, 0x1770

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_5
    const/16 p0, 0x1388

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_6
    const/16 p0, 0xbb8

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_7
    const/16 p0, 0x9c4

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_8
    const/16 p0, 0x960

    .line 70
    .line 71
    :goto_0
    return p0
.end method

.method public static -$$Nest$smgetVideoHdrFormatEnum(ILjava/lang/String;)I
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const-string/jumbo v0, "video/dolby-vision"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const/4 p0, 0x5

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-static {p0}, Landroid/hardware/DataSpace;->getStandard(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {p0}, Landroid/hardware/DataSpace;->getTransfer(I)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    const/high16 v0, 0x60000

    .line 25
    .line 26
    if-ne p1, v0, :cond_2

    .line 27
    .line 28
    const/high16 v1, 0x2000000

    .line 29
    .line 30
    if-ne p0, v1, :cond_2

    .line 31
    .line 32
    const/4 p0, 0x2

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    if-ne p1, v0, :cond_3

    .line 35
    .line 36
    const/high16 p1, 0x1c00000

    .line 37
    .line 38
    if-ne p0, p1, :cond_3

    .line 39
    .line 40
    const/4 p0, 0x3

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    const/4 p0, 0x1

    .line 43
    :goto_0
    return p0
.end method

.method public static -$$Nest$smgetVideoResolutionEnum(Landroid/util/Size;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/16 v1, 0x160

    .line 10
    .line 11
    const/16 v2, 0x280

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    if-ne p0, v2, :cond_0

    .line 16
    .line 17
    const/16 p0, 0xe4

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_0
    const/16 v1, 0x168

    .line 22
    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    if-ne p0, v2, :cond_1

    .line 26
    .line 27
    const/16 p0, 0xe9

    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_1
    const/16 v1, 0x1e0

    .line 32
    .line 33
    if-ne v0, v1, :cond_2

    .line 34
    .line 35
    if-ne p0, v2, :cond_2

    .line 36
    .line 37
    const/16 p0, 0x137

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    if-ne v0, v1, :cond_3

    .line 41
    .line 42
    const/16 v1, 0x356

    .line 43
    .line 44
    if-ne p0, v1, :cond_3

    .line 45
    .line 46
    const/16 p0, 0x19e

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    const/16 v1, 0x21c

    .line 50
    .line 51
    if-ne v0, v1, :cond_4

    .line 52
    .line 53
    const/16 v1, 0x3c0

    .line 54
    .line 55
    if-ne p0, v1, :cond_4

    .line 56
    .line 57
    const/16 p0, 0x20c

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    const/16 v1, 0x240

    .line 61
    .line 62
    if-ne v0, v1, :cond_5

    .line 63
    .line 64
    const/16 v1, 0x400

    .line 65
    .line 66
    if-ne p0, v1, :cond_5

    .line 67
    .line 68
    const/16 p0, 0x26d

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_5
    const/16 v1, 0x500

    .line 72
    .line 73
    if-ne v0, v1, :cond_6

    .line 74
    .line 75
    const/16 v1, 0x2d0

    .line 76
    .line 77
    if-ne p0, v1, :cond_6

    .line 78
    .line 79
    const/16 p0, 0x3a3

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_6
    const/16 v1, 0x780

    .line 83
    .line 84
    if-ne v0, v1, :cond_7

    .line 85
    .line 86
    const/16 v1, 0x438

    .line 87
    .line 88
    if-ne p0, v1, :cond_7

    .line 89
    .line 90
    const/16 p0, 0x82f

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_7
    const/16 v1, 0x5a0

    .line 94
    .line 95
    if-ne v0, v1, :cond_8

    .line 96
    .line 97
    const/16 v1, 0xa00

    .line 98
    .line 99
    if-ne p0, v1, :cond_8

    .line 100
    .line 101
    const/16 p0, 0xe8c

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_8
    const/16 v1, 0xf00

    .line 105
    .line 106
    if-ne v0, v1, :cond_9

    .line 107
    .line 108
    const/16 v1, 0x870

    .line 109
    .line 110
    if-ne p0, v1, :cond_9

    .line 111
    .line 112
    const/16 p0, 0x20ba

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_9
    const/16 v1, 0x1e00

    .line 116
    .line 117
    if-ne v0, v1, :cond_a

    .line 118
    .line 119
    const/16 v0, 0x10e0

    .line 120
    .line 121
    if-ne p0, v0, :cond_a

    .line 122
    .line 123
    const p0, 0x82e6

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_a
    const/4 p0, 0x0

    .line 128
    :goto_0
    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/media/metrics/MediaItemInfo$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/metrics/MediaItemInfo$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/media/metrics/MediaItemInfo$Builder;->build()Landroid/media/metrics/MediaItemInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->EMPTY_MEDIA_ITEM_INFO:Landroid/media/metrics/MediaItemInfo;

    .line 11
    .line 12
    const-string v0, "androidx\\.media3:media3-(transformer|muxer):[\\d.]+(-(alpha|beta|rc)\\d\\d)?"

    .line 13
    .line 14
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->PATTERN_KNOWN_EDITING_LIBRARY_NAMES:Ljava/util/regex/Pattern;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mLock:Ljava/lang/Object;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    new-instance p1, Ljava/security/SecureRandom;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mSecureRandom:Ljava/security/SecureRandom;

    .line 30
    .line 31
    return-void
.end method

.method public static getFilteredMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    sparse-switch v2, :sswitch_data_0

    .line 19
    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :sswitch_0
    const-string/jumbo v2, "video/x-matroska"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :cond_1
    const/16 v0, 0x29

    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :sswitch_1
    const-string/jumbo v2, "video/x-vnd.on2.vp9"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_2
    const/16 v0, 0x28

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :sswitch_2
    const-string/jumbo v2, "video/x-vnd.on2.vp8"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_3

    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :cond_3
    const/16 v0, 0x27

    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :sswitch_3
    const-string/jumbo v2, "audio/true-hd"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_4

    .line 76
    .line 77
    goto/16 :goto_0

    .line 78
    .line 79
    :cond_4
    const/16 v0, 0x26

    .line 80
    .line 81
    goto/16 :goto_0

    .line 82
    .line 83
    :sswitch_4
    const-string/jumbo v2, "audio/vnd.dts.hd"

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-nez v2, :cond_5

    .line 91
    .line 92
    goto/16 :goto_0

    .line 93
    .line 94
    :cond_5
    const/16 v0, 0x25

    .line 95
    .line 96
    goto/16 :goto_0

    .line 97
    .line 98
    :sswitch_5
    const-string/jumbo v2, "audio/webm"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-nez v2, :cond_6

    .line 106
    .line 107
    goto/16 :goto_0

    .line 108
    .line 109
    :cond_6
    const/16 v0, 0x24

    .line 110
    .line 111
    goto/16 :goto_0

    .line 112
    .line 113
    :sswitch_6
    const-string/jumbo v2, "audio/opus"

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-nez v2, :cond_7

    .line 121
    .line 122
    goto/16 :goto_0

    .line 123
    .line 124
    :cond_7
    const/16 v0, 0x23

    .line 125
    .line 126
    goto/16 :goto_0

    .line 127
    .line 128
    :sswitch_7
    const-string/jumbo v2, "audio/mpeg"

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-nez v2, :cond_8

    .line 136
    .line 137
    goto/16 :goto_0

    .line 138
    .line 139
    :cond_8
    const/16 v0, 0x22

    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :sswitch_8
    const-string/jumbo v2, "audio/midi"

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-nez v2, :cond_9

    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :cond_9
    const/16 v0, 0x21

    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :sswitch_9
    const-string/jumbo v2, "audio/flac"

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-nez v2, :cond_a

    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :cond_a
    const/16 v0, 0x20

    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :sswitch_a
    const-string/jumbo v2, "audio/eac3"

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-nez v2, :cond_b

    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_b
    const/16 v0, 0x1f

    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :sswitch_b
    const-string/jumbo v2, "video/raw"

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-nez v2, :cond_c

    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_c
    const/16 v0, 0x1e

    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :sswitch_c
    const-string/jumbo v2, "video/mp4"

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-nez v2, :cond_d

    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_d
    const/16 v0, 0x1d

    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :sswitch_d
    const-string/jumbo v2, "video/avc"

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-nez v2, :cond_e

    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :cond_e
    const/16 v0, 0x1c

    .line 230
    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :sswitch_e
    const-string/jumbo v2, "video/mp4v-es"

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-nez v2, :cond_f

    .line 241
    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    :cond_f
    const/16 v0, 0x1b

    .line 245
    .line 246
    goto/16 :goto_0

    .line 247
    .line 248
    :sswitch_f
    const-string/jumbo v2, "audio/wav"

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-nez v2, :cond_10

    .line 256
    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :cond_10
    const/16 v0, 0x1a

    .line 260
    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :sswitch_10
    const-string/jumbo v2, "audio/raw"

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-nez v2, :cond_11

    .line 271
    .line 272
    goto/16 :goto_0

    .line 273
    .line 274
    :cond_11
    const/16 v0, 0x19

    .line 275
    .line 276
    goto/16 :goto_0

    .line 277
    .line 278
    :sswitch_11
    const-string/jumbo v2, "audio/ogg"

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    if-nez v2, :cond_12

    .line 286
    .line 287
    goto/16 :goto_0

    .line 288
    .line 289
    :cond_12
    const/16 v0, 0x18

    .line 290
    .line 291
    goto/16 :goto_0

    .line 292
    .line 293
    :sswitch_12
    const-string/jumbo v2, "audio/mp4"

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    if-nez v2, :cond_13

    .line 301
    .line 302
    goto/16 :goto_0

    .line 303
    .line 304
    :cond_13
    const/16 v0, 0x17

    .line 305
    .line 306
    goto/16 :goto_0

    .line 307
    .line 308
    :sswitch_13
    const-string/jumbo v2, "audio/av4"

    .line 309
    .line 310
    .line 311
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    if-nez v2, :cond_14

    .line 316
    .line 317
    goto/16 :goto_0

    .line 318
    .line 319
    :cond_14
    const/16 v0, 0x16

    .line 320
    .line 321
    goto/16 :goto_0

    .line 322
    .line 323
    :sswitch_14
    const-string/jumbo v2, "audio/ac3"

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    if-nez v2, :cond_15

    .line 331
    .line 332
    goto/16 :goto_0

    .line 333
    .line 334
    :cond_15
    const/16 v0, 0x15

    .line 335
    .line 336
    goto/16 :goto_0

    .line 337
    .line 338
    :sswitch_15
    const-string/jumbo v2, "application/dash+xml"

    .line 339
    .line 340
    .line 341
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v2

    .line 345
    if-nez v2, :cond_16

    .line 346
    .line 347
    goto/16 :goto_0

    .line 348
    .line 349
    :cond_16
    const/16 v0, 0x14

    .line 350
    .line 351
    goto/16 :goto_0

    .line 352
    .line 353
    :sswitch_16
    const-string/jumbo v2, "video/x-flv"

    .line 354
    .line 355
    .line 356
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    if-nez v2, :cond_17

    .line 361
    .line 362
    goto/16 :goto_0

    .line 363
    .line 364
    :cond_17
    const/16 v0, 0x13

    .line 365
    .line 366
    goto/16 :goto_0

    .line 367
    .line 368
    :sswitch_17
    const-string/jumbo v2, "application/webm"

    .line 369
    .line 370
    .line 371
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    if-nez v2, :cond_18

    .line 376
    .line 377
    goto/16 :goto_0

    .line 378
    .line 379
    :cond_18
    const/16 v0, 0x12

    .line 380
    .line 381
    goto/16 :goto_0

    .line 382
    .line 383
    :sswitch_18
    const-string/jumbo v2, "audio/mp4a-latm"

    .line 384
    .line 385
    .line 386
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    if-nez v2, :cond_19

    .line 391
    .line 392
    goto/16 :goto_0

    .line 393
    .line 394
    :cond_19
    const/16 v0, 0x11

    .line 395
    .line 396
    goto/16 :goto_0

    .line 397
    .line 398
    :sswitch_19
    const-string/jumbo v2, "application/vnd.ms-sstr+xml"

    .line 399
    .line 400
    .line 401
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    if-nez v2, :cond_1a

    .line 406
    .line 407
    goto/16 :goto_0

    .line 408
    .line 409
    :cond_1a
    const/16 v0, 0x10

    .line 410
    .line 411
    goto/16 :goto_0

    .line 412
    .line 413
    :sswitch_1a
    const-string/jumbo v2, "application/x-matroska"

    .line 414
    .line 415
    .line 416
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    if-nez v2, :cond_1b

    .line 421
    .line 422
    goto/16 :goto_0

    .line 423
    .line 424
    :cond_1b
    const/16 v0, 0xf

    .line 425
    .line 426
    goto/16 :goto_0

    .line 427
    .line 428
    :sswitch_1b
    const-string/jumbo v2, "audio/x-matroska"

    .line 429
    .line 430
    .line 431
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result v2

    .line 435
    if-nez v2, :cond_1c

    .line 436
    .line 437
    goto/16 :goto_0

    .line 438
    .line 439
    :cond_1c
    const/16 v0, 0xe

    .line 440
    .line 441
    goto/16 :goto_0

    .line 442
    .line 443
    :sswitch_1c
    const-string/jumbo v2, "audio/mpeg-L2"

    .line 444
    .line 445
    .line 446
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v2

    .line 450
    if-nez v2, :cond_1d

    .line 451
    .line 452
    goto/16 :goto_0

    .line 453
    .line 454
    :cond_1d
    const/16 v0, 0xd

    .line 455
    .line 456
    goto/16 :goto_0

    .line 457
    .line 458
    :sswitch_1d
    const-string/jumbo v2, "audio/mpeg-L1"

    .line 459
    .line 460
    .line 461
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v2

    .line 465
    if-nez v2, :cond_1e

    .line 466
    .line 467
    goto/16 :goto_0

    .line 468
    .line 469
    :cond_1e
    const/16 v0, 0xc

    .line 470
    .line 471
    goto/16 :goto_0

    .line 472
    .line 473
    :sswitch_1e
    const-string/jumbo v2, "application/x-mpegURL"

    .line 474
    .line 475
    .line 476
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    move-result v2

    .line 480
    if-nez v2, :cond_1f

    .line 481
    .line 482
    goto/16 :goto_0

    .line 483
    .line 484
    :cond_1f
    const/16 v0, 0xb

    .line 485
    .line 486
    goto/16 :goto_0

    .line 487
    .line 488
    :sswitch_1f
    const-string/jumbo v2, "audio/vorbis"

    .line 489
    .line 490
    .line 491
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    move-result v2

    .line 495
    if-nez v2, :cond_20

    .line 496
    .line 497
    goto/16 :goto_0

    .line 498
    .line 499
    :cond_20
    const/16 v0, 0xa

    .line 500
    .line 501
    goto/16 :goto_0

    .line 502
    .line 503
    :sswitch_20
    const-string/jumbo v2, "audio/vnd.dts"

    .line 504
    .line 505
    .line 506
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    move-result v2

    .line 510
    if-nez v2, :cond_21

    .line 511
    .line 512
    goto/16 :goto_0

    .line 513
    .line 514
    :cond_21
    const/16 v0, 0x9

    .line 515
    .line 516
    goto/16 :goto_0

    .line 517
    .line 518
    :sswitch_21
    const-string/jumbo v2, "application/mp4"

    .line 519
    .line 520
    .line 521
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    move-result v2

    .line 525
    if-nez v2, :cond_22

    .line 526
    .line 527
    goto/16 :goto_0

    .line 528
    .line 529
    :cond_22
    const/16 v0, 0x8

    .line 530
    .line 531
    goto/16 :goto_0

    .line 532
    .line 533
    :sswitch_22
    const-string/jumbo v2, "video/webm"

    .line 534
    .line 535
    .line 536
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    move-result v2

    .line 540
    if-nez v2, :cond_23

    .line 541
    .line 542
    goto :goto_0

    .line 543
    :cond_23
    const/4 v0, 0x7

    .line 544
    goto :goto_0

    .line 545
    :sswitch_23
    const-string/jumbo v2, "video/mpeg"

    .line 546
    .line 547
    .line 548
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 549
    .line 550
    .line 551
    move-result v2

    .line 552
    if-nez v2, :cond_24

    .line 553
    .line 554
    goto :goto_0

    .line 555
    :cond_24
    const/4 v0, 0x6

    .line 556
    goto :goto_0

    .line 557
    :sswitch_24
    const-string/jumbo v2, "video/mp2t"

    .line 558
    .line 559
    .line 560
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    move-result v2

    .line 564
    if-nez v2, :cond_25

    .line 565
    .line 566
    goto :goto_0

    .line 567
    :cond_25
    const/4 v0, 0x5

    .line 568
    goto :goto_0

    .line 569
    :sswitch_25
    const-string/jumbo v2, "video/hevc"

    .line 570
    .line 571
    .line 572
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    move-result v2

    .line 576
    if-nez v2, :cond_26

    .line 577
    .line 578
    goto :goto_0

    .line 579
    :cond_26
    const/4 v0, 0x4

    .line 580
    goto :goto_0

    .line 581
    :sswitch_26
    const-string/jumbo v2, "video/av01"

    .line 582
    .line 583
    .line 584
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    move-result v2

    .line 588
    if-nez v2, :cond_27

    .line 589
    .line 590
    goto :goto_0

    .line 591
    :cond_27
    const/4 v0, 0x3

    .line 592
    goto :goto_0

    .line 593
    :sswitch_27
    const-string/jumbo v2, "video/3gpp"

    .line 594
    .line 595
    .line 596
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 597
    .line 598
    .line 599
    move-result v2

    .line 600
    if-nez v2, :cond_28

    .line 601
    .line 602
    goto :goto_0

    .line 603
    :cond_28
    const/4 v0, 0x2

    .line 604
    goto :goto_0

    .line 605
    :sswitch_28
    const-string/jumbo v2, "video/dolby-vision"

    .line 606
    .line 607
    .line 608
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    move-result v2

    .line 612
    if-nez v2, :cond_29

    .line 613
    .line 614
    goto :goto_0

    .line 615
    :cond_29
    const/4 v0, 0x1

    .line 616
    goto :goto_0

    .line 617
    :sswitch_29
    const-string/jumbo v2, "audio/eac3-joc"

    .line 618
    .line 619
    .line 620
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 621
    .line 622
    .line 623
    move-result v2

    .line 624
    if-nez v2, :cond_2a

    .line 625
    .line 626
    goto :goto_0

    .line 627
    :cond_2a
    const/4 v0, 0x0

    .line 628
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 629
    .line 630
    .line 631
    move-object p0, v1

    .line 632
    :pswitch_0
    return-object p0

    .line 633
    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_29
        -0x6e5534ef -> :sswitch_28
        -0x63306f58 -> :sswitch_27
        -0x631b55f6 -> :sswitch_26
        -0x63185e82 -> :sswitch_25
        -0x6315f787 -> :sswitch_24
        -0x6315f167 -> :sswitch_23
        -0x63118f53 -> :sswitch_22
        -0x4a681e4e -> :sswitch_21
        -0x41455b98 -> :sswitch_20
        -0x3bd43e14 -> :sswitch_1f
        -0x3a5c4caa -> :sswitch_1e
        -0x19cc928c -> :sswitch_1d
        -0x19cc928b -> :sswitch_1c
        -0x17118226 -> :sswitch_1b
        -0x106abbe0 -> :sswitch_1a
        -0x957ced0 -> :sswitch_19
        -0x3313c2e -> :sswitch_18
        -0x2974308 -> :sswitch_17
        0xd45707 -> :sswitch_16
        0x3d3887d -> :sswitch_15
        0xb269698 -> :sswitch_14
        0xb2698e6 -> :sswitch_13
        0xb26c538 -> :sswitch_12
        0xb26cbd6 -> :sswitch_11
        0xb26d66f -> :sswitch_10
        0xb26e933 -> :sswitch_f
        0x46cdc642 -> :sswitch_e
        0x4f62373a -> :sswitch_d
        0x4f62635d -> :sswitch_c
        0x4f627494 -> :sswitch_b
        0x59ae0c65 -> :sswitch_a
        0x59aeaa01 -> :sswitch_9
        0x59b1cdba -> :sswitch_8
        0x59b1e81e -> :sswitch_7
        0x59b2d2d8 -> :sswitch_6
        0x59b64a32 -> :sswitch_5
        0x59c2dc42 -> :sswitch_4
        0x5cc95062 -> :sswitch_3
        0x5f50bed8 -> :sswitch_2
        0x5f50bed9 -> :sswitch_1
        0x79909c15 -> :sswitch_0
    .end sparse-switch

    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getListLocked(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .line 1
    const-string/jumbo v0, "failed_to_get"

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    :try_start_0
    const-string/jumbo v3, "media"

    .line 9
    .line 10
    .line 11
    invoke-static {v3, p0, v0}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const-string/jumbo v0, "failed to get "

    .line 25
    .line 26
    .line 27
    const-string v1, " from DeviceConfig"

    .line 28
    .line 29
    const-string v2, "MediaMetricsManagerService"

    .line 30
    .line 31
    invoke-static {v0, p0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    return-object p0

    .line 36
    :cond_0
    const-string p0, ","

    .line 37
    .line 38
    invoke-virtual {v3, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    throw p0
.end method


# virtual methods
.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;-><init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "media_metrics"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lcom/android/server/media/metrics/MediaMetricsManagerService$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;)V

    .line 21
    .line 22
    .line 23
    const-string/jumbo p0, "media"

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
