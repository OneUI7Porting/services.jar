.class public final Lcom/android/server/wm/DisplayPolicy$PolicyHandler;
.super Landroid/os/Handler;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayPolicy;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 7
    .line 8
    if-eq v0, v1, :cond_c

    .line 9
    .line 10
    const/4 v1, 0x5

    .line 11
    if-eq v0, v1, :cond_9

    .line 12
    .line 13
    const/16 v1, 0x6b

    .line 14
    .line 15
    const/16 v4, 0x66

    .line 16
    .line 17
    const/16 v5, 0x65

    .line 18
    .line 19
    const-string v6, "WindowManager"

    .line 20
    .line 21
    if-eq v0, v1, :cond_5

    .line 22
    .line 23
    const/16 v1, 0x6c

    .line 24
    .line 25
    if-eq v0, v1, :cond_0

    .line 26
    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventView:Lcom/android/server/knox/zt/usertrust/TouchEventView;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    const-string v0, "TouchEventView is not added"

    .line 34
    .line 35
    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsKnoxZtStarted:Z

    .line 40
    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    const-string/jumbo v0, "mIsKnoxZtStarted is false"

    .line 44
    .line 45
    .line 46
    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    :try_start_0
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventViewHash:I

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-ne v1, v0, :cond_3

    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventView:Lcom/android/server/knox/zt/usertrust/TouchEventView;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v7, "Exception in unregistering mTouchEventView :- "

    .line 70
    .line 71
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    :cond_3
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mIsKnoxZtStarted:Z

    .line 85
    .line 86
    :goto_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 87
    .line 88
    if-ne p1, v5, :cond_4

    .line 89
    .line 90
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayPolicy;->startEnableTouchEvent(Z)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_3

    .line 94
    .line 95
    :cond_4
    if-ne p1, v4, :cond_f

    .line 96
    .line 97
    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayPolicy;->startEnableTouchEvent(Z)V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_3

    .line 101
    .line 102
    :cond_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 103
    .line 104
    if-eq p1, v5, :cond_6

    .line 105
    .line 106
    if-ne p1, v4, :cond_f

    .line 107
    .line 108
    :cond_6
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsKnoxZtStarted:Z

    .line 109
    .line 110
    if-eqz p1, :cond_7

    .line 111
    .line 112
    const-string p0, "TouchEventView is already added"

    .line 113
    .line 114
    invoke-static {v6, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    goto/16 :goto_3

    .line 118
    .line 119
    :cond_7
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventView:Lcom/android/server/knox/zt/usertrust/TouchEventView;

    .line 120
    .line 121
    if-nez p1, :cond_8

    .line 122
    .line 123
    new-instance p1, Lcom/android/server/knox/zt/usertrust/TouchEventView;

    .line 124
    .line 125
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 126
    .line 127
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 128
    .line 129
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicyExt;->mAuthFactorTouchManager:Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;

    .line 130
    .line 131
    invoke-direct {p1, v0, v1}, Lcom/android/server/knox/zt/usertrust/TouchEventView;-><init>(Landroid/content/Context;Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;)V

    .line 132
    .line 133
    .line 134
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventView:Lcom/android/server/knox/zt/usertrust/TouchEventView;

    .line 135
    .line 136
    :cond_8
    const-string p1, "enableTouchListener debugmode:false"

    .line 137
    .line 138
    invoke-static {v6, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventView:Lcom/android/server/knox/zt/usertrust/TouchEventView;

    .line 142
    .line 143
    invoke-virtual {p1, v3}, Lcom/android/server/knox/zt/usertrust/TouchEventView;->setDebugmode(Z)V

    .line 144
    .line 145
    .line 146
    :try_start_1
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 147
    .line 148
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventView:Lcom/android/server/knox/zt/usertrust/TouchEventView;

    .line 149
    .line 150
    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :catch_1
    move-exception p1

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v1, "Exception in registering mTouchEventView :- "

    .line 158
    .line 159
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-static {v6, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    :goto_2
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventView:Lcom/android/server/knox/zt/usertrust/TouchEventView;

    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventViewHash:I

    .line 179
    .line 180
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mIsKnoxZtStarted:Z

    .line 181
    .line 182
    goto/16 :goto_3

    .line 183
    .line 184
    :cond_9
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 185
    .line 186
    if-nez p1, :cond_a

    .line 187
    .line 188
    goto/16 :goto_3

    .line 189
    .line 190
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 191
    .line 192
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->mRemoved:Z

    .line 193
    .line 194
    if-nez v1, :cond_b

    .line 195
    .line 196
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 197
    .line 198
    .line 199
    :cond_b
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 200
    .line 201
    const-class v0, Landroid/view/WindowManager;

    .line 202
    .line 203
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    check-cast p1, Landroid/view/WindowManager;

    .line 208
    .line 209
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 210
    .line 211
    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 212
    .line 213
    .line 214
    const/4 p1, 0x0

    .line 215
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_c
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 219
    .line 220
    if-eqz p1, :cond_d

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_d
    new-instance p1, Lcom/android/internal/widget/PointerLocationView;

    .line 224
    .line 225
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 226
    .line 227
    invoke-direct {p1, v0}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    .line 228
    .line 229
    .line 230
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 231
    .line 232
    invoke-virtual {p1, v3}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 233
    .line 234
    .line 235
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 236
    .line 237
    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 238
    .line 239
    .line 240
    const/16 v0, 0x7df

    .line 241
    .line 242
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 243
    .line 244
    const/16 v0, 0x118

    .line 245
    .line 246
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 247
    .line 248
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 249
    .line 250
    or-int/lit8 v0, v0, 0x10

    .line 251
    .line 252
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 253
    .line 254
    invoke-virtual {p1, v3}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 255
    .line 256
    .line 257
    const/4 v0, 0x3

    .line 258
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 259
    .line 260
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-eqz v0, :cond_e

    .line 265
    .line 266
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 267
    .line 268
    const/high16 v1, 0x1000000

    .line 269
    .line 270
    or-int/2addr v0, v1

    .line 271
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 272
    .line 273
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 274
    .line 275
    or-int/lit8 v0, v0, 0x2

    .line 276
    .line 277
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 278
    .line 279
    :cond_e
    const/4 v0, -0x3

    .line 280
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 281
    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    const-string v1, "PointerLocation - display "

    .line 285
    .line 286
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 290
    .line 291
    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 292
    .line 293
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 301
    .line 302
    .line 303
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 304
    .line 305
    or-int/2addr v0, v2

    .line 306
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 307
    .line 308
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 309
    .line 310
    const-class v2, Landroid/view/WindowManager;

    .line 311
    .line 312
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    check-cast v0, Landroid/view/WindowManager;

    .line 317
    .line 318
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 319
    .line 320
    invoke-interface {v0, v2, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    .line 322
    .line 323
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 324
    .line 325
    invoke-virtual {v1, p0}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 326
    .line 327
    .line 328
    :cond_f
    :goto_3
    return-void
.end method
