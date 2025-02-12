.class public final Lcom/android/server/am/SameProcessApplicationThread;
.super Landroid/app/IApplicationThread$Default;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mWrapped:Landroid/app/IApplicationThread;


# direct methods
.method public constructor <init>(Landroid/app/IApplicationThread;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/IApplicationThread$Default;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/am/SameProcessApplicationThread;->mWrapped:Landroid/app/IApplicationThread;

    .line 8
    .line 9
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lcom/android/server/am/SameProcessApplicationThread;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final schedulePing(Landroid/os/RemoteCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/SameProcessApplicationThread;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda2;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/SameProcessApplicationThread;Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v14, v1, Lcom/android/server/am/SameProcessApplicationThread;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v15, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    move-object v0, v15

    .line 8
    move-object/from16 v2, p1

    .line 9
    .line 10
    move-object/from16 v3, p2

    .line 11
    .line 12
    move-object/from16 v4, p3

    .line 13
    .line 14
    move/from16 v5, p4

    .line 15
    .line 16
    move-object/from16 v6, p5

    .line 17
    .line 18
    move-object/from16 v7, p6

    .line 19
    .line 20
    move/from16 v8, p7

    .line 21
    .line 22
    move/from16 v9, p8

    .line 23
    .line 24
    move/from16 v10, p9

    .line 25
    .line 26
    move/from16 v11, p10

    .line 27
    .line 28
    move/from16 v12, p11

    .line 29
    .line 30
    move-object/from16 v13, p12

    .line 31
    .line 32
    invoke-direct/range {v0 .. v13}, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/SameProcessApplicationThread;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final scheduleReceiverList(Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/SameProcessApplicationThread;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda2;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/SameProcessApplicationThread;Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v14, v1, Lcom/android/server/am/SameProcessApplicationThread;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v15, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    move-object v0, v15

    .line 8
    move-object/from16 v2, p1

    .line 9
    .line 10
    move-object/from16 v3, p2

    .line 11
    .line 12
    move/from16 v4, p3

    .line 13
    .line 14
    move-object/from16 v5, p4

    .line 15
    .line 16
    move-object/from16 v6, p5

    .line 17
    .line 18
    move/from16 v7, p6

    .line 19
    .line 20
    move/from16 v8, p7

    .line 21
    .line 22
    move/from16 v9, p8

    .line 23
    .line 24
    move/from16 v10, p9

    .line 25
    .line 26
    move/from16 v11, p10

    .line 27
    .line 28
    move/from16 v12, p11

    .line 29
    .line 30
    move-object/from16 v13, p12

    .line 31
    .line 32
    invoke-direct/range {v0 .. v13}, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/SameProcessApplicationThread;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method
