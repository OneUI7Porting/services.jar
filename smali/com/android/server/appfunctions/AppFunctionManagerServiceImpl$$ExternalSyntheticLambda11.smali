.class public final synthetic Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/UserHandle;

.field public final synthetic f$3:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

.field public final synthetic f$4:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

.field public final synthetic f$5:Landroid/os/ICancellationSignal;

.field public final synthetic f$6:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/os/ICancellationSignal;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;->f$2:Landroid/os/UserHandle;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;->f$3:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;->f$4:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;->f$5:Landroid/os/ICancellationSignal;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;->f$6:Landroid/os/IBinder;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v12, v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;->f$2:Landroid/os/UserHandle;

    .line 8
    .line 9
    iget-object v13, v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;->f$3:Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    .line 10
    .line 11
    iget-object v3, v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;->f$4:Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    .line 12
    .line 13
    iget-object v4, v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;->f$5:Landroid/os/ICancellationSignal;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;->f$6:Landroid/os/IBinder;

    .line 16
    .line 17
    move-object/from16 v5, p1

    .line 18
    .line 19
    check-cast v5, Ljava/lang/Void;

    .line 20
    .line 21
    iget-object v5, v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mInternalServiceHelper:Lcom/android/server/appfunctions/ServiceHelper;

    .line 22
    .line 23
    invoke-interface {v5, v2, v12}, Lcom/android/server/appfunctions/ServiceHelper;->resolveAppFunctionService(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/16 v14, 0x7d0

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    new-instance v0, Landroid/app/appfunctions/AppFunctionException;

    .line 32
    .line 33
    const-string v1, "Cannot find the target service."

    .line 34
    .line 35
    invoke-direct {v0, v14, v1}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v13, v0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_0
    invoke-static {v4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    .line 44
    .line 45
    .line 46
    move-result-object v15

    .line 47
    new-instance v4, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;

    .line 48
    .line 49
    invoke-direct {v4, v15}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;-><init>(Landroid/os/CancellationSignal;)V

    .line 50
    .line 51
    .line 52
    iget-object v5, v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mRemoteServiceCaller:Lcom/android/server/appfunctions/RemoteServiceCaller;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mServiceConfig:Lcom/android/server/appfunctions/ServiceConfig;

    .line 55
    .line 56
    check-cast v1, Lcom/android/server/appfunctions/ServiceConfigImpl;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    const-string/jumbo v1, "appfunctions"

    .line 62
    .line 63
    .line 64
    const-string/jumbo v6, "execute_app_function_cancellation_timeout_millis"

    .line 65
    .line 66
    .line 67
    const-wide/16 v7, 0x1388

    .line 68
    .line 69
    invoke-static {v1, v6, v7, v8}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 70
    .line 71
    .line 72
    move-result-wide v7

    .line 73
    new-instance v10, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;

    .line 74
    .line 75
    invoke-direct {v10, v3, v4, v13}, Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;-><init>(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$2;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;)V

    .line 76
    .line 77
    .line 78
    move-object v1, v5

    .line 79
    check-cast v1, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    new-instance v11, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;

    .line 85
    .line 86
    move-object v3, v11

    .line 87
    move-object v4, v1

    .line 88
    move-object v5, v2

    .line 89
    move-object v6, v12

    .line 90
    move-object v9, v15

    .line 91
    move-object v14, v11

    .line 92
    move-object v11, v0

    .line 93
    invoke-direct/range {v3 .. v11}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;-><init>(Lcom/android/server/appfunctions/RemoteServiceCallerImpl;Landroid/content/Intent;Landroid/os/UserHandle;JLandroid/os/CancellationSignal;Lcom/android/server/appfunctions/RunAppFunctionServiceCallback;Landroid/os/IBinder;)V

    .line 94
    .line 95
    .line 96
    iget-object v1, v1, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    const v3, 0x4000001

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v2, v14, v3, v12}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_1

    .line 106
    .line 107
    new-instance v2, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda0;

    .line 108
    .line 109
    invoke-direct {v2, v14}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v15, v2}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 113
    .line 114
    .line 115
    new-instance v2, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda1;

    .line 116
    .line 117
    invoke-direct {v2, v14}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;)V

    .line 118
    .line 119
    .line 120
    iput-object v2, v14, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mDirectServiceVulture:Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda1;

    .line 121
    .line 122
    const/4 v3, 0x0

    .line 123
    :try_start_0
    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    move-object v2, v0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v3, "Failed to link to death on "

    .line 132
    .line 133
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object v3, v14, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCallerBinder:Landroid/os/IBinder;

    .line 137
    .line 138
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v3, ": "

    .line 142
    .line 143
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    const-string v3, "AppFunctionsServiceCall"

    .line 151
    .line 152
    invoke-static {v3, v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {v14}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->safeUnbind()V

    .line 157
    .line 158
    .line 159
    :goto_0
    if-nez v1, :cond_2

    .line 160
    .line 161
    const-string v0, "AppFunctionManagerServiceImpl"

    .line 162
    .line 163
    const-string v1, "Failed to bind to the AppFunctionService"

    .line 164
    .line 165
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    new-instance v0, Landroid/app/appfunctions/AppFunctionException;

    .line 169
    .line 170
    const-string v1, "Failed to bind the AppFunctionService."

    .line 171
    .line 172
    const/16 v2, 0x7d0

    .line 173
    .line 174
    invoke-direct {v0, v2, v1}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v13, v0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    .line 178
    .line 179
    .line 180
    :cond_2
    :goto_1
    return-void
.end method
