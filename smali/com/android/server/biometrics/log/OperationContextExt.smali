.class public final Lcom/android/server/biometrics/log/OperationContextExt;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

.field public mDockState:I

.field public mFoldState:I

.field public final mIsBP:Z

.field public mIsDisplayOn:Z

.field public final mIsMandatoryBiometrics:Z

.field public mOrientation:I

.field public mSessionInfo:Lcom/android/server/biometrics/log/BiometricContextSessionInfo;


# direct methods
.method public constructor <init>(Landroid/hardware/biometrics/common/OperationContext;ZIZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsDisplayOn:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mDockState:I

    .line 8
    .line 9
    iput v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mOrientation:I

    .line 10
    .line 11
    iput v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mFoldState:I

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 14
    .line 15
    iput-boolean p2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsBP:Z

    .line 16
    .line 17
    iput-boolean p4, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsMandatoryBiometrics:Z

    .line 18
    .line 19
    const/4 p0, 0x2

    .line 20
    if-ne p3, p0, :cond_0

    .line 21
    .line 22
    new-instance p0, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;

    .line 23
    .line 24
    invoke-direct {p0}, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Landroid/hardware/biometrics/common/OperationState;->fingerprintOperationState(Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;)Landroid/hardware/biometrics/common/OperationState;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    iput-object p0, p1, Landroid/hardware/biometrics/common/OperationContext;->operationState:Landroid/hardware/biometrics/common/OperationState;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/16 p0, 0x8

    .line 35
    .line 36
    if-ne p3, p0, :cond_1

    .line 37
    .line 38
    new-instance p0, Landroid/hardware/biometrics/common/OperationState$FaceOperationState;

    .line 39
    .line 40
    invoke-direct {p0}, Landroid/hardware/biometrics/common/OperationState$FaceOperationState;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static {p0}, Landroid/hardware/biometrics/common/OperationState;->faceOperationState(Landroid/hardware/biometrics/common/OperationState$FaceOperationState;)Landroid/hardware/biometrics/common/OperationState;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    iput-object p0, p1, Landroid/hardware/biometrics/common/OperationContext;->operationState:Landroid/hardware/biometrics/common/OperationState;

    .line 48
    .line 49
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final update(Lcom/android/server/biometrics/log/BiometricContext;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 4
    .line 5
    iget v1, p1, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDisplayState:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x4

    .line 10
    if-ne v1, v4, :cond_0

    .line 11
    .line 12
    move v5, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v5, v2

    .line 15
    :goto_0
    iput-boolean v5, v0, Landroid/hardware/biometrics/common/OperationContext;->isAod:Z

    .line 16
    .line 17
    const/4 v5, 0x2

    .line 18
    const/4 v6, 0x3

    .line 19
    if-eq v1, v3, :cond_3

    .line 20
    .line 21
    if-eq v1, v5, :cond_2

    .line 22
    .line 23
    if-eq v1, v6, :cond_1

    .line 24
    .line 25
    if-eq v1, v4, :cond_4

    .line 26
    .line 27
    move v4, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v4, v6

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    move v4, v5

    .line 32
    goto :goto_1

    .line 33
    :cond_3
    move v4, v3

    .line 34
    :cond_4
    :goto_1
    iput v4, v0, Landroid/hardware/biometrics/common/OperationContext;->displayState:I

    .line 35
    .line 36
    iget v1, p1, Lcom/android/server/biometrics/log/BiometricContextProvider;->mFoldState:I

    .line 37
    .line 38
    if-eq v1, v3, :cond_6

    .line 39
    .line 40
    if-eq v1, v5, :cond_5

    .line 41
    .line 42
    if-eq v1, v6, :cond_7

    .line 43
    .line 44
    move v6, v2

    .line 45
    goto :goto_2

    .line 46
    :cond_5
    move v6, v5

    .line 47
    goto :goto_2

    .line 48
    :cond_6
    move v6, v3

    .line 49
    :cond_7
    :goto_2
    iput v6, v0, Landroid/hardware/biometrics/common/OperationContext;->foldState:I

    .line 50
    .line 51
    iput-boolean p2, v0, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    .line 52
    .line 53
    iget-object p2, v0, Landroid/hardware/biometrics/common/OperationContext;->operationState:Landroid/hardware/biometrics/common/OperationState;

    .line 54
    .line 55
    if-eqz p2, :cond_8

    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/hardware/biometrics/common/OperationState;->getTag()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-nez p2, :cond_8

    .line 62
    .line 63
    iget-object p2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 64
    .line 65
    iget-object p2, p2, Landroid/hardware/biometrics/common/OperationContext;->operationState:Landroid/hardware/biometrics/common/OperationState;

    .line 66
    .line 67
    invoke-virtual {p2}, Landroid/hardware/biometrics/common/OperationState;->getFingerprintOperationState()Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    iget-boolean v0, p1, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIsHardwareIgnoringTouches:Z

    .line 72
    .line 73
    iput-boolean v0, p2, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;->isHardwareIgnoringTouches:Z

    .line 74
    .line 75
    :cond_8
    iget-boolean p2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsBP:Z

    .line 76
    .line 77
    if-eqz p2, :cond_9

    .line 78
    .line 79
    iget-object p2, p1, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSession:Ljava/util/Map;

    .line 80
    .line 81
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast p2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    .line 87
    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    check-cast p2, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    .line 92
    .line 93
    iput-object p2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mSessionInfo:Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    .line 94
    .line 95
    if-eqz p2, :cond_a

    .line 96
    .line 97
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 98
    .line 99
    iget-object p2, p2, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;->mId:Lcom/android/internal/logging/InstanceId;

    .line 100
    .line 101
    invoke-virtual {p2}, Lcom/android/internal/logging/InstanceId;->getId()I

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    iput p2, v0, Landroid/hardware/biometrics/common/OperationContext;->id:I

    .line 106
    .line 107
    iget-object p2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 108
    .line 109
    iput-byte v3, p2, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_9
    iget-object p2, p1, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSession:Ljava/util/Map;

    .line 113
    .line 114
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast p2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 119
    .line 120
    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    check-cast p2, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    .line 125
    .line 126
    iput-object p2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mSessionInfo:Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    .line 127
    .line 128
    if-eqz p2, :cond_a

    .line 129
    .line 130
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 131
    .line 132
    iget-object p2, p2, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;->mId:Lcom/android/internal/logging/InstanceId;

    .line 133
    .line 134
    invoke-virtual {p2}, Lcom/android/internal/logging/InstanceId;->getId()I

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    iput p2, v0, Landroid/hardware/biometrics/common/OperationContext;->id:I

    .line 139
    .line 140
    iget-object p2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 141
    .line 142
    iput-byte v5, p2, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_a
    iget-object p2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 146
    .line 147
    iput v2, p2, Landroid/hardware/biometrics/common/OperationContext;->id:I

    .line 148
    .line 149
    iput-byte v2, p2, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    .line 150
    .line 151
    :goto_3
    iget-object p2, p1, Lcom/android/server/biometrics/log/BiometricContextProvider;->mWindowManager:Landroid/view/WindowManager;

    .line 152
    .line 153
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-virtual {p2}, Landroid/view/Display;->getState()I

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-ne p2, v5, :cond_b

    .line 162
    .line 163
    move v2, v3

    .line 164
    :cond_b
    iput-boolean v2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsDisplayOn:Z

    .line 165
    .line 166
    iget p2, p1, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDockState:I

    .line 167
    .line 168
    iput p2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mDockState:I

    .line 169
    .line 170
    iget p2, p1, Lcom/android/server/biometrics/log/BiometricContextProvider;->mFoldState:I

    .line 171
    .line 172
    iput p2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mFoldState:I

    .line 173
    .line 174
    iget-object p1, p1, Lcom/android/server/biometrics/log/BiometricContextProvider;->mWindowManager:Landroid/view/WindowManager;

    .line 175
    .line 176
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    iput p1, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mOrientation:I

    .line 185
    .line 186
    return-void
.end method
