.class public final synthetic Lcom/android/server/wm/DexSizeCompatController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DexSizeCompatController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/server/wm/TaskDisplayArea;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DexSizeCompatController;ZLcom/android/server/wm/TaskDisplayArea;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DexSizeCompatController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DexSizeCompatController;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/wm/DexSizeCompatController$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/DexSizeCompatController$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/wm/TaskDisplayArea;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DexSizeCompatController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DexSizeCompatController;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/wm/DexSizeCompatController$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/DexSizeCompatController$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/wm/TaskDisplayArea;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wm/Task;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    xor-int/2addr v1, v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v1, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget-object v4, Lcom/android/server/wm/DexSizeCompatController$LazyHolder;->sInstance:Lcom/android/server/wm/DexSizeCompatController;

    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    sget-object v4, Lcom/android/server/wm/SizeCompatPolicyManager$LazyHolder;->sManager:Lcom/android/server/wm/SizeCompatPolicyManager;

    .line 23
    .line 24
    iget v4, v4, Lcom/android/server/wm/SizeCompatPolicyManager;->mLaunchPolicy:I

    .line 25
    .line 26
    const/4 v5, 0x2

    .line 27
    if-ne v4, v5, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    invoke-virtual {v4, v2}, Lcom/android/server/wm/ActivityRecord;->isResizeable(Z)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-nez v5, :cond_1

    .line 41
    .line 42
    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 43
    .line 44
    iget v4, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 45
    .line 46
    const/16 v5, 0xa

    .line 47
    .line 48
    if-ne v4, v5, :cond_2

    .line 49
    .line 50
    :cond_1
    move v1, v2

    .line 51
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Lcom/android/server/wm/DexSizeCompatController;->getCompatPolicy(Lcom/android/server/wm/Task;)Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    if-eqz p0, :cond_7

    .line 61
    .line 62
    iput-boolean v3, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mEnabled:Z

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTask:Lcom/android/server/wm/Task;

    .line 65
    .line 66
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-static {p1, v1, p0}, Lcom/android/server/wm/DexSizeCompatController;->shouldCreateCompatPolicy(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_4

    .line 79
    .line 80
    invoke-static {p1, p0}, Lcom/android/server/wm/DexSizeCompatController;->createCompatPolicy(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    :cond_4
    if-nez v1, :cond_5

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    iget-object v12, v0, Lcom/android/server/wm/DexSizeCompatController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 88
    .line 89
    iget-object v2, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 90
    .line 91
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 92
    .line 93
    .line 94
    iget-object v2, p1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 95
    .line 96
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    .line 97
    .line 98
    const/4 v9, 0x3

    .line 99
    iget-object v10, v0, Lcom/android/server/wm/DexSizeCompatController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 100
    .line 101
    const/4 v4, 0x0

    .line 102
    const/4 v5, 0x0

    .line 103
    const/4 v6, 0x0

    .line 104
    const/4 v7, 0x0

    .line 105
    const/4 v8, 0x0

    .line 106
    const/4 v11, 0x0

    .line 107
    move-object v3, p1

    .line 108
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/TaskDisplayArea;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-object v2, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 116
    .line 117
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-nez v2, :cond_6

    .line 122
    .line 123
    iget-object p0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 124
    .line 125
    iget-object p1, v12, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 126
    .line 127
    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 128
    .line 129
    .line 130
    iget-object p0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 131
    .line 132
    const/4 p1, 0x5

    .line 133
    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string/jumbo v3, "toggle: task="

    .line 140
    .line 141
    .line 142
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string p1, ", tda="

    .line 149
    .line 150
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    const-string v2, "SizeCompatPolicy"

    .line 161
    .line 162
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    new-instance p1, Lcom/android/server/wm/DexSizeCompatController$$ExternalSyntheticLambda1;

    .line 170
    .line 171
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v0, p0, p1}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->setFreeformConfiguration(Landroid/content/res/Configuration;Landroid/graphics/Rect;Ljava/util/function/BiConsumer;)V

    .line 175
    .line 176
    .line 177
    :cond_7
    :goto_1
    return-void
.end method
