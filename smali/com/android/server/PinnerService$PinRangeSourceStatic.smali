.class public final Lcom/android/server/PinnerService$PinRangeSourceStatic;
.super Lcom/android/server/PinnerService$PinRangeSource;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mDone:Z


# virtual methods
.method public final read(Lcom/android/server/PinnerService$PinRange;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p1, Lcom/android/server/PinnerService$PinRange;->start:I

    .line 3
    .line 4
    const v0, 0x7fffffff

    .line 5
    .line 6
    .line 7
    iput v0, p1, Lcom/android/server/PinnerService$PinRange;->length:I

    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mDone:Z

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStatic;->mDone:Z

    .line 13
    .line 14
    xor-int/lit8 p0, p1, 0x1

    .line 15
    .line 16
    return p0
.end method
