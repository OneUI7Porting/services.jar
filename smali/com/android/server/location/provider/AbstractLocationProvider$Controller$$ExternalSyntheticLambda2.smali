.class public final synthetic Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/provider/AbstractLocationProvider$Controller;IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda2;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda2;->f$4:Landroid/os/Bundle;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/provider/AbstractLocationProvider$Controller;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda2;->f$2:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller$$ExternalSyntheticLambda2;->f$4:Landroid/os/Bundle;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/location/provider/AbstractLocationProvider$Controller;->this$0:Lcom/android/server/location/provider/AbstractLocationProvider;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v3, p0, v2}, Lcom/android/server/location/provider/AbstractLocationProvider;->onExtraCommand(ILjava/lang/String;Landroid/os/Bundle;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
