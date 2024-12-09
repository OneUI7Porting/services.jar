.class public final synthetic Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/wm/DexController$FindTaskResult;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    .line 14
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v2, v0, Lcom/android/server/wm/DexController$FindTaskResult;->mProcessName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iget v1, v0, Lcom/android/server/wm/DexController$FindTaskResult;->mUid:I

    .line 34
    .line 35
    if-ne p1, v1, :cond_0

    .line 36
    .line 37
    iget-object p1, v0, Lcom/android/server/wm/DexController$FindTaskResult;->mTask:Lcom/android/server/wm/Task;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void

    .line 47
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lcom/android/server/wm/DexController;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p0, Lcom/android/server/wm/DisplayContent;

    .line 54
    .line 55
    check-cast p1, Lcom/android/server/wm/Task;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    const/4 v8, 0x1

    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-virtual {p1, v8, v1}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    if-eqz v2, :cond_7

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_7

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_1

    .line 79
    .line 80
    goto/16 :goto_1

    .line 81
    .line 82
    :cond_1
    iget-boolean v2, p1, Lcom/android/server/wm/Task;->inRecents:Z

    .line 83
    .line 84
    if-eqz v2, :cond_6

    .line 85
    .line 86
    iget-object v2, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 87
    .line 88
    if-eqz v2, :cond_2

    .line 89
    .line 90
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    const/high16 v3, 0x800000

    .line 95
    .line 96
    and-int/2addr v2, v3

    .line 97
    if-eqz v2, :cond_2

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DexController;->getNonStartableActivityInDexMode(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    if-eqz v2, :cond_3

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_3
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    const/4 v9, 0x5

    .line 112
    invoke-virtual {v6, v9}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_4

    .line 120
    .line 121
    const/4 v2, 0x0

    .line 122
    invoke-virtual {p1, v2, v2, v1}, Lcom/android/server/wm/Task;->updateDexCompatMode(Landroid/content/pm/ActivityInfo;Landroid/app/ActivityOptions;Z)V

    .line 123
    .line 124
    .line 125
    :cond_4
    iget-object v0, v0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 126
    .line 127
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 128
    .line 129
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    .line 130
    .line 131
    const/4 v4, 0x0

    .line 132
    const/4 v5, 0x0

    .line 133
    const/4 v3, 0x0

    .line 134
    const/4 v7, -0x1

    .line 135
    move-object v2, p1

    .line 136
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;I)Z

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    if-eqz p0, :cond_5

    .line 152
    .line 153
    invoke-virtual {p1, v8}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 154
    .line 155
    .line 156
    new-instance p0, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string/jumbo v0, "moveTaskToFreeformLocked: has fullscreen dex persistent bounds task= "

    .line 159
    .line 160
    .line 161
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    const-string p1, "DexController"

    .line 172
    .line 173
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    if-eq p0, v9, :cond_7

    .line 182
    .line 183
    invoke-virtual {p1, v9}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_6
    :goto_0
    iget-object p0, v0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    .line 188
    .line 189
    new-instance v1, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda5;

    .line 190
    .line 191
    invoke-direct {v1, v0, p1}, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/DexController;Lcom/android/server/wm/Task;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 195
    .line 196
    .line 197
    :cond_7
    :goto_1
    return-void

    .line 198
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v0, Lcom/android/server/wm/DexController;

    .line 201
    .line 202
    iget-object p0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast p0, Lcom/android/server/wm/DisplayContent;

    .line 205
    .line 206
    move-object v2, p1

    .line 207
    check-cast v2, Lcom/android/server/wm/Task;

    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-nez p1, :cond_9

    .line 217
    .line 218
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-nez p1, :cond_9

    .line 223
    .line 224
    iget-boolean p1, v2, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 225
    .line 226
    if-eqz p1, :cond_8

    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_8
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    const/4 v1, 0x0

    .line 238
    invoke-virtual {p1, p0, v1}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 242
    .line 243
    .line 244
    move-result p0

    .line 245
    if-eqz p0, :cond_9

    .line 246
    .line 247
    iget-object p0, v0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 248
    .line 249
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 250
    .line 251
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    .line 252
    .line 253
    const/4 v4, 0x0

    .line 254
    const/4 v7, -0x1

    .line 255
    const/4 v3, 0x0

    .line 256
    const/4 v5, 0x0

    .line 257
    const/4 v6, 0x0

    .line 258
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;I)Z

    .line 259
    .line 260
    .line 261
    :cond_9
    :goto_2
    return-void

    .line 262
    nop

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
