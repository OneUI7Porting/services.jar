.class public final Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mDeviceToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/companion/virtual/InputController;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/virtual/InputController;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;->this$0:Lcom/android/server/companion/virtual/InputController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;->mDeviceToken:Landroid/os/IBinder;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    const-string v0, "VirtualInputController"

    .line 2
    .line 3
    const-string v1, "Virtual input controller binder died"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;->this$0:Lcom/android/server/companion/virtual/InputController;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;->mDeviceToken:Landroid/os/IBinder;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lcom/android/server/companion/virtual/InputController;->unregisterInputDevice(Landroid/os/IBinder;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
