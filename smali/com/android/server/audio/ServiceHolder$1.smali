.class public final Lcom/android/server/audio/ServiceHolder$1;
.super Landroid/os/IServiceCallback$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/ServiceHolder;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/ServiceHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/audio/ServiceHolder$1;->this$0:Lcom/android/server/audio/ServiceHolder;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/IServiceCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onRegistration(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/ServiceHolder$1;->this$0:Lcom/android/server/audio/ServiceHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/android/server/audio/ServiceHolder;->onServiceInited(Landroid/os/IBinder;)Landroid/os/IInterface;

    .line 4
    .line 5
    .line 6
    return-void
.end method