.class public Lcom/samsung/android/lib/dexcontrol/uvdm/UvdmFileHelper;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "dexcon-native-lib"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public native ccic_close()I
.end method

.method public native ccic_open()I
.end method

.method public native ioctl_longDataRead(I)[B
.end method

.method public native ioctl_longDataWrite(I[B)I
.end method

.method public native ioctl_shortDataWrite(I[B)I
.end method
