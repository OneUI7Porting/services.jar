.class public final Lcom/android/server/display/mode/SystemRequestObserver$1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/mode/SystemRequestObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/SystemRequestObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/mode/SystemRequestObserver$1;->this$0:Lcom/android/server/display/mode/SystemRequestObserver;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    .line 1
    return-void
.end method

.method public final binderDied(Landroid/os/IBinder;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/server/display/mode/SystemRequestObserver$1;->this$0:Lcom/android/server/display/mode/SystemRequestObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/display/mode/SystemRequestObserver;->removeSystemRequestedVotes(Landroid/os/IBinder;)V

    .line 3
    iget-object p0, p0, Lcom/android/server/display/mode/SystemRequestObserver$1;->this$0:Lcom/android/server/display/mode/SystemRequestObserver;

    iget-object p0, p0, Lcom/android/server/display/mode/SystemRequestObserver;->mDeathRecipient:Lcom/android/server/display/mode/SystemRequestObserver$1;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
