.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/android/server/pm/pkg/AndroidPackage;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;[ILjava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda20;->f$1:[I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda20;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda20;->f$3:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda20;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda20;->f$5:Ljava/lang/String;

    .line 15
    .line 16
    iput p7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda20;->f$6:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v9, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 4
    .line 5
    iget-object v10, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda20;->f$1:[I

    .line 6
    .line 7
    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda20;->f$2:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda20;->f$3:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 10
    .line 11
    iget-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda20;->f$4:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v14, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda20;->f$5:Ljava/lang/String;

    .line 14
    .line 15
    iget v15, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda20;->f$6:I

    .line 16
    .line 17
    move-object/from16 v0, p1

    .line 18
    .line 19
    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 20
    .line 21
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    array-length v7, v10

    .line 29
    const/4 v0, 0x0

    .line 30
    move v6, v0

    .line 31
    :goto_0
    if-ge v6, v7, :cond_1

    .line 32
    .line 33
    aget v5, v10, v6

    .line 34
    .line 35
    const-string v0, "default:0"

    .line 36
    .line 37
    invoke-virtual {v9, v8, v11, v0, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "Revoking permission "

    .line 52
    .line 53
    const-string v2, " from package "

    .line 54
    .line 55
    const-string v3, " as the group changed from "

    .line 56
    .line 57
    invoke-static {v1, v11, v2, v8, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v2, " to "

    .line 62
    .line 63
    invoke-static {v1, v13, v2, v14}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v2, "72710897"

    .line 68
    .line 69
    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const v1, 0x534e4554

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 77
    .line 78
    .line 79
    :try_start_0
    iget-object v4, v9, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    .line 81
    const/16 v16, 0x0

    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    const/16 v17, 0x0

    .line 85
    .line 86
    move-object v0, v9

    .line 87
    move-object v1, v8

    .line 88
    move-object v2, v11

    .line 89
    move-object/from16 v18, v4

    .line 90
    .line 91
    move/from16 v4, v16

    .line 92
    .line 93
    move/from16 v16, v5

    .line 94
    .line 95
    move v5, v15

    .line 96
    move/from16 v19, v6

    .line 97
    .line 98
    move/from16 v6, v16

    .line 99
    .line 100
    move/from16 v16, v7

    .line 101
    .line 102
    move-object/from16 v7, v17

    .line 103
    .line 104
    move-object/from16 v17, v9

    .line 105
    .line 106
    move-object v9, v8

    .line 107
    move-object/from16 v8, v18

    .line 108
    .line 109
    :try_start_1
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;ZZIILjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :catch_0
    move-exception v0

    .line 114
    goto :goto_1

    .line 115
    :catch_1
    move-exception v0

    .line 116
    move/from16 v19, v6

    .line 117
    .line 118
    move/from16 v16, v7

    .line 119
    .line 120
    move-object/from16 v17, v9

    .line 121
    .line 122
    move-object v9, v8

    .line 123
    :goto_1
    const-string v1, "Could not revoke "

    .line 124
    .line 125
    const-string v2, " from "

    .line 126
    .line 127
    invoke-static {v1, v11, v2, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const-string v2, "PermissionManager"

    .line 132
    .line 133
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_0
    move/from16 v19, v6

    .line 138
    .line 139
    move/from16 v16, v7

    .line 140
    .line 141
    move-object/from16 v17, v9

    .line 142
    .line 143
    move-object v9, v8

    .line 144
    :goto_2
    add-int/lit8 v6, v19, 0x1

    .line 145
    .line 146
    move-object v8, v9

    .line 147
    move/from16 v7, v16

    .line 148
    .line 149
    move-object/from16 v9, v17

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_1
    return-void
.end method
