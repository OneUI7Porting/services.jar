.class public final synthetic Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/locksettings/RebootEscrowManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/locksettings/RebootEscrowManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowTimedOut:Z

    .line 5
    .line 6
    return-void
.end method