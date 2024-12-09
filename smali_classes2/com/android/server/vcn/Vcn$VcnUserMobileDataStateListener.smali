.class Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;
.super Landroid/telephony/TelephonyCallback;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/vcn/Vcn;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/Vcn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;->this$0:Lcom/android/server/vcn/Vcn;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUserMobileDataStateChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/Vcn$VcnUserMobileDataStateListener;->this$0:Lcom/android/server/vcn/Vcn;

    .line 2
    .line 3
    const/4 p1, 0x5

    .line 4
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
