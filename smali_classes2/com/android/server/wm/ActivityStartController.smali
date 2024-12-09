.class public final Lcom/android/server/wm/ActivityStartController;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mCheckedForSetup:Z

.field public final mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

.field public final mHandler:Landroid/os/Handler;

.field public mInExecution:Z

.field public mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

.field public mLastHomeActivityStartResult:I

.field public mLastStarter:Lcom/android/server/wm/ActivityStarter;

.field public final mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStarter$Factory;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v1, v0, [Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    iput-object v1, p0, Lcom/android/server/wm/ActivityStartController;->tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStartController;->mInExecution:Z

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 17
    .line 18
    new-instance p2, Landroid/os/Handler;

    .line 19
    .line 20
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {p2, v1, v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lcom/android/server/wm/ActivityStartController;->mHandler:Landroid/os/Handler;

    .line 31
    .line 32
    iput-object p3, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    .line 33
    .line 34
    invoke-interface {p3, p0}, Lcom/android/server/wm/ActivityStarter$Factory;->setController(Lcom/android/server/wm/ActivityStartController;)V

    .line 35
    .line 36
    .line 37
    new-instance p2, Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    .line 38
    .line 39
    iget-object p3, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 42
    .line 43
    invoke-direct {p2, p3, p1}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;-><init>(Lcom/android/server/wm/WindowManagerGlobalLock;Landroid/os/Handler;)V

    .line 44
    .line 45
    .line 46
    iput-object p2, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final checkTargetUser(IILjava/lang/String;IZ)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p2, p4, p1, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->ensureNotSpecialUser(I)V

    .line 13
    .line 14
    .line 15
    return p1
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    move v2, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v1

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    .line 9
    .line 10
    const-string/jumbo v4, "mLastHomeActivityStartResult="

    .line 11
    .line 12
    .line 13
    const-string v5, "  "

    .line 14
    .line 15
    if-eqz v3, :cond_2

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget v1, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartResult:I

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string/jumbo v1, "mLastHomeActivityStartRecord:"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    .line 48
    .line 49
    invoke-virtual {p2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v1, p1, v3, v0}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    move v1, v0

    .line 57
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    .line 58
    .line 59
    if-eqz v3, :cond_b

    .line 60
    .line 61
    if-eqz v2, :cond_5

    .line 62
    .line 63
    iget-object v6, v3, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 64
    .line 65
    if-eqz v6, :cond_3

    .line 66
    .line 67
    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-nez v6, :cond_5

    .line 74
    .line 75
    :cond_3
    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 76
    .line 77
    if-eqz v3, :cond_4

    .line 78
    .line 79
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_4

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    .line 89
    .line 90
    if-eqz v3, :cond_b

    .line 91
    .line 92
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p3

    .line 98
    if-eqz p3, :cond_b

    .line 99
    .line 100
    :cond_5
    :goto_1
    if-nez v1, :cond_6

    .line 101
    .line 102
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget p3, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartResult:I

    .line 109
    .line 110
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 111
    .line 112
    .line 113
    move v1, v0

    .line 114
    :cond_6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const-string/jumbo p3, "mLastStarter:"

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    .line 124
    .line 125
    invoke-virtual {p2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p3

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const-string v3, "mCurrentUser="

    .line 136
    .line 137
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 141
    .line 142
    iget v3, v3, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 143
    .line 144
    const-string/jumbo v4, "mLastStartReason="

    .line 145
    .line 146
    .line 147
    invoke-static {v3, p1, p3, v4}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    const-string/jumbo v3, "mLastStartActivityTimeMs="

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    new-instance v4, Ljava/util/Date;

    .line 169
    .line 170
    iget-wide v6, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 171
    .line 172
    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const-string/jumbo v3, "mLastStartActivityResult="

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    .line 192
    .line 193
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 194
    .line 195
    .line 196
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 197
    .line 198
    if-eqz v3, :cond_7

    .line 199
    .line 200
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    const-string/jumbo v3, "mLastStartActivityRecord:"

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 210
    .line 211
    new-instance v4, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    invoke-virtual {v3, p1, v4, v0}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 227
    .line 228
    .line 229
    :cond_7
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 230
    .line 231
    if-eqz v3, :cond_8

    .line 232
    .line 233
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    const-string/jumbo v3, "mStartActivity:"

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 243
    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    invoke-virtual {v3, p1, v4, v0}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 260
    .line 261
    .line 262
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 263
    .line 264
    if-eqz v0, :cond_9

    .line 265
    .line 266
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    const-string/jumbo v0, "mIntent="

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 276
    .line 277
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 281
    .line 282
    if-eqz v0, :cond_a

    .line 283
    .line 284
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    const-string/jumbo v0, "mOptions="

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 294
    .line 295
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    :cond_a
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    const-string/jumbo v0, "mLaunchMode="

    .line 302
    .line 303
    .line 304
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 308
    .line 309
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->launchModeToString(I)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    const-string/jumbo p3, "mLaunchFlags=0x"

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    iget p3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 326
    .line 327
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p3

    .line 331
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    const-string p3, " mDoResume="

    .line 335
    .line 336
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    iget-boolean p3, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 340
    .line 341
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 342
    .line 343
    .line 344
    const-string p3, " mAddingToTask="

    .line 345
    .line 346
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    iget-boolean p3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 350
    .line 351
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 352
    .line 353
    .line 354
    const-string p3, " mInTaskFragment="

    .line 355
    .line 356
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 360
    .line 361
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 362
    .line 363
    .line 364
    if-eqz v2, :cond_b

    .line 365
    .line 366
    return-void

    .line 367
    :cond_b
    if-nez v1, :cond_c

    .line 368
    .line 369
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    const-string p0, "(nothing)"

    .line 373
    .line 374
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    :cond_c
    return-void
.end method

.method public final obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/server/wm/ActivityStarter$Factory;->obtain()Lcom/android/server/wm/ActivityStarter;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 8
    .line 9
    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 10
    .line 11
    iput-object p2, v0, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 12
    .line 13
    return-object p0
.end method

.method public final startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;Landroid/app/BackgroundStartPrivileges;)I
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p10

    if-eqz v3, :cond_24

    if-eqz v4, :cond_23

    .line 1
    array-length v6, v3

    array-length v7, v4

    if-ne v6, v7, :cond_22

    if-eqz p3, :cond_0

    move/from16 v6, p3

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    :goto_0
    const/4 v7, -0x1

    move/from16 v8, p4

    if-eq v8, v7, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    :goto_1
    if-ltz p2, :cond_2

    move/from16 v9, p2

    move v15, v7

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    move v15, v6

    move v9, v8

    goto :goto_2

    :cond_3
    move v9, v7

    move v15, v9

    :goto_2
    const/16 v10, -0x2710

    .line 4
    invoke-static {v9, v8, v10}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v14

    .line 5
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    const/4 v10, 0x1

    if-eqz v5, :cond_e

    .line 7
    iput-boolean v10, v5, Lcom/android/server/wm/SafeActivityOptions;->mShouldCheckFreeform:Z

    .line 8
    iget-object v12, v5, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    invoke-static {v12}, Lcom/android/server/wm/SafeActivityOptions;->cloneLaunchingOptions(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v12

    .line 9
    iget-object v7, v5, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    invoke-static {v7}, Lcom/android/server/wm/SafeActivityOptions;->cloneLaunchingOptions(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v7

    if-nez v12, :cond_4

    if-nez v7, :cond_4

    move-object/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v15

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_8

    .line 10
    :cond_4
    iget-boolean v10, v5, Lcom/android/server/wm/SafeActivityOptions;->mShouldCheckFreeform:Z

    if-eqz v10, :cond_d

    .line 11
    iget-object v10, v5, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    if-eqz v10, :cond_5

    .line 12
    invoke-virtual {v10}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v10

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    .line 13
    :goto_3
    iget-object v11, v5, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    if-eqz v11, :cond_6

    .line 14
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v11

    move-object/from16 v17, v13

    goto :goto_4

    :cond_6
    move-object/from16 v17, v13

    const/4 v11, 0x0

    .line 15
    :goto_4
    iget-object v13, v5, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    if-eqz v13, :cond_7

    .line 16
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v13

    move/from16 v18, v14

    goto :goto_5

    :cond_7
    move/from16 v18, v14

    const/4 v13, 0x0

    .line 17
    :goto_5
    iget-object v14, v5, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    if-eqz v14, :cond_8

    .line 18
    invoke-virtual {v14}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v14

    move/from16 v19, v15

    goto :goto_6

    :cond_8
    move/from16 v19, v15

    const/4 v14, 0x0

    :goto_6
    const/4 v15, 0x5

    if-ne v10, v15, :cond_9

    .line 19
    invoke-virtual {v12, v15}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    :cond_9
    if-eqz v11, :cond_a

    .line 20
    invoke-virtual {v12, v11}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    :cond_a
    if-ne v13, v15, :cond_b

    .line 21
    invoke-virtual {v7, v15}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    :cond_b
    if-eqz v14, :cond_c

    .line 22
    invoke-virtual {v7, v14}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    :cond_c
    const/4 v11, 0x0

    .line 23
    iput-boolean v11, v5, Lcom/android/server/wm/SafeActivityOptions;->mShouldCheckFreeform:Z

    goto :goto_7

    :cond_d
    move-object/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v15

    const/4 v11, 0x0

    .line 24
    :goto_7
    new-instance v10, Lcom/android/server/wm/SafeActivityOptions;

    iget v13, v5, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingPid:I

    iget v14, v5, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingUid:I

    invoke-direct {v10, v12, v13, v14}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;II)V

    .line 25
    iput-object v7, v10, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    .line 26
    iget v7, v5, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingPid:I

    iput v7, v10, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingPid:I

    .line 27
    iget v7, v5, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingUid:I

    iput v7, v10, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingUid:I

    :goto_8
    move-object v7, v10

    goto :goto_9

    :cond_e
    move-object/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v15

    const/4 v11, 0x0

    const/4 v7, 0x0

    .line 28
    :goto_9
    :try_start_0
    new-instance v10, Lcom/android/server/wm/ActivityStartController$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    invoke-static {v3, v10}, Lcom/android/internal/util/ArrayUtils;->filterNotNull([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/Intent;

    .line 29
    array-length v15, v3

    new-array v14, v15, [Lcom/android/server/wm/ActivityStarter;

    move v13, v11

    .line 30
    :goto_a
    array-length v10, v3

    const/16 v24, -0x60

    if-ge v13, v10, :cond_15

    .line 31
    aget-object v10, v3, v13

    .line 32
    invoke-virtual {v10}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v12

    if-nez v12, :cond_14

    .line 33
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_f

    move-object/from16 v16, v14

    const/4 v12, 0x1

    goto :goto_b

    :cond_f
    move v12, v11

    move-object/from16 v16, v14

    .line 34
    :goto_b
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v10, 0x1

    .line 35
    invoke-virtual {v14, v10}, Landroid/content/Intent;->removeExtendedFlags(I)V

    move-object/from16 p4, v7

    .line 36
    iget-object v7, v1, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    aget-object v20, v4, v13

    const/16 v21, 0x0

    move v5, v10

    move-object v10, v7

    move v5, v11

    move-object v11, v14

    move/from16 v25, v12

    move-object/from16 v12, v20

    move/from16 v27, v13

    move-object/from16 v26, v17

    move/from16 v13, p11

    move/from16 v29, v8

    move-object v8, v14

    move-object/from16 v28, v16

    move/from16 p2, v18

    move/from16 v14, v21

    move/from16 v31, v15

    move/from16 v30, v19

    move/from16 v15, p2

    move/from16 v16, v30

    .line 37
    invoke-virtual/range {v10 .. v16}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    const/4 v11, 0x0

    .line 38
    invoke-virtual {v7, v8, v10, v5, v11}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 39
    iget-object v10, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    move/from16 v12, p11

    invoke-virtual {v10, v7, v12}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_11

    .line 40
    :try_start_1
    iget-object v10, v1, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v13, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 41
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    .line 42
    move-object/from16 v16, v10

    check-cast v16, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/16 v21, 0x0

    move-object/from16 v17, v8

    move/from16 v18, p2

    move-object/from16 v19, v14

    .line 43
    invoke-virtual/range {v16 .. v21}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->internalCheckGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;ILjava/lang/Integer;)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    iget-object v13, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v13, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v14, v14, 0x2

    if-nez v14, :cond_10

    .line 45
    iget v14, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v15, v26

    invoke-virtual {v15, v14, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_c

    :catchall_0
    move-exception v0

    goto/16 :goto_1c

    .line 46
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :catch_0
    const-string v0, "ActivityTaskManager"

    const-string v1, "Not allowed to start activity since no uri permission."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v24

    :cond_11
    move-object/from16 v15, v26

    move-object v10, v11

    .line 49
    :goto_c
    :try_start_3
    array-length v13, v3

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    move/from16 v14, v27

    if-ne v14, v13, :cond_12

    const/4 v13, 0x1

    goto :goto_d

    :cond_12
    move v13, v5

    :goto_d
    if-eqz v13, :cond_13

    move-object/from16 v11, p10

    :goto_e
    move-object/from16 v5, p12

    goto :goto_f

    :cond_13
    move-object/from16 v11, p4

    goto :goto_e

    .line 50
    :goto_f
    invoke-virtual {v1, v8, v5}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v8

    move-object/from16 v17, v3

    .line 51
    iget-object v3, v8, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object v10, v3, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 52
    iput-object v0, v3, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 53
    aget-object v10, v4, v14

    .line 54
    iput-object v10, v3, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 55
    iput-object v7, v3, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v7, -0x1

    .line 56
    iput v7, v3, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    move/from16 v10, v30

    .line 57
    iput v10, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 58
    iput v9, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 59
    iput-object v2, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    move-object/from16 v7, p6

    .line 60
    iput-object v7, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 61
    iput v6, v3, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    move/from16 v0, v29

    .line 62
    iput v0, v3, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 63
    iput-object v11, v3, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    move/from16 v11, v25

    .line 64
    iput-boolean v11, v3, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 65
    iput-boolean v13, v3, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    move-object/from16 v11, p13

    .line 66
    iput-object v11, v3, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    move-object/from16 v13, p14

    .line 67
    iput-object v13, v3, Lcom/android/server/wm/ActivityStarter$Request;->forcedBalByPiSender:Landroid/app/BackgroundStartPrivileges;

    .line 68
    aput-object v8, v28, v14

    add-int/lit8 v3, v14, 0x1

    move/from16 v18, p2

    move-object/from16 v7, p4

    move-object/from16 v5, p10

    move v8, v0

    move v13, v3

    move/from16 v19, v10

    move-object/from16 v3, v17

    move-object/from16 v14, v28

    const/4 v11, 0x0

    move-object/from16 v0, p1

    move-object/from16 v17, v15

    move/from16 v15, v31

    goto/16 :goto_a

    .line 69
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File descriptors passed in Intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    move-object/from16 v28, v14

    move/from16 v31, v15

    move-object/from16 v15, v17

    move/from16 p2, v18

    .line 70
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_18

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startActivities: different apps ["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v11, 0x0

    :goto_10
    if-ge v11, v3, :cond_17

    .line 73
    invoke-virtual {v15, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v3, -0x1

    if-ne v11, v4, :cond_16

    const-string v4, "]"

    goto :goto_11

    :cond_16
    const-string v4, ", "

    :goto_11
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    .line 74
    :cond_17
    const-string v3, " from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v2, "ActivityTaskManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_12

    :cond_18
    move v0, v3

    .line 76
    :goto_12
    new-array v2, v0, [Lcom/android/server/wm/ActivityRecord;

    .line 77
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    :try_start_4
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 79
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    const/4 v4, 0x1

    .line 80
    iput-boolean v4, v0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartingWindow:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v4, p9

    move/from16 v0, v31

    const/4 v11, 0x0

    :goto_13
    if-ge v11, v0, :cond_20

    .line 81
    :try_start_5
    aget-object v5, v28, v11

    .line 82
    iget-object v6, v5, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 83
    iput-object v4, v6, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 84
    iput-object v2, v6, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    .line 85
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v4

    if-gez v4, :cond_1b

    const/4 v5, 0x1

    add-int/2addr v11, v5

    :goto_14
    if-ge v11, v0, :cond_19

    .line 86
    iget-object v2, v1, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    aget-object v5, v28, v11

    invoke-interface {v2, v5}, Lcom/android/server/wm/ActivityStarter$Factory;->recycle(Lcom/android/server/wm/ActivityStarter;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    :catchall_1
    move-exception v0

    move-object/from16 v5, p10

    goto/16 :goto_18

    .line 87
    :cond_19
    :try_start_6
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    move-object/from16 v5, p10

    if-eqz v5, :cond_1a

    .line 88
    iget-object v12, v5, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    goto :goto_15

    :cond_1a
    const/4 v12, 0x0

    .line 89
    :goto_15
    invoke-virtual {v0, v12}, Lcom/android/server/wm/StartingSurfaceController;->endDeferAddStartingWindow(Landroid/app/ActivityOptions;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 90
    :try_start_7
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 91
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_2
    move-exception v0

    goto/16 :goto_1b

    :catch_1
    move-exception v0

    .line 92
    :try_start_8
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 93
    const-string v1, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endDeferAddStartingWindow failed, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 94
    invoke-static {v0, v1}, Lcom/android/server/wm/WindowManagerServiceExt;->logCriticalInfo(Ljava/lang/String;Ljava/util/List;)V

    .line 95
    :goto_16
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 96
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v24

    :cond_1b
    move-object/from16 v5, p10

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 97
    :try_start_9
    aget-object v7, v2, v4

    if-eqz v7, :cond_1c

    .line 98
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v4

    move/from16 v8, p2

    if-ne v4, v8, :cond_1d

    .line 99
    iget-object v4, v7, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    goto :goto_17

    :catchall_3
    move-exception v0

    goto :goto_18

    :cond_1c
    move/from16 v8, p2

    :cond_1d
    add-int/lit8 v15, v0, -0x1

    if-ge v11, v15, :cond_1e

    add-int/lit8 v4, v11, 0x1

    .line 100
    aget-object v4, v28, v4

    .line 101
    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 102
    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    const/high16 v7, 0x10000000

    .line 103
    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_1e
    move-object/from16 v4, p9

    :goto_17
    add-int/lit8 v11, v11, 0x1

    move/from16 p2, v8

    goto/16 :goto_13

    .line 104
    :goto_18
    :try_start_a
    iget-object v2, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    if-eqz v5, :cond_1f

    .line 105
    iget-object v12, v5, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    goto :goto_19

    :cond_1f
    const/4 v12, 0x0

    .line 106
    :goto_19
    invoke-virtual {v2, v12}, Lcom/android/server/wm/StartingSurfaceController;->endDeferAddStartingWindow(Landroid/app/ActivityOptions;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 107
    :try_start_b
    iget-object v1, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 108
    throw v0

    :catch_2
    move-exception v0

    .line 109
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string v1, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endDeferAddStartingWindow failed, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 111
    invoke-static {v0, v1}, Lcom/android/server/wm/WindowManagerServiceExt;->logCriticalInfo(Ljava/lang/String;Ljava/util/List;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_16

    :cond_20
    move-object/from16 v5, p10

    .line 112
    :try_start_c
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    if-eqz v5, :cond_21

    .line 113
    iget-object v12, v5, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    goto :goto_1a

    :cond_21
    const/4 v12, 0x0

    .line 114
    :goto_1a
    invoke-virtual {v0, v12}, Lcom/android/server/wm/StartingSurfaceController;->endDeferAddStartingWindow(Landroid/app/ActivityOptions;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 115
    :try_start_d
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 116
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 117
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return v0

    :catch_3
    move-exception v0

    .line 118
    :try_start_f
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 119
    const-string v1, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endDeferAddStartingWindow failed, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 120
    invoke-static {v0, v1}, Lcom/android/server/wm/WindowManagerServiceExt;->logCriticalInfo(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_16

    .line 121
    :goto_1b
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 122
    :goto_1c
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 123
    throw v0

    .line 124
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "intents are length different than resolvedTypes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_23
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "resolvedTypes is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_24
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "intents is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;ILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;Lcom/android/server/am/PendingIntentRecord;Landroid/app/BackgroundStartPrivileges;)I
    .locals 10

    move-object v6, p0

    move v7, p3

    move-object v8, p4

    move-object/from16 v9, p6

    .line 1
    iget-object v0, v6, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSIOPLevel:I

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    iget v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mBatteryOverheatLevel:I

    if-lez v1, :cond_1

    :cond_0
    invoke-virtual {v0, v9}, Lcom/android/server/wm/ActivityTaskManagerService;->isPossibleToStart(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, v6, Lcom/android/server/wm/ActivityStartController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/16 v0, -0x66

    return v0

    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v1, p12

    move v2, p2

    move-object/from16 v3, p14

    move v4, p3

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IILjava/lang/String;IZ)I

    move-result v0

    .line 5
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    if-eqz v9, :cond_6

    .line 6
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 7
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.tencent.mm"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.tencent.mobileqq"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_2
    const/16 v1, 0x3e8

    if-eq v7, v1, :cond_6

    .line 9
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 10
    invoke-static {v1, v0, p3, v9, p4}, Lcom/android/server/DualAppManagerService;->startDAChooserActivity(IIILandroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v4, p7

    move-object v3, v9

    .line 11
    :goto_0
    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v8, :cond_5

    if-eqz v1, :cond_5

    .line 15
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 16
    invoke-static {v1}, Lcom/android/server/DualAppManagerService;->shouldForwardToOwner(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v1, p14

    move v0, v2

    goto :goto_2

    :cond_5
    move-object/from16 v1, p14

    goto :goto_2

    :cond_6
    move-object/from16 v4, p7

    move-object/from16 v1, p14

    move-object v3, v9

    .line 17
    :goto_2
    invoke-virtual {p0, v3, v1}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 18
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    move v5, p1

    iput v5, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    move v5, p2

    .line 19
    iput v5, v3, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 20
    iput v7, v3, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 21
    iput-object v8, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    move-object v5, p5

    .line 22
    iput-object v5, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 23
    iput-object v4, v3, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    move-object/from16 v4, p8

    .line 24
    iput-object v4, v3, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    move-object/from16 v4, p9

    .line 25
    iput-object v4, v3, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    move/from16 v4, p10

    .line 26
    iput v4, v3, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 27
    iput v2, v3, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    move-object/from16 v2, p11

    .line 28
    iput-object v2, v3, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 29
    iput v0, v3, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    move-object/from16 v0, p13

    .line 30
    iput-object v0, v3, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    move-object/from16 v0, p15

    .line 31
    iput-object v0, v3, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    move-object/from16 v0, p16

    .line 32
    iput-object v0, v3, Lcom/android/server/wm/ActivityStarter$Request;->forcedBalByPiSender:Landroid/app/BackgroundStartPrivileges;

    .line 33
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0

    return v0
.end method

.method public final startExistingRecents(Landroid/content/Intent;Landroid/app/ActivityOptions;)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x2

    .line 20
    :goto_0
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    return v3

    .line 36
    :cond_1
    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    if-eqz v8, :cond_a

    .line 41
    .line 42
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_a

    .line 53
    .line 54
    :cond_2
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_a

    .line 59
    .line 60
    iget-object v2, v8, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_a

    .line 71
    .line 72
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 77
    .line 78
    invoke-virtual {v4, v2}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_a

    .line 83
    .line 84
    iget-object v2, v8, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    goto/16 :goto_3

    .line 93
    .line 94
    :cond_3
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 95
    .line 96
    const/4 v10, 0x1

    .line 97
    const/4 v4, 0x0

    .line 98
    if-eqz v2, :cond_4

    .line 99
    .line 100
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_4

    .line 105
    .line 106
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 111
    .line 112
    iget-object v6, v8, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 113
    .line 114
    invoke-interface {v5, v2, v6}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    xor-int/2addr v2, v10

    .line 119
    if-eqz v2, :cond_4

    .line 120
    .line 121
    return v3

    .line 122
    :catch_0
    iput-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 123
    .line 124
    :cond_4
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    if-eqz v2, :cond_5

    .line 129
    .line 130
    iget-boolean v5, v2, Lcom/android/server/wm/DisplayContent;->mIsInExitingRecents:Z

    .line 131
    .line 132
    if-eq v5, v10, :cond_5

    .line 133
    .line 134
    iput-boolean v10, v2, Lcom/android/server/wm/DisplayContent;->mIsInExitingRecents:Z

    .line 135
    .line 136
    :cond_5
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 137
    .line 138
    invoke-virtual {v5, v10, v8}, Lcom/android/server/wm/RootWindowContainer;->startPowerModeLaunchIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 139
    .line 140
    .line 141
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 142
    .line 143
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 144
    .line 145
    const/4 v6, -0x1

    .line 146
    invoke-virtual {v5, p1, v4, v6}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    iget-object p1, v8, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 153
    .line 154
    .line 155
    :try_start_1
    iget-object v6, v8, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 156
    .line 157
    iget-object v7, v6, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 158
    .line 159
    if-eqz v7, :cond_7

    .line 160
    .line 161
    iget-object v9, v8, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 162
    .line 163
    iget-object v9, v9, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    .line 164
    .line 165
    iget-object v7, v7, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 166
    .line 167
    iget-object v11, v7, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 168
    .line 169
    invoke-virtual {v11, v9}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    if-eqz v9, :cond_6

    .line 174
    .line 175
    iget-object v7, v7, Lcom/android/server/wm/TransitionController;->mRemotePlayer:Lcom/android/server/wm/TransitionController$RemotePlayer;

    .line 176
    .line 177
    invoke-virtual {v7, v9, v10, v10}, Lcom/android/server/wm/TransitionController$RemotePlayer;->update(Lcom/android/server/wm/WindowProcessController;ZZ)V

    .line 178
    .line 179
    .line 180
    :cond_6
    invoke-static {v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v6, v1, v8}, Lcom/android/server/wm/TransitionController;->setTransientLaunch(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :catchall_0
    move-exception p0

    .line 189
    goto :goto_2

    .line 190
    :cond_7
    :goto_1
    const-string/jumbo v1, "startExistingRecents"

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v1, v4}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 194
    .line 195
    .line 196
    iput-boolean v10, p1, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    .line 197
    .line 198
    invoke-virtual {p1, v4, p2, v10}, Lcom/android/server/wm/TaskFragment;->resumeTopActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    .line 199
    .line 200
    .line 201
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 202
    .line 203
    const/4 v6, 0x2

    .line 204
    const/4 v7, 0x0

    .line 205
    move-object v9, p2

    .line 206
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    .line 208
    .line 209
    if-eqz v2, :cond_8

    .line 210
    .line 211
    iget-boolean p0, v2, Lcom/android/server/wm/DisplayContent;->mIsInExitingRecents:Z

    .line 212
    .line 213
    if-eqz p0, :cond_8

    .line 214
    .line 215
    iput-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->mIsInExitingRecents:Z

    .line 216
    .line 217
    :cond_8
    iput-boolean v3, p1, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    .line 218
    .line 219
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 220
    .line 221
    .line 222
    return v10

    .line 223
    :goto_2
    if-eqz v2, :cond_9

    .line 224
    .line 225
    iget-boolean p2, v2, Lcom/android/server/wm/DisplayContent;->mIsInExitingRecents:Z

    .line 226
    .line 227
    if-eqz p2, :cond_9

    .line 228
    .line 229
    iput-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->mIsInExitingRecents:Z

    .line 230
    .line 231
    :cond_9
    iput-boolean v3, p1, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    .line 232
    .line 233
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 234
    .line 235
    .line 236
    throw p0

    .line 237
    :cond_a
    :goto_3
    return v3
.end method
