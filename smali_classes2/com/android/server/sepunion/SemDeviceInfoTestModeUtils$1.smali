.class public final Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$1;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$1;->this$0:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$1;->this$0:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mCallback:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;->onDeviceInfoTestModeChanged()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
