.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 7
    .line 8
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mHandleExitSplashScreen:Z

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    iget p0, p1, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    if-ne p0, p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    return p1

    .line 20
    :pswitch_0
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 21
    .line 22
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 23
    .line 24
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    if-ne p0, p1, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    :goto_1
    return p1

    .line 32
    :pswitch_1
    check-cast p1, Lcom/android/server/wm/TaskFragment;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isOrganizedTaskFragment()Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    :pswitch_2
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 40
    .line 41
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 42
    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_2

    .line 50
    .line 51
    const/4 p0, 0x1

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/4 p0, 0x0

    .line 54
    :goto_2
    return p0

    .line 55
    :pswitch_3
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 56
    .line 57
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 58
    .line 59
    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    if-ne p1, v0, :cond_3

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_3

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    const/4 v0, 0x0

    .line 72
    :goto_3
    return v0

    .line 73
    :pswitch_4
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 74
    .line 75
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 76
    .line 77
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 78
    .line 79
    const/4 p1, 0x3

    .line 80
    if-ne p0, p1, :cond_4

    .line 81
    .line 82
    const/4 p0, 0x1

    .line 83
    goto :goto_4

    .line 84
    :cond_4
    const/4 p0, 0x0

    .line 85
    :goto_4
    return p0

    .line 86
    :pswitch_5
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 87
    .line 88
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 89
    .line 90
    iget-boolean p0, p0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 91
    .line 92
    if-eqz p0, :cond_5

    .line 93
    .line 94
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 95
    .line 96
    if-nez p0, :cond_5

    .line 97
    .line 98
    const/4 p0, 0x1

    .line 99
    goto :goto_5

    .line 100
    :cond_5
    const/4 p0, 0x0

    .line 101
    :goto_5
    return p0

    .line 102
    :pswitch_6
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 103
    .line 104
    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 105
    .line 106
    if-nez p0, :cond_6

    .line 107
    .line 108
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 109
    .line 110
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 111
    .line 112
    const/4 p1, 0x1

    .line 113
    if-eq p0, p1, :cond_7

    .line 114
    .line 115
    const/4 v0, 0x2

    .line 116
    if-eq p0, v0, :cond_7

    .line 117
    .line 118
    const/4 v0, 0x4

    .line 119
    if-ne p0, v0, :cond_6

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_6
    const/4 p1, 0x0

    .line 123
    :cond_7
    :goto_6
    return p1

    .line 124
    :pswitch_7
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 125
    .line 126
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 127
    .line 128
    return p0

    .line 129
    :pswitch_8
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 130
    .line 131
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 132
    .line 133
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    return p0

    .line 138
    :pswitch_9
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 139
    .line 140
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    .line 141
    .line 142
    if-nez p0, :cond_8

    .line 143
    .line 144
    iget-boolean p0, p1, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    .line 145
    .line 146
    if-eqz p0, :cond_8

    .line 147
    .line 148
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 149
    .line 150
    if-eqz p0, :cond_8

    .line 151
    .line 152
    const/4 p0, 0x1

    .line 153
    goto :goto_7

    .line 154
    :cond_8
    const/4 p0, 0x0

    .line 155
    :goto_7
    return p0

    .line 156
    :pswitch_a
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 157
    .line 158
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 159
    .line 160
    xor-int/lit8 p0, p0, 0x1

    .line 161
    .line 162
    return p0

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
