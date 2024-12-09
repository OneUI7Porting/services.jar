.class public Lcom/samsung/android/displayquality/SemDisplayQuality;
.super Lcom/samsung/android/displayquality/SemDisplayQualityAP;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemDisplayQualityDummy"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->DEBUG:Z

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const-string p0, "SemDisplayQualityDummy"

    .line 9
    .line 10
    const-string p1, "SemDisplayQuality"

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method


# virtual methods
.method public handleAutoBrightnessModeOff()V
    .locals 0

    .line 1
    return-void
.end method

.method public handleAutoBrightnessModeOn()V
    .locals 0

    .line 1
    return-void
.end method

.method public handleScreenModeChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public handleScreenOff()V
    .locals 0

    .line 1
    return-void
.end method

.method public handleScreenOffAsync()V
    .locals 0

    .line 1
    return-void
.end method

.method public handleScreenOn()V
    .locals 0

    .line 1
    return-void
.end method

.method public handleScreenOnAsync()V
    .locals 0

    .line 1
    return-void
.end method
