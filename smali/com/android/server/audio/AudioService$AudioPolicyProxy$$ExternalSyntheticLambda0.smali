.class public final synthetic Lcom/android/server/audio/AudioService$AudioPolicyProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/media/audiopolicy/AudioMix;


# direct methods
.method public synthetic constructor <init>(Landroid/media/audiopolicy/AudioMix;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy$$ExternalSyntheticLambda0;->f$0:Landroid/media/audiopolicy/AudioMix;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy$$ExternalSyntheticLambda0;->f$0:Landroid/media/audiopolicy/AudioMix;

    .line 2
    .line 3
    check-cast p1, Landroid/media/audiopolicy/AudioMix;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/media/audiopolicy/AudioMix;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method
