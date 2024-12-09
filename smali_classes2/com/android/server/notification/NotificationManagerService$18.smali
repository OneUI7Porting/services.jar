.class public final Lcom/android/server/notification/NotificationManagerService$18;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field public final synthetic val$extra:Landroid/os/Bundle;

.field public final synthetic val$id:I

.field public final synthetic val$pkg:Ljava/lang/String;

.field public final synthetic val$userId:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/os/Bundle;II)V
    .locals 0

    .line 1
    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$18;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$18;->val$pkg:Ljava/lang/String;

    .line 6
    .line 7
    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$18;->val$id:I

    .line 8
    .line 9
    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$18;->val$extra:Landroid/os/Bundle;

    .line 10
    .line 11
    iput p5, p0, Lcom/android/server/notification/NotificationManagerService$18;->val$userId:I

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$18;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 9
    .line 10
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$18;->val$pkg:Ljava/lang/String;

    .line 11
    .line 12
    iget v9, p0, Lcom/android/server/notification/NotificationManagerService$18;->val$id:I

    .line 13
    .line 14
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$18;->val$extra:Landroid/os/Bundle;

    .line 15
    .line 16
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$18;->val$userId:I

    .line 17
    .line 18
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 19
    .line 20
    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 21
    .line 22
    monitor-enter v11

    .line 23
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v12

    .line 33
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    move-object v3, v1

    .line 44
    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 45
    .line 46
    sget-object v1, Lcom/android/server/notification/NotificationManagerService;->EDGE_NOTIFICATION_COMPONENT:Landroid/content/ComponentName;

    .line 47
    .line 48
    iget-object v2, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    iget v1, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 57
    .line 58
    if-eq v1, p0, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 62
    .line 63
    iget-object v13, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 64
    .line 65
    new-instance v14, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;

    .line 66
    .line 67
    const/4 v7, 0x0

    .line 68
    move-object v1, v14

    .line 69
    move-object v2, v0

    .line 70
    move-object v4, v8

    .line 71
    move v5, v9

    .line 72
    move-object v6, v10

    .line 73
    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;ILandroid/os/Bundle;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    monitor-exit v11

    .line 83
    return-void

    .line 84
    :goto_1
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    throw p0

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 89
    .line 90
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$18;->val$pkg:Ljava/lang/String;

    .line 91
    .line 92
    iget v9, p0, Lcom/android/server/notification/NotificationManagerService$18;->val$id:I

    .line 93
    .line 94
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$18;->val$extra:Landroid/os/Bundle;

    .line 95
    .line 96
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$18;->val$userId:I

    .line 97
    .line 98
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 99
    .line 100
    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 101
    .line 102
    monitor-enter v11

    .line 103
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v12

    .line 113
    :cond_3
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_5

    .line 118
    .line 119
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    move-object v3, v1

    .line 124
    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 125
    .line 126
    sget-object v1, Lcom/android/server/notification/NotificationManagerService;->EDGE_NOTIFICATION_COMPONENT:Landroid/content/ComponentName;

    .line 127
    .line 128
    iget-object v2, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_3

    .line 135
    .line 136
    iget v1, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 137
    .line 138
    if-eq v1, p0, :cond_4

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_4
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 142
    .line 143
    iget-object v13, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 144
    .line 145
    new-instance v14, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;

    .line 146
    .line 147
    const/4 v7, 0x1

    .line 148
    move-object v1, v14

    .line 149
    move-object v2, v0

    .line 150
    move-object v4, v8

    .line 151
    move v5, v9

    .line 152
    move-object v6, v10

    .line 153
    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;ILandroid/os/Bundle;I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :catchall_1
    move-exception p0

    .line 161
    goto :goto_3

    .line 162
    :cond_5
    monitor-exit v11

    .line 163
    return-void

    .line 164
    :goto_3
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 165
    throw p0

    .line 166
    nop

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
