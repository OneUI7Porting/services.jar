.class public final synthetic Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/credentials/selection/ProviderData;

    .line 7
    .line 8
    check-cast p1, Landroid/credentials/selection/GetCredentialProviderData;

    .line 9
    .line 10
    return-object p1

    .line 11
    :pswitch_0
    check-cast p1, Landroid/credentials/selection/ProviderData;

    .line 12
    .line 13
    check-cast p1, Landroid/credentials/selection/GetCredentialProviderData;

    .line 14
    .line 15
    return-object p1

    .line 16
    :pswitch_1
    check-cast p1, Lcom/android/server/credentials/ProviderGetSession;

    .line 17
    .line 18
    iget-object p0, p1, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mCredentialEntryTypes:Ljava/util/Set;

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :pswitch_2
    check-cast p1, Lcom/android/server/credentials/ProviderSession;

    .line 28
    .line 29
    check-cast p1, Lcom/android/server/credentials/ProviderGetSession;

    .line 30
    .line 31
    return-object p1

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method