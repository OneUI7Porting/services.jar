.class public final synthetic Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/location/LocationManagerService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onSettingChanged()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/location/LocationManagerService;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService;->refreshAppOpsRestrictions(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_0
    const/4 v0, -0x1

    .line 14
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/location/LocationManagerService;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService;->refreshAppOpsRestrictions(I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
