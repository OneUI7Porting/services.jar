.class public final synthetic Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda14;->$r8$classId:I

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p2, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 9
    .line 10
    check-cast p3, Landroid/view/inputmethod/EditorInfo;

    .line 11
    .line 12
    check-cast p4, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iput-object p2, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mRemoteInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 22
    .line 23
    iput-object p3, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 24
    .line 25
    iput-boolean p0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mRestarting:Z

    .line 26
    .line 27
    iget p4, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 28
    .line 29
    invoke-virtual {p1, p4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p4, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result p4

    .line 39
    add-int/lit8 p4, p4, -0x1

    .line 40
    .line 41
    :goto_0
    if-ltz p4, :cond_1

    .line 42
    .line 43
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 50
    .line 51
    iget-boolean v2, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestImeApis:Z

    .line 52
    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    iget-object v1, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iput-object p2, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 65
    .line 66
    iput-object p3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    const/16 v4, 0xe

    .line 70
    .line 71
    invoke-virtual {v1, v4, p0, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 76
    .line 77
    .line 78
    :cond_0
    add-int/lit8 p4, p4, -0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    monitor-exit v0

    .line 84
    return-void

    .line 85
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    throw p0

    .line 87
    :pswitch_0
    check-cast p2, Ljava/util/Set;

    .line 88
    .line 89
    check-cast p3, Ljava/util/Set;

    .line 90
    .line 91
    check-cast p4, Ljava/lang/Integer;

    .line 92
    .line 93
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    const-class p4, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 101
    .line 102
    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p4

    .line 106
    check-cast p4, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 107
    .line 108
    if-nez p4, :cond_2

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_2
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getA11yFeatureToTileMapInternal(I)Ljava/util/Map;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    new-instance p1, Landroid/util/ArraySet;

    .line 116
    .line 117
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda50;

    .line 125
    .line 126
    const/4 v2, 0x1

    .line 127
    invoke-direct {v1, v2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda50;-><init>(ILjava/util/Set;)V

    .line 128
    .line 129
    .line 130
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda56;

    .line 135
    .line 136
    const/4 v2, 0x0

    .line 137
    invoke-direct {v1, p0, p1, p4, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda56;-><init>(Ljava/util/Map;Ljava/util/Set;Lcom/android/server/statusbar/StatusBarManagerInternal;I)V

    .line 138
    .line 139
    .line 140
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 141
    .line 142
    .line 143
    invoke-interface {p3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 144
    .line 145
    .line 146
    move-result-object p3

    .line 147
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda50;

    .line 148
    .line 149
    const/4 v1, 0x2

    .line 150
    invoke-direct {v0, v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda50;-><init>(ILjava/util/Set;)V

    .line 151
    .line 152
    .line 153
    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    new-instance p3, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda56;

    .line 158
    .line 159
    const/4 v0, 0x1

    .line 160
    invoke-direct {p3, p0, p1, p4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda56;-><init>(Ljava/util/Map;Ljava/util/Set;Lcom/android/server/statusbar/StatusBarManagerInternal;I)V

    .line 161
    .line 162
    .line 163
    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    if-nez p0, :cond_3

    .line 171
    .line 172
    new-instance p0, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string p2, "Unable to add/remove Tiles for a11y features: "

    .line 175
    .line 176
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string/jumbo p1, "as the Tiles aren\'t provided"

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    const-string p1, "AccessibilityManagerService"

    .line 193
    .line 194
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    :cond_3
    :goto_2
    return-void

    .line 198
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    .line 199
    .line 200
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 201
    .line 202
    .line 203
    move-result p0

    .line 204
    check-cast p3, Ljava/lang/Integer;

    .line 205
    .line 206
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 207
    .line 208
    .line 209
    move-result p2

    .line 210
    check-cast p4, Ljava/lang/String;

    .line 211
    .line 212
    invoke-static {p1, p0, p2, p4}, Lcom/android/server/accessibility/AccessibilityManagerService;->$r8$lambda$qVXwVz5kwbGQqyOhKn52nbOV-WI(Lcom/android/server/accessibility/AccessibilityManagerService;IILjava/lang/String;)V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    nop

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method