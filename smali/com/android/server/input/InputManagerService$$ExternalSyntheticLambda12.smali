.class public final synthetic Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/input/InputManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/input/InputManagerService;

    .line 2
    .line 3
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->lambda$controlSpenWithToken$1()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
