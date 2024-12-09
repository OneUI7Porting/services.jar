.class public final Lcom/android/server/desktopmode/StateManager$InternalState;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

.field public mCoverState:Lcom/samsung/android/cover/CoverState;

.field public mCoverSupportState:I

.field public mCurrentUserId:I

.field public mDesktopDisplayId:I

.field public mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

.field public mDisplayResolutionUnsupported:Z

.field public mDockLowChargerState:I

.field public mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

.field public mEmergencyModeEnabled:Z

.field public mForcedInternalScreenModeEnabled:Z

.field public mIsExternalDisplayConnected:Z

.field public mIsMouseConnected:Z

.field public mIsNavBarGestureEnabled:Z

.field public mIsPogoKeyboardConnected:Z

.field public mIsWiredCharging:Z

.field public mModeChangeLocked:Z

.field public mPackageState:Ljava/util/Map;

.field public mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

.field public mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

.field public mSeq:I

.field public mSpenEnabled:Z

.field public mTouchpadAvailable:Z

.field public mTouchpadEnabled:Z


# virtual methods
.method public final isDexOnPcConnected()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    .line 6
    .line 7
    const/16 v0, 0x3e8

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final isDexOnPcOrWirelessDexConnected()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    .line 6
    .line 7
    const/16 v0, 0x3e8

    .line 8
    .line 9
    if-eq p0, v0, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x3e9

    .line 12
    .line 13
    if-ne p0, v0, :cond_1

    .line 14
    .line 15
    :cond_0
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public final isDexStationConnectedWithFlipCover()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isDexStation()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method public final isHdmiConnected()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method

.method public final isPackagesAvailable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    return v1

    .line 40
    :cond_2
    const/4 p0, 0x1

    .line 41
    return p0
.end method

.method public final isWirelessDexConnected()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    .line 6
    .line 7
    const/16 v0, 0x3e9

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    const-string v1, "State{s"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSeq:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " user"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCurrentUserId:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 25
    .line 26
    const/16 v2, 0x20

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 39
    .line 40
    const-string v3, " prev/"

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousConnectedDisplay:Lcom/android/server/desktopmode/DisplayInfo;

    .line 48
    .line 49
    iget v1, v1, Lcom/android/server/desktopmode/DisplayInfo;->mType:I

    .line 50
    .line 51
    const/16 v4, 0x3e8

    .line 52
    .line 53
    if-eq v1, v4, :cond_2

    .line 54
    .line 55
    const/16 v4, 0x3e9

    .line 56
    .line 57
    if-eq v1, v4, :cond_1

    .line 58
    .line 59
    invoke-static {v1}, Landroid/view/Display;->typeToString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const-string v1, "WIRELESS_DEX"

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const-string v1, "DEX_ON_PC"

    .line 68
    .line 69
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsPogoKeyboardConnected:Z

    .line 73
    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    const-string v1, " pogoKeyboard"

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsMouseConnected:Z

    .line 82
    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    const-string v1, " mouse"

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    :cond_5
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 91
    .line 92
    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 93
    .line 94
    if-eqz v1, :cond_7

    .line 95
    .line 96
    const-string v1, " cover.t"

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v1, ".ft"

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getFriendsType()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const/16 v1, 0x2f

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 130
    .line 131
    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 132
    .line 133
    if-eqz v1, :cond_6

    .line 134
    .line 135
    const-string/jumbo v1, "open"

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_6
    const-string/jumbo v1, "close"

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    :cond_7
    :goto_1
    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    .line 149
    .line 150
    const/4 v4, 0x1

    .line 151
    if-eq v1, v4, :cond_8

    .line 152
    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mCoverSupportState:I

    .line 157
    .line 158
    invoke-static {v1}, Lcom/android/server/desktopmode/CoverStateManager;->coverSupportStateToString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    :cond_8
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 166
    .line 167
    const/4 v5, 0x2

    .line 168
    const/4 v6, 0x0

    .line 169
    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-nez v1, :cond_9

    .line 174
    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopModeState:Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    :cond_9
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 184
    .line 185
    invoke-virtual {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isUndocked()Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-nez v1, :cond_a

    .line 190
    .line 191
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 195
    .line 196
    iget v1, v1, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    .line 197
    .line 198
    invoke-static {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->dockTypeToString(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    :cond_a
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 206
    .line 207
    invoke-virtual {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isUndocked()Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-nez v1, :cond_b

    .line 212
    .line 213
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPreviousDockState:Lcom/android/server/desktopmode/HardwareManager$DockState;

    .line 217
    .line 218
    iget v1, v1, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    .line 219
    .line 220
    invoke-static {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->dockTypeToString(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    :cond_b
    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    .line 228
    .line 229
    const/4 v2, -0x1

    .line 230
    if-eq v1, v2, :cond_c

    .line 231
    .line 232
    const-string v1, " desktopDisplay."

    .line 233
    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDesktopDisplayId:I

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    :cond_c
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mForcedInternalScreenModeEnabled:Z

    .line 243
    .line 244
    if-eqz v1, :cond_d

    .line 245
    .line 246
    const-string v1, " forcedInternalScreenMode"

    .line 247
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    :cond_d
    iget v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDockLowChargerState:I

    .line 252
    .line 253
    if-ne v1, v4, :cond_e

    .line 254
    .line 255
    const-string v1, " dockLowCharger"

    .line 256
    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    :cond_e
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mModeChangeLocked:Z

    .line 261
    .line 262
    if-eqz v1, :cond_f

    .line 263
    .line 264
    const-string v1, " modeChangeLocked"

    .line 265
    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    :cond_f
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsWiredCharging:Z

    .line 270
    .line 271
    if-eqz v1, :cond_10

    .line 272
    .line 273
    const-string v1, " wiredCharging"

    .line 274
    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/desktopmode/StateManager$InternalState;->isPackagesAvailable()Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-nez v1, :cond_11

    .line 283
    .line 284
    const-string v1, " package="

    .line 285
    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    iget-object v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mPackageState:Ljava/util/Map;

    .line 290
    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    :cond_11
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadAvailable:Z

    .line 295
    .line 296
    if-eqz v1, :cond_12

    .line 297
    .line 298
    const-string v1, " touchpadAvailable"

    .line 299
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    :cond_12
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mTouchpadEnabled:Z

    .line 304
    .line 305
    if-eqz v1, :cond_13

    .line 306
    .line 307
    const-string v1, " touchpadEnabled"

    .line 308
    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    :cond_13
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mDisplayResolutionUnsupported:Z

    .line 313
    .line 314
    if-eqz v1, :cond_14

    .line 315
    .line 316
    const-string v1, " displayResolutionUnsupported"

    .line 317
    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    :cond_14
    iget-boolean v1, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mSpenEnabled:Z

    .line 322
    .line 323
    if-eqz v1, :cond_15

    .line 324
    .line 325
    const-string v1, " spenEnabled"

    .line 326
    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    :cond_15
    iget-boolean p0, p0, Lcom/android/server/desktopmode/StateManager$InternalState;->mIsNavBarGestureEnabled:Z

    .line 331
    .line 332
    if-eqz p0, :cond_16

    .line 333
    .line 334
    const-string p0, " navBarGestureEnabled"

    .line 335
    .line 336
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    :cond_16
    const/16 p0, 0x7d

    .line 340
    .line 341
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p0

    .line 348
    return-object p0
.end method
