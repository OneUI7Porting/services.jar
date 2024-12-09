.class public final Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;
.super Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl$StateChangeListener;


# static fields
.field public static mInstance:Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;


# instance fields
.field public final context:Landroid/content/Context;

.field public initiateState:Z

.field public final stateMachine:Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->initiateState:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->context:Landroid/content/Context;

    .line 8
    .line 9
    new-instance p1, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p1, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->currentStateMap:Ljava/util/Map;

    .line 20
    .line 21
    new-instance v0, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p1, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->previousStateMap:Ljava/util/Map;

    .line 27
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p1, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->stateChangeListeners:Ljava/util/List;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/Object;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p1, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->stateLock:Ljava/lang/Object;

    .line 41
    .line 42
    new-instance v1, Ljava/lang/Object;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p1, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->listenerLock:Ljava/lang/Object;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->stateMachine:Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->setInitialState()Z

    .line 52
    .line 53
    .line 54
    monitor-enter v1

    .line 55
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_0

    .line 60
    .line 61
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    :cond_0
    monitor-exit v1

    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p0
.end method

.method public static enforceCallingUser(I)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x1482

    .line 6
    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x3e8

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    .line 30
    .line 31
    const-string v1, "Can only be called by system user. callingUid: "

    .line 32
    .line 33
    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    .line 3
    .line 4
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x2

    .line 12
    const/4 v4, 0x3

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x1

    .line 15
    sparse-switch v2, :sswitch_data_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :sswitch_0
    const-string v2, "GET_PREVIOUS_STATE"

    .line 20
    .line 21
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    move p2, v4

    .line 28
    goto :goto_1

    .line 29
    :catch_0
    move-exception p0

    .line 30
    goto/16 :goto_6

    .line 31
    .line 32
    :sswitch_1
    const-string v2, "PROCESS_EVENT"

    .line 33
    .line 34
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-eqz p2, :cond_0

    .line 39
    .line 40
    move p2, v6

    .line 41
    goto :goto_1

    .line 42
    :sswitch_2
    const-string v2, "SET_INITIAL_STATE"

    .line 43
    .line 44
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_0

    .line 49
    .line 50
    move p2, v5

    .line 51
    goto :goto_1

    .line 52
    :sswitch_3
    const-string v2, "GET_CURRENT_STATE"

    .line 53
    .line 54
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-eqz p2, :cond_0

    .line 59
    .line 60
    move p2, v3

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    :goto_0
    const/4 p2, -0x1

    .line 63
    :goto_1
    if-eqz p2, :cond_7

    .line 64
    .line 65
    if-eq p2, v6, :cond_6

    .line 66
    .line 67
    if-eq p2, v3, :cond_4

    .line 68
    .line 69
    if-eq p2, v4, :cond_1

    .line 70
    .line 71
    goto/16 :goto_5

    .line 72
    .line 73
    :cond_1
    const-string p1, "KEY_DUAL_DAR_USER_ID"

    .line 74
    .line 75
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->stateMachine:Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;

    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    :try_start_1
    iget-object p2, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->stateLock:Ljava/lang/Object;

    .line 85
    .line 86
    monitor-enter p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    :try_start_2
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->previousStateMap:Ljava/util/Map;

    .line 88
    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 93
    :try_start_3
    check-cast p0, Ljava/util/HashMap;

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 99
    :try_start_4
    check-cast p0, Lcom/samsung/android/knox/dar/ddar/fsm/State;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 100
    .line 101
    :try_start_5
    monitor-exit p2

    .line 102
    goto :goto_4

    .line 103
    :catchall_0
    move-exception p1

    .line 104
    goto :goto_3

    .line 105
    :catchall_1
    move-exception p1

    .line 106
    :goto_2
    move-object p0, v0

    .line 107
    goto :goto_3

    .line 108
    :catchall_2
    move-exception p0

    .line 109
    move-object p1, p0

    .line 110
    goto :goto_2

    .line 111
    :goto_3
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 112
    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 113
    :catch_1
    move-object p0, v0

    .line 114
    :catch_2
    :goto_4
    if-nez p0, :cond_2

    .line 115
    .line 116
    :try_start_7
    sget-object p0, Lcom/samsung/android/knox/dar/ddar/fsm/State;->IDLE:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    .line 117
    .line 118
    :cond_2
    if-eqz p0, :cond_3

    .line 119
    .line 120
    move v5, v6

    .line 121
    :cond_3
    const-string p1, "KEY_STATE"

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/knox/dar/ddar/fsm/State;->name()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string/jumbo p0, "dual_dar_response"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, p0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_4
    const-string p1, "KEY_DUAL_DAR_USER_ID"

    .line 138
    .line 139
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->stateMachine:Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;

    .line 144
    .line 145
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->getCurrentState(I)Lcom/samsung/android/knox/dar/ddar/fsm/State;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    if-eqz p0, :cond_5

    .line 150
    .line 151
    move v5, v6

    .line 152
    :cond_5
    const-string p1, "KEY_STATE"

    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/knox/dar/ddar/fsm/State;->name()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const-string/jumbo p0, "dual_dar_response"

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, p0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 165
    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_6
    invoke-static {p1}, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->enforceCallingUser(I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, p3}, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->processEvent(Landroid/os/Bundle;)Z

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    const-string/jumbo p1, "dual_dar_response"

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 179
    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_7
    invoke-static {p1}, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->enforceCallingUser(I)V

    .line 183
    .line 184
    .line 185
    const-string/jumbo p1, "dual_dar_response"

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->setInitialState()Z

    .line 189
    .line 190
    .line 191
    move-result p0

    .line 192
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 193
    .line 194
    .line 195
    :goto_5
    return-object v1

    .line 196
    :goto_6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 197
    .line 198
    .line 199
    return-object v0

    .line 200
    nop

    .line 201
    :sswitch_data_0
    .sparse-switch
        0x33660c2 -> :sswitch_3
        0x3c5c9e59 -> :sswitch_2
        0x52ce508a -> :sswitch_1
        0x66d24d52 -> :sswitch_0
    .end sparse-switch
