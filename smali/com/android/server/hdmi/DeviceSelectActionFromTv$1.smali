.class public final Lcom/android/server/hdmi/DeviceSelectActionFromTv$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/DeviceSelectActionFromTv;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/DeviceSelectActionFromTv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv$1;->this$0:Lcom/android/server/hdmi/DeviceSelectActionFromTv;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv$1;->this$0:Lcom/android/server/hdmi/DeviceSelectActionFromTv;

    .line 4
    .line 5
    const/4 p1, 0x7

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method