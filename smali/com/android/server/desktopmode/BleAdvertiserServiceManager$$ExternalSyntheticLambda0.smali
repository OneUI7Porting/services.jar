.class public final synthetic Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/BleAdvertiserServiceManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/desktopmode/BleAdvertiserServiceManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v0, "[DMS]BleAdvertiserServiceManager"

    .line 12
    .line 13
    const-string v1, "Binder supposed established connection but actual connection to service timed out, trying again"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->retryConnectionWithBackoff()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->bindService()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
