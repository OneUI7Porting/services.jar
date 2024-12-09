.class public final Lcom/android/server/autofill/ViewState;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final id:Landroid/view/autofill/AutofillId;

.field public mAutofilledValue:Landroid/view/autofill/AutofillValue;

.field public mCandidateSaveValue:Landroid/view/autofill/AutofillValue;

.field public mCurrentValue:Landroid/view/autofill/AutofillValue;

.field public mDatasetId:Ljava/lang/String;

.field public final mIsPrimaryCredential:Z

.field public final mListener:Lcom/android/server/autofill/ViewState$Listener;

.field public mPrimaryFillResponse:Landroid/service/autofill/FillResponse;

.field public mSanitizedValue:Landroid/view/autofill/AutofillValue;

.field public mSecondaryFillResponse:Landroid/service/autofill/FillResponse;

.field public mState:I

.field public mVirtualBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/autofill/ViewState;->mListener:Lcom/android/server/autofill/ViewState$Listener;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/autofill/ViewState;->mIsPrimaryCredential:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getStateAsString()Ljava/lang/String;
    .locals 3

    .line 1
    iget p0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 2
    .line 3
    int-to-long v0, p0

    .line 4
    const-class p0, Lcom/android/server/autofill/ViewState;

    .line 5
    .line 6
    const-string v2, "STATE_"

    .line 7
    .line 8
    invoke-static {p0, v2, v0, v1}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final maybeCallOnFillReady(I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 6
    .line 7
    and-int/lit8 v2, v2, 0x4

    .line 8
    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    and-int/lit8 v2, v1, 0x1

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const-string v1, "ViewState"

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v3, "Ignoring UI for "

    .line 24
    .line 25
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v3, v0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, " on "

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void

    .line 53
    :cond_1
    iget-boolean v2, v0, Lcom/android/server/autofill/ViewState;->mIsPrimaryCredential:Z

    .line 54
    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    and-int/lit16 v2, v1, 0x800

    .line 58
    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    and-int/lit16 v2, v1, 0x800

    .line 63
    .line 64
    if-nez v2, :cond_3

    .line 65
    .line 66
    :goto_0
    iget-object v2, v0, Lcom/android/server/autofill/ViewState;->mPrimaryFillResponse:Landroid/service/autofill/FillResponse;

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    iget-object v2, v0, Lcom/android/server/autofill/ViewState;->mSecondaryFillResponse:Landroid/service/autofill/FillResponse;

    .line 70
    .line 71
    :goto_1
    if-eqz v2, :cond_17

    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-nez v3, :cond_4

    .line 78
    .line 79
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    if-eqz v3, :cond_17

    .line 84
    .line 85
    :cond_4
    iget-object v3, v0, Lcom/android/server/autofill/ViewState;->mListener:Lcom/android/server/autofill/ViewState$Listener;

    .line 86
    .line 87
    iget-object v8, v0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 88
    .line 89
    iget-object v0, v0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 90
    .line 91
    move-object v14, v3

    .line 92
    check-cast v14, Lcom/android/server/autofill/Session;

    .line 93
    .line 94
    const-string v3, "Call to Session#onFillReady() rejected - session: "

    .line 95
    .line 96
    iget-object v4, v14, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 97
    .line 98
    monitor-enter v4

    .line 99
    :try_start_0
    iget-object v5, v14, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 100
    .line 101
    iget v6, v14, Lcom/android/server/autofill/Session;->mFieldClassificationIdSnapshot:I

    .line 102
    .line 103
    iget-object v5, v5, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 104
    .line 105
    new-instance v7, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 106
    .line 107
    const/4 v9, 0x0

    .line 108
    invoke-direct {v7, v6, v9}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 112
    .line 113
    .line 114
    iget-boolean v5, v14, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 115
    .line 116
    if-eqz v5, :cond_5

    .line 117
    .line 118
    const-string v0, "AutofillSession"

    .line 119
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget v2, v14, Lcom/android/server/autofill/Session;->id:I

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v2, " destroyed"

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 143
    .line 144
    const/16 v1, 0x9

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveUiNotShownReason(I)V

    .line 147
    .line 148
    .line 149
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/android/server/autofill/SaveEventLogger;->logAndEndEvent()V

    .line 152
    .line 153
    .line 154
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 155
    .line 156
    const/4 v1, 0x6

    .line 157
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNoPresentationEventReason(I)V

    .line 158
    .line 159
    .line 160
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/android/server/autofill/PresentationStatsEventLogger;->logAndEndEvent()V

    .line 163
    .line 164
    .line 165
    monitor-exit v4

    .line 166
    goto/16 :goto_f

    .line 167
    .line 168
    :catchall_0
    move-exception v0

    .line 169
    goto/16 :goto_e

    .line 170
    .line 171
    :cond_5
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    const/4 v3, 0x0

    .line 173
    if-eqz v0, :cond_6

    .line 174
    .line 175
    invoke-virtual {v0}, Landroid/view/autofill/AutofillValue;->isText()Z

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-eqz v4, :cond_6

    .line 180
    .line 181
    invoke-virtual {v0}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    move-object v9, v0

    .line 190
    goto :goto_2

    .line 191
    :cond_6
    move-object v9, v3

    .line 192
    :goto_2
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 193
    .line 194
    invoke-static {v0}, Lcom/android/server/autofill/Session;->getActivityDisplayId(Landroid/os/IBinder;)I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    iput v0, v14, Lcom/android/server/autofill/Session;->mDisplayId:I

    .line 199
    .line 200
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 201
    .line 202
    iget-object v5, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 203
    .line 204
    monitor-enter v5

    .line 205
    :try_start_1
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 206
    .line 207
    invoke-virtual {v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceLabelLocked()Ljava/lang/CharSequence;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 212
    .line 213
    iget-object v4, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 214
    .line 215
    if-nez v4, :cond_7

    .line 216
    .line 217
    move-object v11, v3

    .line 218
    goto :goto_3

    .line 219
    :cond_7
    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 220
    .line 221
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {v4, v0}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    move-object v11, v0

    .line 234
    :goto_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 235
    if-eqz v10, :cond_16

    .line 236
    .line 237
    if-nez v11, :cond_8

    .line 238
    .line 239
    goto/16 :goto_d

    .line 240
    .line 241
    :cond_8
    iget-object v4, v14, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 242
    .line 243
    monitor-enter v4

    .line 244
    :try_start_2
    iget-object v3, v14, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 245
    .line 246
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 250
    .line 251
    .line 252
    move-result-wide v5

    .line 253
    iget-wide v12, v3, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionStartTimestamp:J

    .line 254
    .line 255
    sub-long/2addr v5, v12

    .line 256
    long-to-int v5, v5

    .line 257
    iget-object v3, v3, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 258
    .line 259
    new-instance v6, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 260
    .line 261
    const/16 v7, 0xd

    .line 262
    .line 263
    invoke-direct {v6, v5, v7}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 267
    .line 268
    .line 269
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 270
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getFillDialogTriggerIds()[Landroid/view/autofill/AutofillId;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    if-eqz v3, :cond_a

    .line 275
    .line 276
    invoke-static {v3, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    if-eqz v3, :cond_a

    .line 281
    .line 282
    invoke-virtual {v14, v2, v8, v9, v1}, Lcom/android/server/autofill/Session;->requestShowFillDialog(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;I)Z

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    if-eqz v1, :cond_9

    .line 287
    .line 288
    iget-object v1, v14, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 289
    .line 290
    monitor-enter v1

    .line 291
    :try_start_3
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 292
    .line 293
    iget-object v2, v14, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 294
    .line 295
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 300
    .line 301
    const/high16 v2, 0x20000

    .line 302
    .line 303
    invoke-virtual {v0, v2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 304
    .line 305
    .line 306
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 307
    .line 308
    iget-object v0, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 309
    .line 310
    new-instance v2, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    .line 311
    .line 312
    const/4 v3, 0x3

    .line 313
    const/16 v4, 0xf

    .line 314
    .line 315
    invoke-direct {v2, v3, v4}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(II)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 319
    .line 320
    .line 321
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 322
    invoke-virtual {v14}, Lcom/android/server/autofill/Session;->setFillDialogDisabled()V

    .line 323
    .line 324
    .line 325
    goto/16 :goto_f

    .line 326
    .line 327
    :catchall_1
    move-exception v0

    .line 328
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 329
    throw v0

    .line 330
    :cond_9
    invoke-virtual {v14}, Lcom/android/server/autofill/Session;->setFillDialogDisabled()V

    .line 331
    .line 332
    .line 333
    :cond_a
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->supportsInlineSuggestions()Z

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    if-eqz v1, :cond_c

    .line 338
    .line 339
    iget-object v1, v14, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 340
    .line 341
    monitor-enter v1

    .line 342
    :try_start_5
    invoke-virtual {v14, v2, v9}, Lcom/android/server/autofill/Session;->requestShowInlineSuggestionsLocked(Landroid/service/autofill/FillResponse;Ljava/lang/String;)Z

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    if-eqz v3, :cond_b

    .line 347
    .line 348
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 349
    .line 350
    iget-object v2, v14, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 351
    .line 352
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 357
    .line 358
    const/16 v2, 0x2000

    .line 359
    .line 360
    invoke-virtual {v0, v2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 361
    .line 362
    .line 363
    iget-object v0, v14, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 364
    .line 365
    iget-object v2, v14, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    .line 366
    .line 367
    iget v3, v14, Lcom/android/server/autofill/Session;->userId:I

    .line 368
    .line 369
    iget-object v0, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 370
    .line 371
    new-instance v4, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda7;

    .line 372
    .line 373
    const/4 v5, 0x0

    .line 374
    invoke-direct {v4, v3, v5, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda7;-><init>(IILjava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v0, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 378
    .line 379
    .line 380
    monitor-exit v1

    .line 381
    goto/16 :goto_f

    .line 382
    .line 383
    :catchall_2
    move-exception v0

    .line 384
    goto :goto_4

    .line 385
    :cond_b
    monitor-exit v1

    .line 386
    goto :goto_5

    .line 387
    :goto_4
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 388
    throw v0

    .line 389
    :cond_c
    :goto_5
    invoke-virtual {v14}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    iget-object v3, v14, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 394
    .line 395
    invoke-virtual {v3}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    iget-object v4, v14, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 400
    .line 401
    iget-object v5, v14, Lcom/android/server/autofill/Session;->mContext:Landroid/content/Context;

    .line 402
    .line 403
    iget v6, v14, Lcom/android/server/autofill/Session;->id:I

    .line 404
    .line 405
    iget-boolean v7, v14, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 406
    .line 407
    iget-object v12, v14, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 408
    .line 409
    iget-object v12, v12, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 410
    .line 411
    check-cast v12, Lcom/android/server/autofill/AutofillManagerService;

    .line 412
    .line 413
    iget-object v13, v12, Lcom/android/server/autofill/AutofillManagerService;->mFlagLock:Ljava/lang/Object;

    .line 414
    .line 415
    monitor-enter v13

    .line 416
    :try_start_6
    iget v12, v12, Lcom/android/server/autofill/AutofillManagerService;->mMaxInputLengthForAutofill:I

    .line 417
    .line 418
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 419
    iget v13, v14, Lcom/android/server/autofill/Session;->mDisplayId:I

    .line 420
    .line 421
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 422
    .line 423
    .line 424
    sget-boolean v15, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 425
    .line 426
    const-string v0, "AutofillUI"

    .line 427
    .line 428
    if-eqz v15, :cond_e

    .line 429
    .line 430
    if-nez v9, :cond_d

    .line 431
    .line 432
    const/4 v15, 0x0

    .line 433
    goto :goto_6

    .line 434
    :cond_d
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 435
    .line 436
    .line 437
    move-result v15

    .line 438
    :goto_6
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 439
    .line 440
    .line 441
    move-result-object v15

    .line 442
    invoke-virtual {v5}, Landroid/content/Context;->getDisplayId()I

    .line 443
    .line 444
    .line 445
    move-result v5

    .line 446
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 447
    .line 448
    .line 449
    move-result-object v5

    .line 450
    filled-new-array {v8, v15, v5}, [Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v5

    .line 454
    const-string/jumbo v15, "showFillUi(): id=%s, filter=%d chars, displayId=%d"

    .line 455
    .line 456
    .line 457
    invoke-static {v0, v15, v5}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    .line 459
    .line 460
    :cond_e
    const/16 v5, 0x38e

    .line 461
    .line 462
    invoke-static {v5, v4, v3, v6, v7}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    if-nez v9, :cond_f

    .line 467
    .line 468
    const/4 v4, 0x0

    .line 469
    goto :goto_7

    .line 470
    :cond_f
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 471
    .line 472
    .line 473
    move-result v4

    .line 474
    :goto_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 475
    .line 476
    .line 477
    move-result-object v4

    .line 478
    const/16 v5, 0x38f

    .line 479
    .line 480
    invoke-virtual {v3, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 481
    .line 482
    .line 483
    move-result-object v3

    .line 484
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 485
    .line 486
    .line 487
    move-result-object v4

    .line 488
    if-nez v4, :cond_10

    .line 489
    .line 490
    const/4 v4, 0x0

    .line 491
    goto :goto_8

    .line 492
    :cond_10
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    .line 493
    .line 494
    .line 495
    move-result-object v4

    .line 496
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 497
    .line 498
    .line 499
    move-result v4

    .line 500
    :goto_8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 501
    .line 502
    .line 503
    move-result-object v4

    .line 504
    const/16 v5, 0x38d

    .line 505
    .line 506
    invoke-virtual {v3, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 507
    .line 508
    .line 509
    move-result-object v15

    .line 510
    new-instance v7, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;

    .line 511
    .line 512
    move-object v3, v7

    .line 513
    move-object v4, v1

    .line 514
    move-object v5, v14

    .line 515
    move v6, v13

    .line 516
    move-object v13, v7

    .line 517
    move-object v7, v2

    .line 518
    move-object/from16 v16, v2

    .line 519
    .line 520
    move-object v2, v13

    .line 521
    move-object v13, v15

    .line 522
    invoke-direct/range {v3 .. v13}, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;ILandroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ILandroid/metrics/LogMaker;)V

    .line 523
    .line 524
    .line 525
    iget-object v3, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    .line 526
    .line 527
    if-nez v3, :cond_11

    .line 528
    .line 529
    const/4 v3, 0x0

    .line 530
    goto :goto_9

    .line 531
    :cond_11
    iget-object v3, v3, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    .line 532
    .line 533
    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    .line 534
    .line 535
    .line 536
    move-result v3

    .line 537
    :goto_9
    if-eqz v3, :cond_13

    .line 538
    .line 539
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 540
    .line 541
    if-eqz v3, :cond_12

    .line 542
    .line 543
    const-string/jumbo v3, "postpone fill UI request.."

    .line 544
    .line 545
    .line 546
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    .line 548
    .line 549
    :cond_12
    iput-object v2, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mCreateFillUiRunnable:Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;

    .line 550
    .line 551
    goto :goto_a

    .line 552
    :cond_13
    iget-object v0, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mHandler:Landroid/os/Handler;

    .line 553
    .line 554
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 555
    .line 556
    .line 557
    :goto_a
    iget-object v1, v14, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 558
    .line 559
    monitor-enter v1

    .line 560
    :try_start_7
    iget-wide v2, v14, Lcom/android/server/autofill/Session;->mUiShownTime:J

    .line 561
    .line 562
    const-wide/16 v4, 0x0

    .line 563
    .line 564
    cmp-long v0, v2, v4

    .line 565
    .line 566
    if-nez v0, :cond_15

    .line 567
    .line 568
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 569
    .line 570
    .line 571
    move-result-wide v2

    .line 572
    iput-wide v2, v14, Lcom/android/server/autofill/Session;->mUiShownTime:J

    .line 573
    .line 574
    iget-wide v4, v14, Lcom/android/server/autofill/Session;->mStartTime:J

    .line 575
    .line 576
    sub-long/2addr v2, v4

    .line 577
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 578
    .line 579
    if-eqz v0, :cond_14

    .line 580
    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    .line 582
    .line 583
    const-string v4, "1st UI for "

    .line 584
    .line 585
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    iget-object v4, v14, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 589
    .line 590
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    const-string v4, " shown in "

    .line 594
    .line 595
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 599
    .line 600
    .line 601
    const-string v4, "AutofillSession"

    .line 602
    .line 603
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    .line 609
    .line 610
    goto :goto_b

    .line 611
    :catchall_3
    move-exception v0

    .line 612
    goto :goto_c

    .line 613
    :cond_14
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 614
    .line 615
    const-string/jumbo v4, "id="

    .line 616
    .line 617
    .line 618
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    iget v4, v14, Lcom/android/server/autofill/Session;->id:I

    .line 622
    .line 623
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    const-string v4, " app="

    .line 627
    .line 628
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    iget-object v4, v14, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 632
    .line 633
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    const-string v4, " svc="

    .line 637
    .line 638
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    iget-object v4, v14, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 642
    .line 643
    invoke-virtual {v4}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v4

    .line 647
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    const-string v4, " latency="

    .line 651
    .line 652
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 656
    .line 657
    .line 658
    iget-object v4, v14, Lcom/android/server/autofill/Session;->mUiLatencyHistory:Landroid/util/LocalLog;

    .line 659
    .line 660
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    invoke-virtual {v4, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    invoke-virtual/range {v16 .. v16}, Landroid/service/autofill/FillResponse;->getRequestId()I

    .line 668
    .line 669
    .line 670
    move-result v0

    .line 671
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 672
    .line 673
    .line 674
    move-result-object v2

    .line 675
    const/16 v3, 0x479

    .line 676
    .line 677
    invoke-virtual {v14, v0, v3, v2}, Lcom/android/server/autofill/Session;->addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V

    .line 678
    .line 679
    .line 680
    :cond_15
    monitor-exit v1

    .line 681
    goto :goto_f

    .line 682
    :goto_c
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 683
    throw v0

    .line 684
    :catchall_4
    move-exception v0

    .line 685
    :try_start_8
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 686
    throw v0

    .line 687
    :catchall_5
    move-exception v0

    .line 688
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 689
    throw v0

    .line 690
    :cond_16
    :goto_d
    const-string/jumbo v0, "onFillReady(): no service label or icon"

    .line 691
    .line 692
    .line 693
    const/4 v1, 0x0

    .line 694
    new-array v1, v1, [Ljava/lang/Object;

    .line 695
    .line 696
    invoke-virtual {v14, v3, v0, v1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    .line 698
    .line 699
    goto :goto_f

    .line 700
    :catchall_6
    move-exception v0

    .line 701
    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 702
    throw v0

    .line 703
    :goto_e
    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 704
    throw v0

    .line 705
    :cond_17
    :goto_f
    return-void
.end method

.method public final resetState(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 2
    .line 3
    not-int p1, p1

    .line 4
    and-int/2addr p1, v0

    .line 5
    iput p1, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 6
    .line 7
    return-void
.end method

.method public final setState(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    or-int/2addr v0, p1

    .line 10
    iput v0, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 11
    .line 12
    :goto_0
    const/4 v0, 0x4

    .line 13
    if-ne p1, v0, :cond_1

    .line 14
    .line 15
    iget p1, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 16
    .line 17
    or-int/lit16 p1, p1, 0x800

    .line 18
    .line 19
    iput p1, p0, Lcom/android/server/autofill/ViewState;->mState:I

    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ViewState: [id="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string v1, ", datasetId:"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mDatasetId:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    :cond_0
    const-string v1, ", state:"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    const-string v1, ", currentValue:"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mCandidateSaveValue:Landroid/view/autofill/AutofillValue;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    const-string v1, ", candidateSaveValue:"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mCandidateSaveValue:Landroid/view/autofill/AutofillValue;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    .line 68
    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    const-string v1, ", autofilledValue:"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mAutofilledValue:Landroid/view/autofill/AutofillValue;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    :cond_3
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    .line 82
    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    const-string v1, ", sanitizedValue:"

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mSanitizedValue:Landroid/view/autofill/AutofillValue;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    :cond_4
    iget-object v1, p0, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    .line 96
    .line 97
    if-eqz v1, :cond_5

    .line 98
    .line 99
    const-string v1, ", virtualBounds:"

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/server/autofill/ViewState;->mVirtualBounds:Landroid/graphics/Rect;

    .line 105
    .line 106
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    :cond_5
    const-string p0, "]"

    .line 110
    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0
.end method