.end method

.method public final processEvent(Landroid/os/Bundle;)Z
    .locals 8

    .line 1
    const-string v0, "KEY_EVENT"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    const-string v0, "KEY_DUAL_DAR_USER_ID"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    const-string v0, "KEY_EVENT"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v2, "KEY_DUAL_DAR_USER_ID"

    .line 29
    .line 30
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->stateMachine:Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;

    .line 35
    .line 36
    const-string v2, "Invalid event "

    .line 37
    .line 38
    const-string v3, "Transition: ("

    .line 39
    .line 40
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->stateLock:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter v4

    .line 43
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->getCurrentState(I)Lcom/samsung/android/knox/dar/ddar/fsm/State;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    sget-object v6, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->validTransitions:Ljava/util/Map;

    .line 48
    .line 49
    check-cast v6, Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    check-cast v6, Ljava/util/Map;

    .line 56
    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-eqz v7, :cond_0

    .line 64
    .line 65
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Lcom/samsung/android/knox/dar/ddar/fsm/State;

    .line 70
    .line 71
    iget-object v6, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->previousStateMap:Ljava/util/Map;

    .line 72
    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    check-cast v6, Ljava/util/HashMap;

    .line 78
    .line 79
    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    iget-object v6, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->currentStateMap:Ljava/util/Map;

    .line 83
    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    check-cast v6, Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    const-string v6, "DualDAR::StateMachine"

    .line 94
    .line 95
    new-instance v7, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v3, ") --> ("

    .line 104
    .line 105
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v3, ") because ("

    .line 112
    .line 113
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v3, ") for user "

    .line 120
    .line 121
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    new-array v1, v1, [Ljava/lang/Object;

    .line 132
    .line 133
    invoke-static {v6, v3, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    const/4 v1, 0x1

    .line 137
    goto :goto_0

    .line 138
    :catchall_0
    move-exception p0

    .line 139
    goto :goto_4

    .line 140
    :cond_0
    const-string v3, "DualDAR::StateMachine"

    .line 141
    .line 142
    new-instance v6, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v2, " in state: "

    .line 151
    .line 152
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v2, " for user "

    .line 159
    .line 160
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    new-array v6, v1, [Ljava/lang/Object;

    .line 171
    .line 172
    invoke-static {v3, v2, v6}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    const/4 v2, 0x0

    .line 176
    :goto_0
    sget-object v3, Lcom/samsung/android/knox/dar/ddar/fsm/State;->IDLE:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    .line 177
    .line 178
    if-ne v2, v3, :cond_1

    .line 179
    .line 180
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->currentStateMap:Ljava/util/Map;

    .line 181
    .line 182
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    check-cast v3, Ljava/util/HashMap;

    .line 187
    .line 188
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->previousStateMap:Ljava/util/Map;

    .line 192
    .line 193
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    check-cast v3, Ljava/util/HashMap;

    .line 198
    .line 199
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    if-eqz v1, :cond_3

    .line 204
    .line 205
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->listenerLock:Ljava/lang/Object;

    .line 206
    .line 207
    monitor-enter v3

    .line 208
    :try_start_1
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->stateChangeListeners:Ljava/util/List;

    .line 209
    .line 210
    check-cast p0, Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    if-eqz v4, :cond_2

    .line 221
    .line 222
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    check-cast v4, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl$StateChangeListener;

    .line 227
    .line 228
    check-cast v4, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;

    .line 229
    .line 230
    iget-object v4, v4, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->context:Landroid/content/Context;

    .line 231
    .line 232
    invoke-static {v4}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    invoke-virtual {v4, v5, v2, v0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->onDualDarStateChanged(Lcom/samsung/android/knox/dar/ddar/fsm/State;Lcom/samsung/android/knox/dar/ddar/fsm/State;Lcom/samsung/android/knox/dar/ddar/fsm/Event;I)Z

    .line 237
    .line 238
    .line 239
    goto :goto_1

    .line 240
    :catchall_1
    move-exception p0

    .line 241
    goto :goto_2

    .line 242
    :cond_2
    monitor-exit v3

    .line 243
    goto :goto_3

    .line 244
    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 245
    throw p0

    .line 246
    :cond_3
    :goto_3
    return v1

    .line 247
    :goto_4
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    throw p0

    .line 249
    :cond_4
    return v1
.end method

.method public final setInitialState()Z
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARUser()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "StateMachineProxy"

    .line 6
    .line 7
    const-string v2, "Set initial state for DualDAR User "

    .line 8
    .line 9
    invoke-static {v0, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x0

    .line 14
    new-array v4, v3, [Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static {v1, v2, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->initiateState:Z

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const-string p0, "StateMachineProxy"

    .line 25
    .line 26
    const-string v0, "DualDAR User has been already initiated"

    .line 27
    .line 28
    new-array v1, v3, [Ljava/lang/Object;

    .line 29
    .line 30
    invoke-static {p0, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return v2

    .line 34
    :cond_0
    const/4 v1, -0x1

    .line 35
    if-eq v0, v1, :cond_1

    .line 36
    .line 37
    const-string v1, "StateMachineProxy"

    .line 38
    .line 39
    const-string v4, "DualDAR User set initial State."

    .line 40
    .line 41
    new-array v5, v3, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-static {v1, v4, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->stateMachine:Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;

    .line 47
    .line 48
    sget-object v4, Lcom/samsung/android/knox/dar/ddar/fsm/State;->DEVICE_LOCK_DATA_LOCK:Lcom/samsung/android/knox/dar/ddar/fsm/State;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    const-string v5, "DualDAR::StateMachine"

    .line 54
    .line 55
    new-instance v6, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string/jumbo v7, "setInitialState() initialState: "

    .line 58
    .line 59
    .line 60
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v7, " for user "

    .line 67
    .line 68
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    new-array v3, v3, [Ljava/lang/Object;

    .line 79
    .line 80
    invoke-static {v5, v6, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-object v5, v1, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->stateLock:Ljava/lang/Object;

    .line 84
    .line 85
    monitor-enter v5

    .line 86
    :try_start_0
    iget-object v3, v1, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->currentStateMap:Ljava/util/Map;

    .line 87
    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    check-cast v3, Ljava/util/HashMap;

    .line 93
    .line 94
    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    iget-object v1, v1, Lcom/android/server/knox/dar/ddar/fsm/StateMachineImpl;->previousStateMap:Ljava/util/Map;

    .line 98
    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v1, Ljava/util/HashMap;

    .line 104
    .line 105
    const/4 v3, 0x0

    .line 106
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iput-boolean v2, p0, Lcom/android/server/knox/dar/ddar/fsm/StateMachineProxy;->initiateState:Z

    .line 111
    .line 112
    return v2

    .line 113
    :catchall_0
    move-exception p0

    .line 114
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    throw p0

    .line 116
    :cond_1
    const-string p0, "StateMachineProxy"

    .line 117
    .line 118
    const-string v1, "Not Active user for DualDAR : "

    .line 119
    .line 120
    invoke-static {v0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    new-array v1, v3, [Ljava/lang/Object;

    .line 125
    .line 126
    invoke-static {p0, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    return v3
.end method
