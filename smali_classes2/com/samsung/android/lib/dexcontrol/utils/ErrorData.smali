.class public final Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mDexFanErrorCntr:I

.field public mUvdmOpenErrorCntr:I

.field public mUvdmReadErrorCntr:I

.field public mUvdmWriteErrorCntr:I


# virtual methods
.method public final count(I)V
    .locals 1

    .line 1
    const/4 v0, -0x5

    .line 2
    if-eq p1, v0, :cond_3

    .line 3
    .line 4
    const/4 v0, -0x3

    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    .line 7
    const/4 v0, -0x2

    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget p1, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mUvdmOpenErrorCntr:I

    .line 15
    .line 16
    add-int/lit8 p1, p1, 0x1

    .line 17
    .line 18
    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mUvdmOpenErrorCntr:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget p1, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mUvdmWriteErrorCntr:I

    .line 22
    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mUvdmWriteErrorCntr:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget p1, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mUvdmReadErrorCntr:I

    .line 29
    .line 30
    add-int/lit8 p1, p1, 0x1

    .line 31
    .line 32
    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mUvdmReadErrorCntr:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    iget p1, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mDexFanErrorCntr:I

    .line 36
    .line 37
    add-int/lit8 p1, p1, 0x1

    .line 38
    .line 39
    iput p1, p0, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->mDexFanErrorCntr:I

    .line 40
    .line 41
    :goto_0
    return-void
.end method
