.class public final Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

.field public final synthetic val$client:Landroid/view/autofill/IAutoFillManagerClient;

.field public final synthetic val$clientState:Landroid/os/Bundle;

.field public final synthetic val$focusedId:Landroid/view/autofill/AutofillId;

.field public final synthetic val$inlineSuggestionsCallback:Ljava/util/function/Function;

.field public final synthetic val$onErrorCallback:Ljava/lang/Runnable;

.field public final synthetic val$sessionId:I

.field public final synthetic val$targetActivity:Landroid/content/ComponentName;

.field public final synthetic val$targetActivityToken:Landroid/os/IBinder;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;ILandroid/os/Bundle;Landroid/view/autofill/IAutoFillManagerClient;Ljava/util/function/Function;Landroid/view/autofill/AutofillId;Landroid/content/ComponentName;Landroid/os/IBinder;ILjava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$sessionId:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$clientState:Landroid/os/Bundle;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$client:Landroid/view/autofill/IAutoFillManagerClient;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$inlineSuggestionsCallback:Ljava/util/function/Function;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$focusedId:Landroid/view/autofill/AutofillId;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$targetActivity:Landroid/content/ComponentName;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$targetActivityToken:Landroid/os/IBinder;

    .line 19
    .line 20
    iput p9, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$userId:I

    .line 21
    .line 22
    iput-object p10, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$onErrorCallback:Ljava/lang/Runnable;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final authenticate()V
    .locals 1

    .line 1
    sget p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->$r8$clinit:I

    .line 2
    .line 3
    const-string p0, "RemoteAugmentedAutofillService"

    .line 4
    .line 5
    const-string/jumbo v0, "authenticate not implemented for augmented autofill"

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final autofill(Landroid/service/autofill/Dataset;I)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "Calling client autofill(): ids="

    .line 4
    .line 5
    const-string v2, "Calling client autofillContent(): id="

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v3, :cond_2

    .line 13
    .line 14
    iget-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->-$$Nest$fgetmCallbacks(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget v2, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$sessionId:I

    .line 21
    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    iget-object v8, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$clientState:Landroid/os/Bundle;

    .line 27
    .line 28
    check-cast v1, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 31
    .line 32
    iget-object v3, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v3

    .line 35
    :try_start_0
    iget-object v5, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 36
    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    invoke-virtual {v5}, Landroid/service/autofill/FillEventHistory;->getSessionId()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eq v5, v2, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v1, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 47
    .line 48
    new-instance v2, Landroid/service/autofill/FillEventHistory$Event;

    .line 49
    .line 50
    const/4 v9, 0x0

    .line 51
    const/4 v10, 0x0

    .line 52
    const/4 v11, 0x0

    .line 53
    const/4 v12, 0x0

    .line 54
    const/4 v13, 0x0

    .line 55
    const/4 v14, 0x0

    .line 56
    const/4 v15, 0x0

    .line 57
    const/16 v16, 0x0

    .line 58
    .line 59
    const/4 v6, 0x1

    .line 60
    move-object v5, v2

    .line 61
    invoke-direct/range {v5 .. v16}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 65
    .line 66
    .line 67
    monitor-exit v3

    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    goto :goto_3

    .line 71
    :cond_1
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    .line 73
    .line 74
    .line 75
    move-result-object v20

    .line 76
    move/from16 v1, p2

    .line 77
    .line 78
    invoke-static {v4, v1}, Landroid/view/autofill/AutofillManager;->makeAuthenticationId(II)I

    .line 79
    .line 80
    .line 81
    move-result v19

    .line 82
    new-instance v1, Landroid/content/Intent;

    .line 83
    .line 84
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v2, "android.view.autofill.extra.CLIENT_STATE"

    .line 88
    .line 89
    iget-object v3, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$clientState:Landroid/os/Bundle;

    .line 90
    .line 91
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    :try_start_1
    iget-object v2, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$client:Landroid/view/autofill/IAutoFillManagerClient;

    .line 95
    .line 96
    iget v3, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$sessionId:I

    .line 97
    .line 98
    const/16 v22, 0x0

    .line 99
    .line 100
    move-object/from16 v17, v2

    .line 101
    .line 102
    move/from16 v18, v3

    .line 103
    .line 104
    move-object/from16 v21, v1

    .line 105
    .line 106
    invoke-interface/range {v17 .. v22}, Landroid/view/autofill/IAutoFillManagerClient;->authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :catch_0
    sget v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->$r8$clinit:I

    .line 111
    .line 112
    const-string v1, "RemoteAugmentedAutofillService"

    .line 113
    .line 114
    const-string v2, "Error starting auth flow"

    .line 115
    .line 116
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    iget-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$inlineSuggestionsCallback:Ljava/util/function/Function;

    .line 120
    .line 121
    iget-object v0, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$focusedId:Landroid/view/autofill/AutofillId;

    .line 122
    .line 123
    new-instance v2, Lcom/android/server/autofill/ui/InlineFillUi;

    .line 124
    .line 125
    invoke-direct {v2, v0}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Landroid/view/autofill/AutofillId;)V

    .line 126
    .line 127
    .line 128
    invoke-interface {v1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    :goto_2
    return-void

    .line 132
    :goto_3
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    throw v0

    .line 134
    :cond_2
    iget-object v3, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 135
    .line 136
    invoke-static {v3}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->-$$Nest$fgetmCallbacks(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    iget v5, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$sessionId:I

    .line 141
    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    iget-object v7, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$clientState:Landroid/os/Bundle;

    .line 147
    .line 148
    check-cast v3, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;

    .line 149
    .line 150
    iget-object v3, v3, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 151
    .line 152
    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logAugmentedAutofillSelected(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 153
    .line 154
    .line 155
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/Dataset;->getFieldContent()Landroid/content/ClipData;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    const/4 v6, 0x0

    .line 164
    if-eqz v5, :cond_4

    .line 165
    .line 166
    iget-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 167
    .line 168
    invoke-static {v1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->-$$Nest$fgetmUriGrantsManager(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)Lcom/android/server/autofill/AutofillUriGrantsManager;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iget-object v4, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$targetActivity:Landroid/content/ComponentName;

    .line 173
    .line 174
    iget-object v7, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$targetActivityToken:Landroid/os/IBinder;

    .line 175
    .line 176
    iget v8, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$userId:I

    .line 177
    .line 178
    invoke-virtual {v1, v4, v7, v8, v5}, Lcom/android/server/autofill/AutofillUriGrantsManager;->grantUriPermissions(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/content/ClipData;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    check-cast v1, Landroid/view/autofill/AutofillId;

    .line 186
    .line 187
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 188
    .line 189
    if-eqz v3, :cond_3

    .line 190
    .line 191
    const-string v3, "RemoteAugmentedAutofillService"

    .line 192
    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v2, ", content="

    .line 202
    .line 203
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    :cond_3
    iget-object v2, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$client:Landroid/view/autofill/IAutoFillManagerClient;

    .line 217
    .line 218
    iget v3, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$sessionId:I

    .line 219
    .line 220
    invoke-interface {v2, v3, v1, v5}, Landroid/view/autofill/IAutoFillManagerClient;->autofillContent(ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V

    .line 221
    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-ne v2, v4, :cond_5

    .line 229
    .line 230
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 235
    .line 236
    iget-object v5, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$focusedId:Landroid/view/autofill/AutofillId;

    .line 237
    .line 238
    invoke-virtual {v2, v5}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    if-eqz v2, :cond_5

    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_5
    move v4, v6

    .line 246
    :goto_4
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 247
    .line 248
    if-eqz v2, :cond_6

    .line 249
    .line 250
    const-string v2, "RemoteAugmentedAutofillService"

    .line 251
    .line 252
    new-instance v5, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v1, ", values="

    .line 261
    .line 262
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    :cond_6
    iget-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$client:Landroid/view/autofill/IAutoFillManagerClient;

    .line 280
    .line 281
    iget v2, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$sessionId:I

    .line 282
    .line 283
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    invoke-interface {v1, v2, v3, v5, v4}, Landroid/view/autofill/IAutoFillManagerClient;->autofill(ILjava/util/List;Ljava/util/List;Z)V

    .line 288
    .line 289
    .line 290
    :goto_5
    iget-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$inlineSuggestionsCallback:Ljava/util/function/Function;

    .line 291
    .line 292
    iget-object v0, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$focusedId:Landroid/view/autofill/AutofillId;

    .line 293
    .line 294
    new-instance v2, Lcom/android/server/autofill/ui/InlineFillUi;

    .line 295
    .line 296
    invoke-direct {v2, v0}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Landroid/view/autofill/AutofillId;)V

    .line 297
    .line 298
    .line 299
    invoke-interface {v1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 300
    .line 301
    .line 302
    goto :goto_6

    .line 303
    :catch_1
    sget v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->$r8$clinit:I

    .line 304
    .line 305
    const-string v0, "RemoteAugmentedAutofillService"

    .line 306
    .line 307
    const-string v1, "Encounter exception autofilling the values"

    .line 308
    .line 309
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .line 311
    .line 312
    :goto_6
    return-void
.end method

.method public final onError()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$onErrorCallback:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onInflate()V
    .locals 0

    .line 1
    return-void
.end method

.method public final startIntentSender(Landroid/content/IntentSender;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$client:Landroid/view/autofill/IAutoFillManagerClient;

    .line 2
    .line 3
    new-instance v0, Landroid/content/Intent;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0, p1, v0}, Landroid/view/autofill/IAutoFillManagerClient;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    sget p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->$r8$clinit:I

    .line 13
    .line 14
    const-string p0, "RemoteAugmentedAutofillService"

    .line 15
    .line 16
    const-string p1, "RemoteException starting intent sender"

    .line 17
    .line 18
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method
