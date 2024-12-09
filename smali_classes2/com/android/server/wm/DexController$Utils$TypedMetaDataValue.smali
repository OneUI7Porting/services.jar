.class public final Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public data:I

.field public unit:I


# direct methods
.method public static getDimensionPixelSize(Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;III)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->data:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    move p3, v0

    .line 6
    :cond_0
    iget p0, p0, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->unit:I

    .line 7
    .line 8
    if-eqz p0, :cond_2

    .line 9
    .line 10
    const/4 p2, 0x1

    .line 11
    if-eq p0, p2, :cond_1

    .line 12
    .line 13
    const/4 p2, 0x2

    .line 14
    if-eq p0, p2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    mul-int/2addr p3, p1

    .line 18
    int-to-float p0, p3

    .line 19
    const p1, 0x3bcccccd    # 0.00625f

    .line 20
    .line 21
    .line 22
    mul-float/2addr p0, p1

    .line 23
    const/high16 p1, 0x3f000000    # 0.5f

    .line 24
    .line 25
    add-float/2addr p0, p1

    .line 26
    float-to-int p0, p0

    .line 27
    return p0

    .line 28
    :cond_2
    const/16 p0, 0x64

    .line 29
    .line 30
    if-gt p3, p0, :cond_3

    .line 31
    .line 32
    mul-int/2addr p2, p3

    .line 33
    int-to-double p0, p2

    .line 34
    const-wide p2, 0x3f847ae147ae147bL    # 0.01

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    mul-double/2addr p0, p2

    .line 40
    double-to-int p0, p0

    .line 41
    return p0

    .line 42
    :cond_3
    :goto_0
    return p3
.end method

.method public static parseSizeMetaData(Ljava/lang/String;)Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "\\D"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    aget-object v3, v1, v2

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    const-string v3, "0"

    .line 22
    .line 23
    aput-object v3, v1, v2

    .line 24
    .line 25
    :cond_0
    aget-object v3, v1, v2

    .line 26
    .line 27
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string v3, "%"

    .line 40
    .line 41
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    iput v2, v0, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->unit:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-string v3, "PX"

    .line 51
    .line 52
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    iput v2, v0, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->unit:I

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const-string v3, "SP"

    .line 62
    .line 63
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_3

    .line 68
    .line 69
    const/4 p0, 0x2

    .line 70
    iput p0, v0, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->unit:I

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    const/4 p0, 0x1

    .line 74
    iput p0, v0, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->unit:I

    .line 75
    .line 76
    :goto_0
    aget-object p0, v1, v2

    .line 77
    .line 78
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    iput p0, v0, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->data:I

    .line 83
    .line 84
    return-object v0
.end method
