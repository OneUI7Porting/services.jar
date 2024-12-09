.class public final Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mDisplayProperties:[I

.field public final mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

.field public final mTabletDefaultDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

.field public final synthetic this$0:Lcom/android/server/desktopmode/MultiResolutionManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/MultiResolutionManager;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/server/desktopmode/MultiResolutionManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerInternal;->getInitialDisplayProperties(I)[I

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mDisplayProperties:[I

    .line 14
    .line 15
    new-instance v1, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 16
    .line 17
    new-instance v2, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 18
    .line 19
    aget v0, p1, v0

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    aget p1, p1, v3

    .line 23
    .line 24
    const-string v3, "Tablet"

    .line 25
    .line 26
    invoke-direct {v2, v0, p1, v3}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(IILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->getDesktopModeDefaultDensity()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-direct {v1, v2, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;I)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mTabletDefaultDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final getDesktopModeDefaultDensity()I
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "SEC_FLOATING_FEATURE_COMMON_CONFIG_DEX_MODE"

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, ","

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    move v3, v2

    .line 24
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-ge v3, v4, :cond_1

    .line 29
    .line 30
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Ljava/lang/String;

    .line 35
    .line 36
    const-string/jumbo v5, "fixedzoom"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_0

    .line 44
    .line 45
    const-string v5, "\\((.*?)\\)"

    .line 46
    .line 47
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_0

    .line 60
    .line 61
    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    add-int/2addr v3, v0

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    move v1, v2

    .line 73
    :goto_1
    if-eqz v1, :cond_2

    .line 74
    .line 75
    sget-object p0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    .line 76
    .line 77
    const-string/jumbo p0, "getDesktopModeDefaultDensity(), dpi= "

    .line 78
    .line 79
    .line 80
    const-string v0, "[DMS]MultiResolutionManager"

    .line 81
    .line 82
    invoke-static {v1, p0, v0}, Lcom/android/server/desktopmode/DesktopModeService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return v1

    .line 86
    :cond_2
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mDisplayProperties:[I

    .line 87
    .line 88
    aget v1, p0, v2

    .line 89
    .line 90
    aget p0, p0, v0

    .line 91
    .line 92
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    const/16 v0, 0xa00

    .line 97
    .line 98
    if-ge p0, v0, :cond_3

    .line 99
    .line 100
    const/16 p0, 0xd5

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    const/16 p0, 0x118

    .line 104
    .line 105
    :goto_2
    return p0
.end method

.method public final getOriginalDisplaySizeDensity()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->getInitialDisplayProperties(I)[I

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    .line 11
    .line 12
    const-string/jumbo v3, "display_size_forced"

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "[DMS]MultiResolutionManager"

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-lez v5, :cond_0

    .line 29
    .line 30
    const/16 v5, 0x2c

    .line 31
    .line 32
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-lez v6, :cond_1

    .line 37
    .line 38
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-ne v5, v6, :cond_1

    .line 43
    .line 44
    :try_start_0
    invoke-virtual {v2, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    add-int/2addr v6, v4

    .line 53
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-lez v5, :cond_1

    .line 62
    .line 63
    if-lez v2, :cond_1

    .line 64
    .line 65
    aput v5, v0, v1

    .line 66
    .line 67
    aput v2, v0, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception v2

    .line 71
    sget-object v5, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    .line 72
    .line 73
    const-string v5, "Failed to parse previous forced display size"

    .line 74
    .line 75
    invoke-static {v3, v5, v2}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 80
    .line 81
    if-eqz v2, :cond_1

    .line 82
    .line 83
    sget-object v2, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    .line 84
    .line 85
    const-string v2, "No previous forced display size. Use default size instead."

    .line 86
    .line 87
    invoke-static {v3, v2}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    :goto_0
    const/4 v2, 0x2

    .line 91
    :try_start_1
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    .line 92
    .line 93
    const-string/jumbo v5, "display_density_forced"

    .line 94
    .line 95
    .line 96
    invoke-static {p0, v5, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    if-lez p0, :cond_2

    .line 101
    .line 102
    aput p0, v0, v2
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :catch_1
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 106
    .line 107
    if-eqz p0, :cond_2

    .line 108
    .line 109
    sget-object p0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    .line 110
    .line 111
    const-string p0, "No previous forced display density. Use default density instead."

    .line 112
    .line 113
    invoke-static {v3, p0}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_2
    :goto_1
    new-instance p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 117
    .line 118
    new-instance v3, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 119
    .line 120
    aget v1, v0, v1

    .line 121
    .line 122
    aget v4, v0, v4

    .line 123
    .line 124
    const-string v5, "Original"

    .line 125
    .line 126
    invoke-direct {v3, v1, v4, v5}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(IILjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    aget v0, v0, v2

    .line 130
    .line 131
    invoke-direct {p0, v3, v0}, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;I)V

    .line 132
    .line 133
    .line 134
    return-object p0
.end method

.method public final setForcedDisplayMertics(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget-object p1, v1, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 12
    .line 13
    :goto_0
    iget-object p0, p1, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 14
    .line 15
    iget v2, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    .line 16
    .line 17
    iget p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    .line 18
    .line 19
    iget p1, p1, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    .line 20
    .line 21
    iget-object v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 22
    .line 23
    invoke-virtual {v1, v0, v2, p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->setDisplaySizeAndDensityInDex(IIII)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->getOriginalDisplaySizeDensity()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    sget-object p1, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    .line 36
    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "Restoring display: "

    .line 40
    .line 41
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v2, "[DMS]MultiResolutionManager"

    .line 52
    .line 53
    invoke-static {v2, p1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 57
    .line 58
    iget v2, p1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    .line 59
    .line 60
    iget p1, p1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    .line 61
    .line 62
    iget p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    .line 63
    .line 64
    iget-object v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 65
    .line 66
    invoke-virtual {v1, v0, v2, p1, p0}, Lcom/android/server/wm/WindowManagerInternal;->setDisplaySizeAndDensityInDex(IIII)V

    .line 67
    .line 68
    .line 69
    :goto_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "(mTabletDefaultDisplayMetrics="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mTabletDefaultDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mSelectedDisplayMetrics="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 p0, 0x29

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
