.class public final Lcom/android/server/desktopmode/DisplayInfo;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mDisplayId:I

.field public final mRealSize:Landroid/graphics/Point;

.field public final mRotation:I

.field public final mType:I


# direct methods
.method public constructor <init>(Landroid/view/Display;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/DisplayInfo;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mDisplayId:I

    .line 17
    .line 18
    new-instance p1, Landroid/graphics/Point;

    .line 19
    .line 20
    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 21
    .line 22
    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 23
    .line 24
    invoke-direct {p1, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRealSize:Landroid/graphics/Point;

    .line 28
    .line 29
    iget p1, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 30
    .line 31
    iput p1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRotation:I

    .line 32
    .line 33
    iget p1, v0, Landroid/view/DisplayInfo;->flags:I

    .line 34
    .line 35
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_DEX_ON_PC:Z

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    const/high16 v1, 0x8000000

    .line 40
    .line 41
    and-int/2addr v1, p1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    const/16 p1, 0x3e8

    .line 45
    .line 46
    iput p1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_WIRELESS_DEX:Z

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    const/high16 v1, 0x4000000

    .line 54
    .line 55
    and-int/2addr p1, v1

    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    const/16 p1, 0x3e9

    .line 59
    .line 60
    iput p1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget p1, v0, Landroid/view/DisplayInfo;->type:I

    .line 64
    .line 65
    iput p1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    .line 66
    .line 67
    :goto_0
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/android/server/desktopmode/DisplayInfo;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Lcom/android/server/desktopmode/DisplayInfo;

    .line 18
    .line 19
    iget v2, p0, Lcom/android/server/desktopmode/DisplayInfo;->mDisplayId:I

    .line 20
    .line 21
    iget v3, p1, Lcom/android/server/desktopmode/DisplayInfo;->mDisplayId:I

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget v2, p0, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    .line 26
    .line 27
    iget v3, p1, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    .line 28
    .line 29
    if-ne v2, v3, :cond_2

    .line 30
    .line 31
    iget v2, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRotation:I

    .line 32
    .line 33
    iget v3, p1, Lcom/android/server/desktopmode/DisplayInfo;->mRotation:I

    .line 34
    .line 35
    if-ne v2, v3, :cond_2

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRealSize:Landroid/graphics/Point;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/android/server/desktopmode/DisplayInfo;->mRealSize:Landroid/graphics/Point;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move v0, v1

    .line 49
    :goto_0
    return v0

    .line 50
    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/DisplayInfo;->mDisplayId:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRealSize:Landroid/graphics/Point;

    .line 14
    .line 15
    iget p0, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRotation:I

    .line 16
    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DisplayInfo(id="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mDisplayId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x3e8

    .line 19
    .line 20
    iget v2, p0, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    .line 21
    .line 22
    if-eq v2, v1, :cond_1

    .line 23
    .line 24
    const/16 v1, 0x3e9

    .line 25
    .line 26
    if-eq v2, v1, :cond_0

    .line 27
    .line 28
    invoke-static {v2}, Landroid/view/Display;->typeToString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string v1, "WIRELESS_DEX"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string v1, "DEX_ON_PC"

    .line 37
    .line 38
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", ("

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRealSize:Landroid/graphics/Point;

    .line 47
    .line 48
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string/jumbo v1, "x"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRealSize:Landroid/graphics/Point;

    .line 60
    .line 61
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, "), "

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget p0, p0, Lcom/android/server/desktopmode/DisplayInfo;->mRotation:I

    .line 72
    .line 73
    invoke-static {p0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p0, ")"

    .line 81
    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0
.end method
