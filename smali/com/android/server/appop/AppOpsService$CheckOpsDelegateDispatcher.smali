.class public final Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

.field public final mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final checkOperation(IILjava/lang/String;Ljava/lang/String;IZ)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    new-instance v7, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda8;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v7, p0, v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;I)V

    .line 15
    .line 16
    .line 17
    move v1, p1

    .line 18
    move v2, p2

    .line 19
    move-object v3, p3

    .line 20
    move-object v4, p4

    .line 21
    move v5, p5

    .line 22
    move v6, p6

    .line 23
    invoke-interface/range {v0 .. v7}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkOperation(IILjava/lang/String;Ljava/lang/String;IZLcom/android/internal/util/function/HexFunction;)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_0
    new-instance v7, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda9;

    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    invoke-direct {v7, v1, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    .line 32
    .line 33
    .line 34
    move v1, p1

    .line 35
    move v2, p2

    .line 36
    move-object v3, p3

    .line 37
    move-object v4, p4

    .line 38
    move v5, p5

    .line 39
    move v6, p6

    .line 40
    invoke-interface/range {v0 .. v7}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkOperation(IILjava/lang/String;Ljava/lang/String;IZLcom/android/internal/util/function/HexFunction;)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    new-instance v7, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda9;

    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    invoke-direct {v7, v1, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    .line 53
    .line 54
    .line 55
    move v1, p1

    .line 56
    move v2, p2

    .line 57
    move-object v3, p3

    .line 58
    move-object v4, p4

    .line 59
    move v5, p5

    .line 60
    move v6, p6

    .line 61
    invoke-interface/range {v0 .. v7}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkOperation(IILjava/lang/String;Ljava/lang/String;IZLcom/android/internal/util/function/HexFunction;)I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    return p0

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 67
    .line 68
    move v1, p1

    .line 69
    move v2, p2

    .line 70
    move-object v3, p3

    .line 71
    move-object v4, p4

    .line 72
    move v5, p5

    .line 73
    move v6, p6

    .line 74
    invoke-static/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mcheckOperationImpl(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;IZ)I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    return p0
.end method

.method public final finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    new-instance v7, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda10;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v7, v2, v0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda10;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    move-object v0, v1

    .line 20
    move-object/from16 v1, p1

    .line 21
    .line 22
    move/from16 v2, p2

    .line 23
    .line 24
    move/from16 v3, p3

    .line 25
    .line 26
    move-object/from16 v4, p4

    .line 27
    .line 28
    move-object/from16 v5, p5

    .line 29
    .line 30
    move/from16 v6, p6

    .line 31
    .line 32
    invoke-interface/range {v0 .. v7}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ILcom/android/internal/util/function/HexConsumer;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v7, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda10;

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-direct {v7, v0, v2}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda10;-><init>(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    move-object v0, v1

    .line 43
    move-object/from16 v1, p1

    .line 44
    .line 45
    move/from16 v2, p2

    .line 46
    .line 47
    move/from16 v3, p3

    .line 48
    .line 49
    move-object/from16 v4, p4

    .line 50
    .line 51
    move-object/from16 v5, p5

    .line 52
    .line 53
    move/from16 v6, p6

    .line 54
    .line 55
    invoke-interface/range {v0 .. v7}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ILcom/android/internal/util/function/HexConsumer;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object v8, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 60
    .line 61
    if-eqz v8, :cond_2

    .line 62
    .line 63
    new-instance v15, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda10;

    .line 64
    .line 65
    const/4 v0, 0x1

    .line 66
    invoke-direct {v15, v0, v2}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda10;-><init>(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    move-object/from16 v9, p1

    .line 70
    .line 71
    move/from16 v10, p2

    .line 72
    .line 73
    move/from16 v11, p3

    .line 74
    .line 75
    move-object/from16 v12, p4

    .line 76
    .line 77
    move-object/from16 v13, p5

    .line 78
    .line 79
    move/from16 v14, p6

    .line 80
    .line 81
    invoke-interface/range {v8 .. v15}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ILcom/android/internal/util/function/HexConsumer;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 86
    .line 87
    move-object/from16 v16, v0

    .line 88
    .line 89
    move-object/from16 v17, p1

    .line 90
    .line 91
    move/from16 v18, p2

    .line 92
    .line 93
    move/from16 v19, p3

    .line 94
    .line 95
    move-object/from16 v20, p4

    .line 96
    .line 97
    move-object/from16 v21, p5

    .line 98
    .line 99
    move/from16 v22, p6

    .line 100
    .line 101
    invoke-static/range {v16 .. v22}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mfinishOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    :goto_0
    return-void
.end method

.method public final finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 3
    .line 4
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    new-instance v5, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda4;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v5, p0, v2}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;I)V

    .line 16
    .line 17
    .line 18
    move-object v0, v1

    .line 19
    move-object v1, p1

    .line 20
    move v2, p2

    .line 21
    move-object v3, p3

    .line 22
    move/from16 v4, p4

    .line 23
    .line 24
    invoke-interface/range {v0 .. v5}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZLcom/android/internal/util/function/QuadFunction;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v5, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda5;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-direct {v5, v2, v0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    .line 32
    .line 33
    .line 34
    move-object v0, v1

    .line 35
    move-object v1, p1

    .line 36
    move v2, p2

    .line 37
    move-object v3, p3

    .line 38
    move/from16 v4, p4

    .line 39
    .line 40
    invoke-interface/range {v0 .. v5}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZLcom/android/internal/util/function/QuadFunction;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 45
    .line 46
    if-eqz v6, :cond_2

    .line 47
    .line 48
    new-instance v11, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda5;

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    invoke-direct {v11, v2, v0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    .line 52
    .line 53
    .line 54
    move-object v7, p1

    .line 55
    move v8, p2

    .line 56
    move-object v9, p3

    .line 57
    move/from16 v10, p4

    .line 58
    .line 59
    invoke-interface/range {v6 .. v11}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZLcom/android/internal/util/function/QuadFunction;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    move-object v0, p1

    .line 64
    move v1, p2

    .line 65
    move-object v3, p3

    .line 66
    move/from16 v4, p4

    .line 67
    .line 68
    invoke-static {v2, p1, p2, p3, v4}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mfinishProxyOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method

.method public final noteOperation(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 3
    .line 4
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    new-instance v9, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v9, v2, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    move-object v0, v1

    .line 19
    move v1, p1

    .line 20
    move v2, p2

    .line 21
    move-object v3, p3

    .line 22
    move-object v4, p4

    .line 23
    move/from16 v5, p5

    .line 24
    .line 25
    move/from16 v6, p6

    .line 26
    .line 27
    move-object/from16 v7, p7

    .line 28
    .line 29
    move/from16 v8, p8

    .line 30
    .line 31
    invoke-interface/range {v0 .. v9}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteOperation(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZLcom/android/internal/util/function/OctFunction;)Landroid/app/SyncNotedAppOp;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    :cond_0
    new-instance v9, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-direct {v9, v0, v2}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    move-object v0, v1

    .line 43
    move v1, p1

    .line 44
    move v2, p2

    .line 45
    move-object v3, p3

    .line 46
    move-object v4, p4

    .line 47
    move/from16 v5, p5

    .line 48
    .line 49
    move/from16 v6, p6

    .line 50
    .line 51
    move-object/from16 v7, p7

    .line 52
    .line 53
    move/from16 v8, p8

    .line 54
    .line 55
    invoke-interface/range {v0 .. v9}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteOperation(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZLcom/android/internal/util/function/OctFunction;)Landroid/app/SyncNotedAppOp;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0

    .line 60
    :cond_1
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    new-instance v10, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda0;

    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    invoke-direct {v10, v0, v2}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    move v2, p1

    .line 71
    move v3, p2

    .line 72
    move-object v4, p3

    .line 73
    move-object v5, p4

    .line 74
    move/from16 v6, p5

    .line 75
    .line 76
    move/from16 v7, p6

    .line 77
    .line 78
    move-object/from16 v8, p7

    .line 79
    .line 80
    move/from16 v9, p8

    .line 81
    .line 82
    invoke-interface/range {v1 .. v10}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteOperation(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZLcom/android/internal/util/function/OctFunction;)Landroid/app/SyncNotedAppOp;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0

    .line 87
    :cond_2
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 88
    .line 89
    move v2, p1

    .line 90
    move v3, p2

    .line 91
    move-object v4, p3

    .line 92
    move-object v5, p4

    .line 93
    move/from16 v6, p5

    .line 94
    .line 95
    move/from16 v7, p6

    .line 96
    .line 97
    move-object/from16 v8, p7

    .line 98
    .line 99
    move/from16 v9, p8

    .line 100
    .line 101
    invoke-static/range {v1 .. v9}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mnoteOperationImpl(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    return-object v0
.end method

.method public final noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    new-instance v7, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda8;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v7, p0, v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;I)V

    .line 15
    .line 16
    .line 17
    move v1, p1

    .line 18
    move-object v2, p2

    .line 19
    move v3, p3

    .line 20
    move-object v4, p4

    .line 21
    move v5, p5

    .line 22
    move v6, p6

    .line 23
    invoke-interface/range {v0 .. v7}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZLcom/android/internal/util/function/HexFunction;)Landroid/app/SyncNotedAppOp;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    new-instance v7, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda9;

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    invoke-direct {v7, v1, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    .line 32
    .line 33
    .line 34
    move v1, p1

    .line 35
    move-object v2, p2

    .line 36
    move v3, p3

    .line 37
    move-object v4, p4

    .line 38
    move v5, p5

    .line 39
    move v6, p6

    .line 40
    invoke-interface/range {v0 .. v7}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZLcom/android/internal/util/function/HexFunction;)Landroid/app/SyncNotedAppOp;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    new-instance v7, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda9;

    .line 50
    .line 51
    const/4 p0, 0x1

    .line 52
    invoke-direct {v7, v1, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/appop/AppOpsService;I)V

    .line 53
    .line 54
    .line 55
    move v1, p1

    .line 56
    move-object v2, p2

    .line 57
    move v3, p3

    .line 58
    move-object v4, p4

    .line 59
    move v5, p5

    .line 60
    move v6, p6

    .line 61
    invoke-interface/range {v0 .. v7}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZLcom/android/internal/util/function/HexFunction;)Landroid/app/SyncNotedAppOp;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 67
    .line 68
    move v1, p1

    .line 69
    move-object v2, p2

    .line 70
    move v3, p3

    .line 71
    move-object v4, p4

    .line 72
    move v5, p5

    .line 73
    move v6, p6

    .line 74
    invoke-static/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mnoteProxyOperationImpl(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method

.method public final startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 3
    .line 4
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    new-instance v13, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda6;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v13, v2, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    move-object v0, v1

    .line 19
    move-object/from16 v1, p1

    .line 20
    .line 21
    move/from16 v2, p2

    .line 22
    .line 23
    move/from16 v3, p3

    .line 24
    .line 25
    move-object/from16 v4, p4

    .line 26
    .line 27
    move-object/from16 v5, p5

    .line 28
    .line 29
    move/from16 v6, p6

    .line 30
    .line 31
    move/from16 v7, p7

    .line 32
    .line 33
    move/from16 v8, p8

    .line 34
    .line 35
    move-object/from16 v9, p9

    .line 36
    .line 37
    move/from16 v10, p10

    .line 38
    .line 39
    move/from16 v11, p11

    .line 40
    .line 41
    move/from16 v12, p12

    .line 42
    .line 43
    invoke-interface/range {v0 .. v13}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZIILcom/android/internal/util/function/DodecFunction;)Landroid/app/SyncNotedAppOp;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0

    .line 48
    :cond_0
    new-instance v13, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda6;

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    invoke-direct {v13, v0, v2}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    move-object v0, v1

    .line 55
    move-object/from16 v1, p1

    .line 56
    .line 57
    move/from16 v2, p2

    .line 58
    .line 59
    move/from16 v3, p3

    .line 60
    .line 61
    move-object/from16 v4, p4

    .line 62
    .line 63
    move-object/from16 v5, p5

    .line 64
    .line 65
    move/from16 v6, p6

    .line 66
    .line 67
    move/from16 v7, p7

    .line 68
    .line 69
    move/from16 v8, p8

    .line 70
    .line 71
    move-object/from16 v9, p9

    .line 72
    .line 73
    move/from16 v10, p10

    .line 74
    .line 75
    move/from16 v11, p11

    .line 76
    .line 77
    move/from16 v12, p12

    .line 78
    .line 79
    invoke-interface/range {v0 .. v13}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZIILcom/android/internal/util/function/DodecFunction;)Landroid/app/SyncNotedAppOp;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    return-object v0

    .line 84
    :cond_1
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 85
    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    new-instance v14, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda6;

    .line 89
    .line 90
    const/4 v0, 0x1

    .line 91
    invoke-direct {v14, v0, v2}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    move-object/from16 v2, p1

    .line 95
    .line 96
    move/from16 v3, p2

    .line 97
    .line 98
    move/from16 v4, p3

    .line 99
    .line 100
    move-object/from16 v5, p4

    .line 101
    .line 102
    move-object/from16 v6, p5

    .line 103
    .line 104
    move/from16 v7, p6

    .line 105
    .line 106
    move/from16 v8, p7

    .line 107
    .line 108
    move/from16 v9, p8

    .line 109
    .line 110
    move-object/from16 v10, p9

    .line 111
    .line 112
    move/from16 v11, p10

    .line 113
    .line 114
    move/from16 v12, p11

    .line 115
    .line 116
    move/from16 v13, p12

    .line 117
    .line 118
    invoke-interface/range {v1 .. v14}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZIILcom/android/internal/util/function/DodecFunction;)Landroid/app/SyncNotedAppOp;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    return-object v0

    .line 123
    :cond_2
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 124
    .line 125
    move-object/from16 v2, p1

    .line 126
    .line 127
    move/from16 v3, p2

    .line 128
    .line 129
    move/from16 v4, p3

    .line 130
    .line 131
    move-object/from16 v5, p4

    .line 132
    .line 133
    move-object/from16 v6, p5

    .line 134
    .line 135
    move/from16 v7, p6

    .line 136
    .line 137
    move/from16 v8, p7

    .line 138
    .line 139
    move/from16 v9, p8

    .line 140
    .line 141
    move-object/from16 v10, p9

    .line 142
    .line 143
    move/from16 v11, p10

    .line 144
    .line 145
    move/from16 v12, p11

    .line 146
    .line 147
    move/from16 v13, p12

    .line 148
    .line 149
    invoke-static/range {v1 .. v13}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mstartOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    return-object v0
.end method

.method public final startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 3
    .line 4
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    new-instance v12, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda2;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v12, v2, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    move-object v0, v1

    .line 19
    move-object v1, p1

    .line 20
    move/from16 v2, p2

    .line 21
    .line 22
    move-object/from16 v3, p3

    .line 23
    .line 24
    move/from16 v4, p4

    .line 25
    .line 26
    move/from16 v5, p5

    .line 27
    .line 28
    move-object/from16 v6, p6

    .line 29
    .line 30
    move/from16 v7, p7

    .line 31
    .line 32
    move/from16 v8, p8

    .line 33
    .line 34
    move/from16 v9, p9

    .line 35
    .line 36
    move/from16 v10, p10

    .line 37
    .line 38
    move/from16 v11, p11

    .line 39
    .line 40
    invoke-interface/range {v0 .. v12}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0

    .line 45
    :cond_0
    new-instance v12, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda2;

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    invoke-direct {v12, v0, v2}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    move-object v0, v1

    .line 52
    move-object v1, p1

    .line 53
    move/from16 v2, p2

    .line 54
    .line 55
    move-object/from16 v3, p3

    .line 56
    .line 57
    move/from16 v4, p4

    .line 58
    .line 59
    move/from16 v5, p5

    .line 60
    .line 61
    move-object/from16 v6, p6

    .line 62
    .line 63
    move/from16 v7, p7

    .line 64
    .line 65
    move/from16 v8, p8

    .line 66
    .line 67
    move/from16 v9, p9

    .line 68
    .line 69
    move/from16 v10, p10

    .line 70
    .line 71
    move/from16 v11, p11

    .line 72
    .line 73
    invoke-interface/range {v0 .. v12}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    return-object v0

    .line 78
    :cond_1
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 79
    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    new-instance v13, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda2;

    .line 83
    .line 84
    const/4 v0, 0x1

    .line 85
    invoke-direct {v13, v0, v2}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    move-object v2, p1

    .line 89
    move/from16 v3, p2

    .line 90
    .line 91
    move-object/from16 v4, p3

    .line 92
    .line 93
    move/from16 v5, p4

    .line 94
    .line 95
    move/from16 v6, p5

    .line 96
    .line 97
    move-object/from16 v7, p6

    .line 98
    .line 99
    move/from16 v8, p7

    .line 100
    .line 101
    move/from16 v9, p8

    .line 102
    .line 103
    move/from16 v10, p9

    .line 104
    .line 105
    move/from16 v11, p10

    .line 106
    .line 107
    move/from16 v12, p11

    .line 108
    .line 109
    invoke-interface/range {v1 .. v13}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    return-object v0

    .line 114
    :cond_2
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 115
    .line 116
    move-object v2, p1

    .line 117
    move/from16 v3, p2

    .line 118
    .line 119
    move-object/from16 v4, p3

    .line 120
    .line 121
    move/from16 v5, p4

    .line 122
    .line 123
    move/from16 v6, p5

    .line 124
    .line 125
    move-object/from16 v7, p6

    .line 126
    .line 127
    move/from16 v8, p7

    .line 128
    .line 129
    move/from16 v9, p8

    .line 130
    .line 131
    move/from16 v10, p9

    .line 132
    .line 133
    move/from16 v11, p10

    .line 134
    .line 135
    move/from16 v12, p11

    .line 136
    .line 137
    invoke-static/range {v1 .. v12}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mstartProxyOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    return-object v0
.end method
