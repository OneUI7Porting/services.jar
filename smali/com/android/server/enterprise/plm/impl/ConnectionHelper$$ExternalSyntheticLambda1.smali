.class public final synthetic Lcom/android/server/enterprise/plm/impl/ConnectionHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "ConnectionHelper"

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    :try_start_0
    const-string/jumbo v2, "clear"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBinder:Landroid/os/IBinder;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mConnection:Lcom/android/server/enterprise/plm/impl/ConnectionHelper$1;

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v2

    .line 34
    goto :goto_2

    .line 35
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 36
    iput-object v2, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBinder:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->resetBindTimer(Z)V

    .line 39
    .line 40
    .line 41
    goto :goto_3

    .line 42
    :goto_2
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :goto_3
    return-void

    .line 54
    :catchall_1
    move-exception v0

    .line 55
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->resetBindTimer(Z)V

    .line 56
    .line 57
    .line 58
    throw v0
.end method
