.class public final Landroid/os/epic/EpicChromeDetector;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public native CheckChromeBrowser(Ljava/lang/String;)Z
.end method

.method public native Initialize()V
.end method

.method public LinkLibrary()Z
    .locals 0

    .line 1
    :try_start_0
    const-string/jumbo p0, "epicsvc"

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :catch_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public native RemoveUid(Ljava/lang/String;)V
.end method
