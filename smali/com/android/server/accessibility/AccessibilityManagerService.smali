.class public final Lcom/android/server/accessibility/AccessibilityManagerService;
.super Landroid/view/accessibility/IAccessibilityManager$Stub;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;
.implements Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;
.implements Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;
.implements Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;
.implements Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;
.implements Lcom/android/server/accessibility/SystemActionPerformer$DisplayUpdateCallBack;
.implements Lcom/android/server/accessibility/ProxyManager$SystemSupport;


# static fields
.field static final ACTION_LAUNCH_HEARING_DEVICES_DIALOG:Ljava/lang/String; = "com.android.systemui.action.LAUNCH_HEARING_DEVICES_DIALOG"

.field public static final MATRIX_GRAYSCALE:[F

.field public static final MATRIX_INVERT_COLOR:[F

.field public static final OWN_PROCESS_ID:I

.field public static SEC_DEBUG:Z = false

.field public static sIdCounter:I


# instance fields
.field public cvdCalculator:Lcom/android/server/accessibility/CVDCalculator;

.field public final mA11yDisplayListener:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

.field public final mA11yOverlayLayers:Landroid/util/SparseArray;

.field public final mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

.field public final mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mAodShowStateUri:Landroid/net/Uri;

.field public mAssistantMenuMsgnr:Landroid/os/Messenger;

.field public mCVDSeverity:F

.field public mCVDType:I

.field public final mCallStack:Ljava/util/ArrayList;

.field public final mCaptioningManagerImpl:Lcom/android/server/accessibility/CaptioningManagerImpl;

.field public mColorInversionStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

.field public final mColorInversionStateUri:Landroid/net/Uri;

.field public mColorLensView:Landroid/view/View;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public mCurtainModeIsRunning:Z

.field public mDaltonizerEnabledStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

.field public mDaltonizerStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

.field public final mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

.field public final mDisplayDaltonizerSaturationLevelUri:Landroid/net/Uri;

.field public final mDisplayDaltonizerUri:Landroid/net/Uri;

.field public mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field public mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

.field public mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

.field public final mFlashNotificationsController:Lcom/android/server/accessibility/FlashNotificationsController;

.field public mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

.field public final mGlobalClients:Landroid/os/RemoteCallbackList;

.field public mHasInputFilter:Z

.field public mInitialized:Z

.field public mInputBound:Z

.field public mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

.field public mInputFilterInstalled:Z

.field public mInputSessionRequested:Z

.field public mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

.field public mIsAccessibilityButtonShown:Z

.field public mKeyEventDispatcher:Lcom/android/server/accessibility/KeyEventDispatcher;

.field public final mLock:Ljava/lang/Object;

.field public final mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

.field public final mMagnificationProcessor:Lcom/android/server/accessibility/magnification/MagnificationProcessor;

.field public final mMainHandler:Landroid/os/Handler;

.field public mMotionEventInjectors:Landroid/util/SparseArray;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mProxyManager:Lcom/android/server/accessibility/ProxyManager;

.field public mRealCurrentUserId:I

.field public mRemoteInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

.field public mRestarting:Z

.field public final mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

.field public final mSendWindowStateChangedEventRunnables:Ljava/util/List;

.field public mSetupCompleteStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

.field public final mSetupCompleteUri:Landroid/net/Uri;

.field public final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field public mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

.field public final mTempComponentNameSet:Ljava/util/Set;

.field public final mTempIntArray:Landroid/util/IntArray;

.field public final mTempPoint:Landroid/graphics/Point;

.field public final mTempRect:Landroid/graphics/Rect;

.field public final mTempRect1:Landroid/graphics/Rect;

.field public final mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

.field public final mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

.field public final mUmi:Lcom/android/server/pm/UserManagerInternal;

.field final mUserStates:Landroid/util/SparseArray;

.field public final mVisibleBgUserIds:Landroid/util/SparseBooleanArray;

.field public final mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

.field public shouldRecogniseTwoFingerGestures:Z


# direct methods
.method public static $r8$lambda$qVXwVz5kwbGQqyOhKn52nbOV-WI(Lcom/android/server/accessibility/AccessibilityManagerService;IILjava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityShortcutTargetsInternal(I)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move-object v1, v0

    .line 6
    check-cast v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const-string v3, "AccessibilityManagerService"

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    const-string p0, "No target to perform shortcut, shortcutType="

    .line 17
    .line 18
    invoke-static {p2, p0, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_0
    const-string v2, "Perform shortcut failed, invalid target name:"

    .line 24
    .line 25
    if-eqz p3, :cond_1

    .line 26
    .line 27
    invoke-static {p3, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->doesShortcutTargetsStringContain(Ljava/lang/String;Ljava/util/Collection;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-static {v3, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    const/4 p3, 0x0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/4 v4, -0x2

    .line 48
    const-string v5, "accessibility_button_mode"

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    invoke-static {v0, v5, v6, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/4 v4, 0x1

    .line 56
    if-ne v0, v4, :cond_5

    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isDexMode(Landroid/content/Context;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    if-nez p3, :cond_4

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    if-le p3, v4, :cond_3

    .line 74
    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->showAccessibilityTargetsSelection(II)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_1

    .line 79
    .line 80
    :cond_3
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    check-cast p3, Ljava/lang/String;

    .line 85
    .line 86
    :cond_4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityTargetLabel(ILjava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {v0, p3, v1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->needToShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_7

    .line 97
    .line 98
    goto/16 :goto_1

    .line 99
    .line 100
    :cond_5
    :goto_0
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    check-cast p3, Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-ne v0, v4, :cond_6

    .line 111
    .line 112
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityTargetLabel(ILjava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-static {v0, p3, v5}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->needToShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_6

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-le v0, v4, :cond_7

    .line 130
    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->showAccessibilityTargetsSelection(II)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 136
    .line 137
    invoke-static {v0, p2, p3}, Landroid/view/accessibility/A11yLogger;->insertShortcutSaLog(Landroid/content/Context;ILjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const-string/jumbo v0, "com.android.server.accessibility.MagnificationController"

    .line 141
    .line 142
    .line 143
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_8

    .line 148
    .line 149
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 150
    .line 151
    invoke-virtual {p3}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 152
    .line 153
    .line 154
    move-result-object p3

    .line 155
    invoke-virtual {p3, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    .line 156
    .line 157
    .line 158
    move-result p3

    .line 159
    xor-int/2addr p3, v4

    .line 160
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 161
    .line 162
    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->MAGNIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 163
    .line 164
    invoke-static {v0, v1, p2, p3}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityButtonToInputFilter(I)V

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_8
    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    if-nez v0, :cond_9

    .line 176
    .line 177
    invoke-virtual {v2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_9
    invoke-virtual {p0, p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->performAccessibilityFrameworkFeature(ILandroid/content/ComponentName;)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-eqz v1, :cond_a

    .line 190
    .line 191
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 192
    .line 193
    invoke-static {p0, p3}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->updateProfile(Landroid/content/Context;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_a
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->performAccessibilityShortcutTargetActivity(ILandroid/content/ComponentName;)Z

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-eqz v1, :cond_b

    .line 202
    .line 203
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 204
    .line 205
    invoke-static {p1, p3}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->updateProfile(Landroid/content/Context;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 209
    .line 210
    invoke-static {p0, v0, p2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 211
    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_b
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->performAccessibilityShortcutTargetService(IILandroid/content/ComponentName;)Z

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    if-eqz p1, :cond_c

    .line 219
    .line 220
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 221
    .line 222
    invoke-static {p0, p3}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->updateProfile(Landroid/content/Context;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    :cond_c
    :goto_1
    return-void
.end method

.method public static -$$Nest$mapplyColorinversion(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRealCurrentUserId:I

    .line 8
    .line 9
    const-string v2, "accessibility_display_inversion_enabled"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-class v1, Lcom/android/server/display/color/DisplayTransformManager;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/server/display/color/DisplayTransformManager;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v4, "aod_show_state"

    .line 37
    .line 38
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRealCurrentUserId:I

    .line 39
    .line 40
    invoke-static {v2, v4, v3, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    const/4 v2, 0x1

    .line 45
    if-eqz p0, :cond_0

    .line 46
    .line 47
    move p0, v2

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move p0, v3

    .line 50
    :goto_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroid/view/Display;

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move v0, v2

    .line 64
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string/jumbo v4, "applyColorinversion aodShowStateEnabled : "

    .line 67
    .line 68
    .line 69
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v4, " displayState : "

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    const-string v4, "AccessibilityManagerService"

    .line 88
    .line 89
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    const/16 v3, 0x12c

    .line 93
    .line 94
    if-nez p0, :cond_3

    .line 95
    .line 96
    const/4 p0, 0x3

    .line 97
    if-eq v0, p0, :cond_3

    .line 98
    .line 99
    const/4 p0, 0x4

    .line 100
    if-eq v0, p0, :cond_3

    .line 101
    .line 102
    if-ne v0, v2, :cond_2

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    sget-object p0, Lcom/android/server/accessibility/AccessibilityManagerService;->MATRIX_INVERT_COLOR:[F

    .line 106
    .line 107
    invoke-virtual {v1, v3, p0}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_3
    :goto_2
    const/4 p0, 0x0

    .line 112
    invoke-virtual {v1, v3, p0}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 113
    .line 114
    .line 115
    :cond_4
    :goto_3
    return-void
.end method

.method public static -$$Nest$mapplyDaltonizerSettings(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 11
    .line 12
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string/jumbo v3, "user_setup_complete"

    .line 25
    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    iget v1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 29
    .line 30
    invoke-static {v2, v3, v4, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v2, v4

    .line 39
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 40
    .line 41
    .line 42
    move-result-wide v5

    .line 43
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const-string v7, "accessibility_display_daltonizer_enabled"

    .line 50
    .line 51
    invoke-static {v3, v7, v4, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    const/4 v4, -0x1

    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    const-string v7, "accessibility_display_daltonizer"

    .line 65
    .line 66
    const/16 v8, 0xc

    .line 67
    .line 68
    invoke-static {v3, v7, v8, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 69
    .line 70
    .line 71
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    goto :goto_1

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_4

    .line 75
    :cond_1
    move v3, v4

    .line 76
    :goto_1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/android/server/accessibility/Flags;->enableColorCorrectionSaturation()Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_2

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const-string v5, "accessibility_display_daltonizer_saturation_level"

    .line 92
    .line 93
    invoke-static {p0, v5, v4, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    move p0, v4

    .line 99
    :goto_2
    if-nez v3, :cond_3

    .line 100
    .line 101
    sget-object v1, Lcom/android/server/accessibility/AccessibilityManagerService;->MATRIX_GRAYSCALE:[F

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_3
    const/4 v1, 0x0

    .line 105
    move v4, v3

    .line 106
    :goto_3
    if-nez v2, :cond_4

    .line 107
    .line 108
    const/16 v2, 0xc8

    .line 109
    .line 110
    invoke-virtual {v0, v2, v1}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v4, p0}, Lcom/android/server/display/color/DisplayTransformManager;->setDaltonizerMode(II)V

    .line 114
    .line 115
    .line 116
    :cond_4
    return-void

    .line 117
    :goto_4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    .line 119
    .line 120
    throw p0
.end method

.method public static -$$Nest$menableColorLens(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "color_lens_switch"

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, -0x2

    .line 12
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    :cond_0
    const-string/jumbo v0, "enableColorLens colorLensEnable : "

    .line 20
    .line 21
    .line 22
    const-string v1, "AccessibilityManagerService"

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    const-string/jumbo v0, "window"

    .line 28
    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    .line 33
    .line 34
    const/4 v5, -0x1

    .line 35
    const/16 v6, 0x7df

    .line 36
    .line 37
    const/4 v4, -0x1

    .line 38
    const/16 v7, 0x538

    .line 39
    .line 40
    const/4 v8, -0x3

    .line 41
    move-object v3, v1

    .line 42
    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 43
    .line 44
    .line 45
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 46
    .line 47
    or-int/lit8 v2, v2, 0x10

    .line 48
    .line 49
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 50
    .line 51
    const/4 v2, 0x3

    .line 52
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 53
    .line 54
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mColorLensView:Landroid/view/View;

    .line 55
    .line 56
    if-nez v2, :cond_2

    .line 57
    .line 58
    new-instance v2, Landroid/widget/FrameLayout;

    .line 59
    .line 60
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mColorLensView:Landroid/view/View;

    .line 66
    .line 67
    const/16 v3, 0x200

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateColorLensValue()V

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Landroid/view/WindowManager;

    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mColorLensView:Landroid/view/View;

    .line 84
    .line 85
    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mColorLensView:Landroid/view/View;

    .line 90
    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    const/4 v2, 0x4

    .line 94
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 98
    .line 99
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Landroid/view/WindowManager;

    .line 104
    .line 105
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mColorLensView:Landroid/view/View;

    .line 106
    .line 107
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 108
    .line 109
    .line 110
    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mColorLensView:Landroid/view/View;

    .line 112
    .line 113
    :cond_2
    :goto_0
    return-void
.end method

.method public static -$$Nest$menableColorRelumino(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string/jumbo v2, "relumino_switch"

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    iget v0, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 18
    .line 19
    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    move v1, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v1, v3

    .line 29
    :goto_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const-string/jumbo v5, "relumino_type"

    .line 36
    .line 37
    .line 38
    invoke-static {v4, v5, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string/jumbo v5, "relumino_edge_thickness"

    .line 49
    .line 50
    .line 51
    const/high16 v6, 0x40000000    # 2.0f

    .line 52
    .line 53
    invoke-static {p0, v5, v6, v0}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    invoke-static {}, Landroid/view/SurfaceControl;->getPhysicalDisplayIds()[J

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    add-int/2addr v4, v2

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    move v4, v3

    .line 66
    :goto_1
    const-string/jumbo v2, "enableColorRelumino colorReluminoEnable : "

    .line 67
    .line 68
    .line 69
    const-string v5, " colorReluminotype : "

    .line 70
    .line 71
    const-string v6, " colorReluminoEdgeThickness : "

    .line 72
    .line 73
    invoke-static {v4, v2, v5, v6, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v2, " displayIds[0] : "

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    aget-wide v5, v0, v3

    .line 86
    .line 87
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-string v2, "AccessibilityManagerService"

    .line 95
    .line 96
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    .line 100
    .line 101
    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 102
    .line 103
    .line 104
    aget-wide v2, v0, v3

    .line 105
    .line 106
    invoke-virtual {v1, v2, v3, p0, v4}, Landroid/view/SurfaceControl$Transaction;->setDisplayReluminoEffect(JFI)Landroid/view/SurfaceControl$Transaction;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public static -$$Nest$monPackageRemovedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserState()Lcom/android/server/accessibility/AccessibilityUserState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda7;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    .line 12
    .line 13
    invoke-interface {v2, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 14
    .line 15
    .line 16
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    .line 17
    .line 18
    invoke-interface {v2, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 22
    .line 23
    check-cast v1, Ljava/util/HashSet;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    move v3, v2

    .line 31
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Landroid/content/ComponentName;

    .line 42
    .line 43
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_0

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 54
    .line 55
    .line 56
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    .line 57
    .line 58
    check-cast v3, Ljava/util/HashSet;

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    const/4 v3, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    if-eqz v3, :cond_2

    .line 66
    .line 67
    iget-object p1, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 68
    .line 69
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 70
    .line 71
    const-string/jumbo v3, "enabled_accessibility_services"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v1, v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(ILjava/lang/String;Ljava/util/Set;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    .line 78
    .line 79
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 80
    .line 81
    const-string/jumbo v3, "touch_exploration_granted_accessibility_services"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v1, v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(ILjava/lang/String;Ljava/util/Set;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 88
    .line 89
    .line 90
    :cond_2
    return-void
.end method

.method public static -$$Nest$mremoveUser(ILcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 13
    .line 14
    iget-object v1, p1, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_1
    iget-object p1, p1, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mUsersScales:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 20
    .line 21
    .line 22
    monitor-exit v1

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0

    .line 27
    :catchall_1
    move-exception p0

    .line 28
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 29
    throw p0
.end method

.method public static -$$Nest$mrestoreAccessibilityQsTargets(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-instance v6, Ljava/util/LinkedHashSet;

    .line 10
    .line 11
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityQsTargets:Ljava/util/LinkedHashSet;

    .line 12
    .line 13
    invoke-direct {v6, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-direct {v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    invoke-virtual {p0, p1, v3, v6, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedStringToSet(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/Set;Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v6}, Lcom/android/server/accessibility/AccessibilityUserState;->updateA11yQsTargetLocked(Ljava/util/Set;)V

    .line 27
    .line 28
    .line 29
    const-string v4, "accessibility_qs_targets"

    .line 30
    .line 31
    new-instance v7, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    invoke-direct {v7, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 35
    .line 36
    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v5, 0x0

    .line 39
    move-object v3, p0

    .line 40
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 47
    .line 48
    .line 49
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method

.method public static -$$Nest$mrestoreAccessibilityShortcutTargetService(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v3, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 13
    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    invoke-virtual {p0, p1, v0, v3, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedStringToSet(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/Set;Z)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const v0, 0x1040305

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_0
    const/4 v1, 0x1

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 48
    .line 49
    const/4 v5, 0x3

    .line 50
    invoke-direct {v4, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda42;

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    invoke-direct {v4, v5, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda42;-><init>(ILandroid/content/ComponentName;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move v2, v1

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    :goto_1
    move v2, v6

    .line 73
    :goto_2
    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 74
    .line 75
    const/4 v5, 0x0

    .line 76
    invoke-direct {v4, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p2, v4, v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedStringToSet(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/Set;Z)V

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lcom/android/server/accessibility/Flags;->clearDefaultFromA11yShortcutTargetServiceRestore()Z

    .line 83
    .line 84
    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 94
    .line 95
    const/4 v2, 0x3

    .line 96
    invoke-direct {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 97
    .line 98
    .line 99
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda42;

    .line 104
    .line 105
    const/4 v2, 0x0

    .line 106
    invoke-direct {v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda42;-><init>(ILandroid/content/ComponentName;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    if-eqz p2, :cond_3

    .line 114
    .line 115
    const-string p2, "AccessibilityManagerService"

    .line 116
    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v2, "Removing default service "

    .line 120
    .line 121
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string p1, " from restore of accessibility_shortcut_target_service"

    .line 128
    .line 129
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    new-instance p1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda42;

    .line 140
    .line 141
    const/4 p2, 0x1

    .line 142
    invoke-direct {p1, p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda42;-><init>(ILandroid/content/ComponentName;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 146
    .line 147
    .line 148
    :cond_3
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-eqz p1, :cond_4

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_4
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 156
    .line 157
    monitor-enter p1

    .line 158
    :try_start_0
    invoke-virtual {p0, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    iget-object v0, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityShortcutKeyTargets:Ljava/util/LinkedHashSet;

    .line 163
    .line 164
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 165
    .line 166
    .line 167
    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 168
    .line 169
    .line 170
    const-string v1, "accessibility_shortcut_target_service"

    .line 171
    .line 172
    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 173
    .line 174
    const/4 v0, 0x0

    .line 175
    invoke-direct {v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 176
    .line 177
    .line 178
    const/4 v5, 0x0

    .line 179
    const/4 v2, 0x0

    .line 180
    move-object v0, p0

    .line 181
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, p2, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 188
    .line 189
    .line 190
    monitor-exit p1

    .line 191
    :goto_3
    return-void

    .line 192
    :catchall_0
    move-exception p0

    .line 193
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    throw p0
.end method

.method public static -$$Nest$mrestoreLegacyDisplayMagnificationNavBarIfNeededLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x1e

    .line 5
    .line 6
    if-lt p2, v0, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    const/4 p2, 0x1

    .line 14
    const/4 v0, 0x0

    .line 15
    if-ne p1, p2, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move p2, v0

    .line 19
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v4, Landroid/util/ArraySet;

    .line 24
    .line 25
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-direct {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 32
    .line 33
    .line 34
    const-string v2, "accessibility_button_targets"

    .line 35
    .line 36
    iget v3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 37
    .line 38
    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedSettingToSet(Ljava/lang/String;ILjava/util/function/Function;Ljava/util/Set;)V

    .line 39
    .line 40
    .line 41
    const-string/jumbo v1, "com.android.server.accessibility.MagnificationController"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-ne v2, p2, :cond_2

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    if-eqz p2, :cond_3

    .line 52
    .line 53
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :goto_1
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 61
    .line 62
    const/4 p2, 0x0

    .line 63
    invoke-direct {v5, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 64
    .line 65
    .line 66
    const-string v2, "accessibility_button_targets"

    .line 67
    .line 68
    iget v3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 69
    .line 70
    const/4 v6, 0x0

    .line 71
    move-object v1, p0

    .line 72
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityButtonTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :catch_0
    move-exception p0

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string/jumbo p2, "number format is incorrect"

    .line 86
    .line 87
    .line 88
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    const-string p1, "AccessibilityManagerService"

    .line 99
    .line 100
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    :goto_2
    return-void
.end method

.method public static -$$Nest$mseMdnieHWColorLensState(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Landroid/view/accessibility/A11yRune;->A11Y_COLOR_BOOL_SUPPORT_COLOR_FILTER_MDNIE_HW:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string/jumbo v1, "color_lens_switch"

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, -0x2

    .line 18
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v1, v2

    .line 27
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string/jumbo v4, "color_lens_type"

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string/jumbo v2, "color_lens_opacity"

    .line 43
    .line 44
    .line 45
    const/4 v4, 0x2

    .line 46
    invoke-static {p0, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1, v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->semEnableMdnieColorFilter(II)Z

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->semDisableMdnieColorFilter()Z

    .line 57
    .line 58
    .line 59
    :goto_1
    return-void
.end method

.method public static -$$Nest$msetColorAdjustment(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string/jumbo v1, "color_blind"

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, -0x2

    .line 13
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    move v0, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v2

    .line 23
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string/jumbo v4, "color_adjustment_type"

    .line 28
    .line 29
    .line 30
    const/4 v5, 0x2

    .line 31
    invoke-static {p0, v4, v5, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_2

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    const/4 p0, 0x4

    .line 40
    invoke-virtual {p1, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->semSetMdnieAccessibilityMode(IZ)Z

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p1, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->semSetMdnieAccessibilityMode(IZ)Z

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string/jumbo v4, "color_blind_user_parameter"

    .line 55
    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    invoke-static {p0, v4, v5, v3}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    const/high16 v3, 0x41200000    # 10.0f

    .line 63
    .line 64
    mul-float/2addr p0, v3

    .line 65
    invoke-virtual {p1, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->semSetMdnieAccessibilityMode(IZ)Z

    .line 66
    .line 67
    .line 68
    :try_start_0
    invoke-virtual {p1, v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->semSetColorBlind(ZF)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catch_0
    move-exception p0

    .line 73
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 74
    .line 75
    .line 76
    :goto_1
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    .line 9
    .line 10
    const/16 v0, 0x10

    .line 11
    .line 12
    new-array v1, v0, [F

    .line 13
    .line 14
    fill-array-data v1, :array_0

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/android/server/accessibility/AccessibilityManagerService;->MATRIX_INVERT_COLOR:[F

    .line 18
    .line 19
    new-array v0, v0, [F

    .line 20
    .line 21
    fill-array-data v0, :array_1

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/android/server/accessibility/AccessibilityManagerService;->MATRIX_GRAYSCALE:[F

    .line 25
    .line 26
    return-void

    .line 27
    :array_0
    .array-data 4
        0x3ecdd2f2    # 0.402f
        -0x40e6e979    # -0.598f
        -0x40e6a7f0    # -0.599f
        0x0
        -0x4069ba5e    # -1.174f
        -0x41cdd2f2    # -0.174f
        -0x4069999a    # -1.175f
        0x0
        -0x4196872b    # -0.228f
        -0x4196872b    # -0.228f
        0x3f45a1cb    # 0.772f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    :array_1
    .array-data 4
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x0
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x0
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    .line 54
    invoke-static {p1}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 56
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x3a

    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 57
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;

    .line 58
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect1:Landroid/graphics/Rect;

    .line 59
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 60
    new-instance v1, Landroid/util/IntArray;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    .line 61
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 62
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 63
    new-instance v9, Lcom/android/server/accessibility/UiAutomationManager;

    invoke-direct {v9, v0}, Lcom/android/server/accessibility/UiAutomationManager;-><init>(Ljava/lang/Object;)V

    iput-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSendWindowStateChangedEventRunnables:Ljava/util/List;

    .line 65
    iput v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    const/4 v1, -0x2

    .line 66
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRealCurrentUserId:I

    .line 67
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    .line 68
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yOverlayLayers:Landroid/util/SparseArray;

    const/4 v10, 0x0

    .line 69
    iput-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAssistantMenuMsgnr:Landroid/os/Messenger;

    .line 70
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z

    .line 71
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->shouldRecogniseTwoFingerGestures:Z

    const/4 v1, 0x3

    .line 72
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCVDType:I

    const/4 v1, 0x0

    .line 73
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCVDSeverity:F

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCallStack:Ljava/util/ArrayList;

    .line 75
    const-string v1, "aod_show_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAodShowStateUri:Landroid/net/Uri;

    .line 76
    const-string v1, "accessibility_display_inversion_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mColorInversionStateUri:Landroid/net/Uri;

    .line 77
    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSetupCompleteUri:Landroid/net/Uri;

    .line 78
    const-string v1, "accessibility_display_daltonizer_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

    .line 79
    const-string v1, "accessibility_display_daltonizer"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplayDaltonizerUri:Landroid/net/Uri;

    .line 80
    const-string v1, "accessibility_display_daltonizer_saturation_level"

    .line 81
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplayDaltonizerSaturationLevelUri:Landroid/net/Uri;

    .line 82
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 83
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 84
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 85
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerInternal;->getAccessibilityController()Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    move-result-object v1

    .line 86
    sget-object v2, Lcom/android/server/accessibility/AccessibilityTraceManager;->sInstance:Lcom/android/server/accessibility/AccessibilityTraceManager;

    if-nez v2, :cond_0

    .line 87
    new-instance v2, Lcom/android/server/accessibility/AccessibilityTraceManager;

    invoke-direct {v2, v1, p0, v0}, Lcom/android/server/accessibility/AccessibilityTraceManager;-><init>(Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;)V

    sput-object v2, Lcom/android/server/accessibility/AccessibilityTraceManager;->sInstance:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 88
    :cond_0
    sget-object v8, Lcom/android/server/accessibility/AccessibilityTraceManager;->sInstance:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 89
    iput-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 90
    new-instance v11, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v11, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Looper;)V

    iput-object v11, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 91
    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 93
    new-instance v1, Lcom/android/server/accessibility/PolicyWarningUIController;

    new-instance v2, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;

    invoke-direct {v2, p1}, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v11, p1, v2}, Lcom/android/server/accessibility/PolicyWarningUIController;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;Landroid/content/Context;Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;)V

    .line 94
    new-instance v6, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 95
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    invoke-direct {v6, v1, p1, p0, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;-><init>(Lcom/android/server/accessibility/PolicyWarningUIController;Landroid/content/Context;Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;Landroid/content/pm/PackageManagerInternal;)V

    iput-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 96
    new-instance v12, Lcom/android/server/accessibility/AccessibilityWindowManager;

    move-object v1, v12

    move-object v2, v0

    move-object v3, v11

    move-object v5, p0

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/accessibility/AccessibilityWindowManager;-><init>(Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;Lcom/android/server/accessibility/AccessibilityTraceManager;)V

    iput-object v12, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 97
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

    invoke-direct {v1, p0, p1, v11}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yDisplayListener:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

    .line 98
    new-instance v7, Lcom/android/server/accessibility/magnification/MagnificationController;

    new-instance v5, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    invoke-direct {v5, p1}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/magnification/MagnificationController;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/concurrent/Executor;)V

    iput-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 100
    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    invoke-direct {v1, v7}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;-><init>(Lcom/android/server/accessibility/magnification/MagnificationController;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationProcessor:Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    .line 101
    new-instance v1, Lcom/android/server/accessibility/CaptioningManagerImpl;

    invoke-direct {v1, p1}, Lcom/android/server/accessibility/CaptioningManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCaptioningManagerImpl:Lcom/android/server/accessibility/CaptioningManagerImpl;

    .line 102
    new-instance v8, Lcom/android/server/accessibility/ProxyManager;

    move-object v1, v8

    move-object v2, v0

    move-object v3, v12

    move-object v5, v11

    move-object v6, v9

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accessibility/ProxyManager;-><init>(Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityWindowManager;Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;Lcom/android/server/accessibility/UiAutomationManager;Lcom/android/server/accessibility/ProxyManager$SystemSupport;)V

    iput-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 103
    new-instance v0, Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-direct {v0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFlashNotificationsController:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 104
    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUmi:Lcom/android/server/pm/UserManagerInternal;

    .line 105
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mVisibleBgUserIds:Landroid/util/SparseBooleanArray;

    .line 107
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda60;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda60;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    invoke-virtual {p1, v0}, Lcom/android/server/pm/UserManagerInternal;->addUserVisibilityListener(Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;)V

    goto :goto_0

    .line 108
    :cond_1
    iput-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mVisibleBgUserIds:Landroid/util/SparseBooleanArray;

    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/content/pm/PackageManager;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;Lcom/android/server/accessibility/magnification/MagnificationController;Lcom/android/server/accessibility/AccessibilityInputFilter;Lcom/android/server/accessibility/ProxyManager;Landroid/os/PermissionEnforcer;)V
    .locals 3

    .line 1
    invoke-direct {p0, p11}, Landroid/view/accessibility/IAccessibilityManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 2
    new-instance p11, Ljava/lang/Object;

    invoke-direct {p11}, Ljava/lang/Object;-><init>()V

    iput-object p11, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect1:Landroid/graphics/Rect;

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 7
    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    .line 8
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 9
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 10
    new-instance v0, Lcom/android/server/accessibility/UiAutomationManager;

    invoke-direct {v0, p11}, Lcom/android/server/accessibility/UiAutomationManager;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSendWindowStateChangedEventRunnables:Ljava/util/List;

    .line 12
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    const/4 v0, -0x2

    .line 13
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRealCurrentUserId:I

    .line 14
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    .line 15
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yOverlayLayers:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAssistantMenuMsgnr:Landroid/os/Messenger;

    .line 17
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z

    .line 18
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->shouldRecogniseTwoFingerGestures:Z

    const/4 v1, 0x3

    .line 19
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCVDType:I

    const/4 v1, 0x0

    .line 20
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCVDSeverity:F

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCallStack:Ljava/util/ArrayList;

    .line 22
    const-string v1, "aod_show_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAodShowStateUri:Landroid/net/Uri;

    .line 23
    const-string v1, "accessibility_display_inversion_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mColorInversionStateUri:Landroid/net/Uri;

    .line 24
    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSetupCompleteUri:Landroid/net/Uri;

    .line 25
    const-string v1, "accessibility_display_daltonizer_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

    .line 26
    const-string v1, "accessibility_display_daltonizer"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplayDaltonizerUri:Landroid/net/Uri;

    .line 27
    const-string v1, "accessibility_display_daltonizer_saturation_level"

    .line 28
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplayDaltonizerSaturationLevelUri:Landroid/net/Uri;

    .line 29
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 30
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 31
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 32
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->getAccessibilityController()Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    move-result-object v1

    .line 33
    sget-object v2, Lcom/android/server/accessibility/AccessibilityTraceManager;->sInstance:Lcom/android/server/accessibility/AccessibilityTraceManager;

    if-nez v2, :cond_0

    .line 34
    new-instance v2, Lcom/android/server/accessibility/AccessibilityTraceManager;

    invoke-direct {v2, v1, p0, p11}, Lcom/android/server/accessibility/AccessibilityTraceManager;-><init>(Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;)V

    sput-object v2, Lcom/android/server/accessibility/AccessibilityTraceManager;->sInstance:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 35
    :cond_0
    sget-object p11, Lcom/android/server/accessibility/AccessibilityTraceManager;->sInstance:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 36
    iput-object p11, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 37
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 38
    const-class p2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 39
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 40
    iput-object p4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 41
    iput-object p5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    .line 42
    iput-object p6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 43
    iput-object p7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yDisplayListener:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

    .line 44
    iput-object p8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 45
    new-instance p2, Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    invoke-direct {p2, p8}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;-><init>(Lcom/android/server/accessibility/magnification/MagnificationController;)V

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationProcessor:Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    .line 46
    new-instance p2, Lcom/android/server/accessibility/CaptioningManagerImpl;

    invoke-direct {p2, p1}, Lcom/android/server/accessibility/CaptioningManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCaptioningManagerImpl:Lcom/android/server/accessibility/CaptioningManagerImpl;

    .line 47
    iput-object p10, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    if-eqz p9, :cond_1

    .line 48
    iput-object p9, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    const/4 p2, 0x1

    .line 49
    iput-boolean p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 50
    :cond_1
    new-instance p2, Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-direct {p2, p1}, Lcom/android/server/accessibility/FlashNotificationsController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFlashNotificationsController:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 51
    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUmi:Lcom/android/server/pm/UserManagerInternal;

    .line 52
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mVisibleBgUserIds:Landroid/util/SparseBooleanArray;

    .line 53
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->init()V

    return-void
.end method

.method public static isClientInPackageAllowlist(Landroid/accessibilityservice/AccessibilityServiceInfo;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    array-length v2, p1

    .line 18
    :goto_0
    if-ge v0, v2, :cond_2

    .line 19
    .line 20
    aget-object v3, p1, v0

    .line 21
    .line 22
    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    :goto_1
    return v1
.end method


# virtual methods
.method public final OnStartGestureWakeup()Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/accessibility/GestureWakeup;->StartGestureWakeup()Z

    .line 4
    .line 5
    .line 6
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method

.method public final OnStopGestureWakeup()Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/accessibility/GestureWakeup;->StopGestureWakeup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    :goto_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/os/IBinder;Landroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;I)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move/from16 v3, p5

    .line 8
    .line 9
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 10
    .line 11
    const-wide/16 v5, 0x4

    .line 12
    .line 13
    invoke-virtual {v4, v5, v6}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 20
    .line 21
    const-string v7, "AccessibilityManagerService.addAccessibilityInteractionConnection"

    .line 22
    .line 23
    new-instance v8, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string/jumbo v9, "windowToken="

    .line 26
    .line 27
    .line 28
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    move-object/from16 v9, p1

    .line 32
    .line 33
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string/jumbo v10, "leashToken="

    .line 37
    .line 38
    .line 39
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v10, ";connection="

    .line 46
    .line 47
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-object/from16 v10, p3

    .line 51
    .line 52
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v11, "; packageName="

    .line 56
    .line 57
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v11, ";userId="

    .line 64
    .line 65
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-virtual {v4, v7, v5, v6, v8}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    move-object/from16 v9, p1

    .line 80
    .line 81
    move-object/from16 v10, p3

    .line 82
    .line 83
    :goto_0
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_1

    .line 97
    .line 98
    const-string/jumbo v5, "getDisplayIdForWindow"

    .line 99
    .line 100
    .line 101
    new-instance v6, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string/jumbo v7, "token="

    .line 104
    .line 105
    .line 106
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-virtual {v0, v5, v6}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_1
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 120
    .line 121
    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowManagerInternal;->getDisplayIdForWindow(Landroid/os/IBinder;)I

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    .line 126
    .line 127
    monitor-enter v6

    .line 128
    :try_start_0
    iget-object v7, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 129
    .line 130
    invoke-virtual {v7, v3}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    invoke-static {v7, v8}, Landroid/os/UserHandle;->getUid(II)I

    .line 139
    .line 140
    .line 141
    move-result v16

    .line 142
    iget-object v8, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 143
    .line 144
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 149
    .line 150
    .line 151
    move-result v11

    .line 152
    invoke-virtual {v8, v2, v9, v7, v11}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveValidReportedPackageLocked(Ljava/lang/CharSequence;III)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v15

    .line 156
    sget v2, Lcom/android/server/accessibility/AccessibilityWindowManager;->sNextWindowId:I

    .line 157
    .line 158
    add-int/lit8 v8, v2, 0x1

    .line 159
    .line 160
    sput v8, Lcom/android/server/accessibility/AccessibilityWindowManager;->sNextWindowId:I

    .line 161
    .line 162
    iget-object v8, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 163
    .line 164
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    invoke-static/range {p5 .. p5}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->isCallerInteractingAcrossUsers(I)Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    const/4 v8, 0x0

    .line 172
    if-eqz v3, :cond_2

    .line 173
    .line 174
    new-instance v3, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 175
    .line 176
    const/16 v17, -0x1

    .line 177
    .line 178
    move-object v11, v3

    .line 179
    move-object v12, v0

    .line 180
    move v13, v2

    .line 181
    move-object/from16 v14, p3

    .line 182
    .line 183
    invoke-direct/range {v11 .. v17}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;-><init>(Lcom/android/server/accessibility/AccessibilityWindowManager;ILandroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;II)V

    .line 184
    .line 185
    .line 186
    invoke-interface/range {p3 .. p3}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->asBinder()Landroid/os/IBinder;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    invoke-interface {v7, v3, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 191
    .line 192
    .line 193
    iget-object v7, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    .line 194
    .line 195
    invoke-virtual {v7, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    .line 199
    .line 200
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    goto :goto_1

    .line 204
    :catchall_0
    move-exception v0

    .line 205
    goto/16 :goto_2

    .line 206
    .line 207
    :cond_2
    new-instance v3, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 208
    .line 209
    move-object v11, v3

    .line 210
    move-object v12, v0

    .line 211
    move v13, v2

    .line 212
    move-object/from16 v14, p3

    .line 213
    .line 214
    move/from16 v17, v7

    .line 215
    .line 216
    invoke-direct/range {v11 .. v17}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;-><init>(Lcom/android/server/accessibility/AccessibilityWindowManager;ILandroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;II)V

    .line 217
    .line 218
    .line 219
    invoke-interface/range {p3 .. p3}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->asBinder()Landroid/os/IBinder;

    .line 220
    .line 221
    .line 222
    move-result-object v9

    .line 223
    invoke-interface {v9, v3, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v7}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getInteractionConnectionsForUserLocked(I)Landroid/util/SparseArray;

    .line 227
    .line 228
    .line 229
    move-result-object v8

    .line 230
    invoke-virtual {v8, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v7}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    :goto_1
    invoke-virtual {v0, v5}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked(I)Z

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    iget-object v7, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    .line 245
    .line 246
    invoke-virtual {v7, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    if-eqz v3, :cond_4

    .line 251
    .line 252
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-eqz v1, :cond_3

    .line 257
    .line 258
    const-string/jumbo v1, "computeWindowsForAccessibility"

    .line 259
    .line 260
    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    const-string/jumbo v6, "displayId="

    .line 264
    .line 265
    .line 266
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    invoke-virtual {v0, v1, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    :cond_3
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 280
    .line 281
    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerInternal;->computeWindowsForAccessibility(I)V

    .line 282
    .line 283
    .line 284
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    if-eqz v1, :cond_5

    .line 289
    .line 290
    const-string/jumbo v1, "setAccessibilityIdToSurfaceMetadata"

    .line 291
    .line 292
    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    const-string/jumbo v5, "token="

    .line 296
    .line 297
    .line 298
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v5, ";windowId="

    .line 305
    .line 306
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    invoke-virtual {v0, v1, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    :cond_5
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 320
    .line 321
    invoke-virtual {v0, v4, v2}, Lcom/android/server/wm/WindowManagerInternal;->setAccessibilityIdToSurfaceMetadata(Landroid/os/IBinder;I)V

    .line 322
    .line 323
    .line 324
    return v2

    .line 325
    :goto_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    throw v0
.end method

.method public final addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)J
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 2
    .line 3
    const-wide/16 v1, 0x4

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 12
    .line 13
    const-string v3, "AccessibilityManagerService.addClient"

    .line 14
    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v5, "callback="

    .line 18
    .line 19
    .line 20
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v5, ";userId="

    .line 27
    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 45
    .line 46
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 55
    .line 56
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/ProxyManager;->getFirstDeviceIdForUidLocked(I)I

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    new-instance v10, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 65
    .line 66
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    move-object v2, v10

    .line 71
    move-object v3, p0

    .line 72
    move-object v4, p1

    .line 73
    move-object v6, v8

    .line 74
    move v7, v9

    .line 75
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/AccessibilityManagerService$Client;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/IAccessibilityManagerClient;ILcom/android/server/accessibility/AccessibilityUserState;I)V

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-static {p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->isCallerInteractingAcrossUsers(I)Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-eqz p2, :cond_2

    .line 88
    .line 89
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 90
    .line 91
    invoke-virtual {p2, v9}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-eqz p2, :cond_1

    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 98
    .line 99
    invoke-virtual {p0, v9}, Lcom/android/server/accessibility/ProxyManager;->getStateLocked(I)I

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    iget p1, v10, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    .line 104
    .line 105
    invoke-static {p0, p1}, Lcom/android/internal/util/IntPair;->of(II)J

    .line 106
    .line 107
    .line 108
    move-result-wide p0

    .line 109
    monitor-exit v0

    .line 110
    return-wide p0

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    goto :goto_2

    .line 113
    :cond_1
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 114
    .line 115
    invoke-virtual {p2, p1, v10}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 120
    .line 121
    invoke-virtual {p2, v9}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    if-eqz p2, :cond_3

    .line 126
    .line 127
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 128
    .line 129
    invoke-virtual {p0, v9}, Lcom/android/server/accessibility/ProxyManager;->getStateLocked(I)I

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    iget p1, v10, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    .line 134
    .line 135
    invoke-static {p0, p1}, Lcom/android/internal/util/IntPair;->of(II)J

    .line 136
    .line 137
    .line 138
    move-result-wide p0

    .line 139
    monitor-exit v0

    .line 140
    return-wide p0

    .line 141
    :cond_3
    iget-object p2, v8, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 142
    .line 143
    invoke-virtual {p2, p1, v10}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    :goto_0
    iget p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 147
    .line 148
    if-ne v1, p1, :cond_4

    .line 149
    .line 150
    invoke-virtual {p0, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->getClientStateLocked(Lcom/android/server/accessibility/AccessibilityUserState;)I

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    goto :goto_1

    .line 155
    :cond_4
    const/4 p0, 0x0

    .line 156
    :goto_1
    iget p1, v10, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    .line 157
    .line 158
    invoke-static {p0, p1}, Lcom/android/internal/util/IntPair;->of(II)J

    .line 159
    .line 160
    .line 161
    move-result-wide p0

    .line 162
    monitor-exit v0

    .line 163
    return-wide p0

    .line 164
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    throw p0
.end method

.method public final associateEmbeddedHierarchy(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 2
    .line 3
    const-wide/16 v1, 0x4

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 12
    .line 13
    const-string v3, "AccessibilityManagerService.associateEmbeddedHierarchy"

    .line 14
    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v5, "host="

    .line 18
    .line 19
    .line 20
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v5, ";embedded="

    .line 27
    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v0

    .line 44
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    .line 47
    .line 48
    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method

.method public final attachAccessibilityOverlayToDisplay(ILandroid/view/SurfaceControl;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->attachAccessibilityOverlayToDisplay_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 5
    .line 6
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda21;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    const/4 v6, 0x0

    .line 21
    move-object v2, p0

    .line 22
    move-object v5, p2

    .line 23
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final changeCurrentUserForTestAutomationIfNeededLocked(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mVisibleBgUserIds:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    const-string v1, "AccessibilityManagerService"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string/jumbo p1, "changeCurrentUserForTestAutomationIfNeededLocked(%d): ignoring because device doesn\'t support visible background users"

    .line 16
    .line 17
    .line 18
    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mVisibleBgUserIds:Landroid/util/SparseBooleanArray;

    .line 33
    .line 34
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string/jumbo p1, "changeCurrentUserForTestAutomationIfNeededLocked(): cannot change current user to %d as it\'s not visible (mVisibleUsers=%s)"

    .line 39
    .line 40
    .line 41
    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 46
    .line 47
    if-ne v0, p1, :cond_2

    .line 48
    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const-string/jumbo p1, "changeCurrentUserForTestAutomationIfNeededLocked(): NOT changing current user for test automation purposes as it is already %d"

    .line 58
    .line 59
    .line 60
    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string/jumbo v2, "changeCurrentUserForTestAutomationIfNeededLocked(): changing current user from %d to %d for test automation purposes"

    .line 77
    .line 78
    .line 79
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 83
    .line 84
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRealCurrentUserId:I

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->switchUser(I)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final changeMagnificationMode(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getDisplayId()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda6;

    .line 15
    .line 16
    invoke-direct {v1, p2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda6;-><init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationModeLocked(I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eq p2, v2, :cond_1

    .line 34
    .line 35
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationModes:Landroid/util/SparseIntArray;

    .line 36
    .line 37
    invoke-virtual {v2, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationModeChangeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0
.end method

.method public final computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    move v3, v2

    .line 10
    :goto_0
    const/16 v4, 0x20

    .line 11
    .line 12
    const v5, 0x41b83d

    .line 13
    .line 14
    .line 15
    if-ge v2, v0, :cond_2

    .line 16
    .line 17
    iget-object v6, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    check-cast v6, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 24
    .line 25
    iget-object v7, v6, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 26
    .line 27
    invoke-static {v7, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->isClientInPackageAllowlist(Landroid/accessibilityservice/AccessibilityServiceInfo;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)Z

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    if-eqz v7, :cond_1

    .line 32
    .line 33
    iget-boolean v7, v6, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 34
    .line 35
    if-eqz v7, :cond_0

    .line 36
    .line 37
    move v4, v5

    .line 38
    :cond_0
    iget v5, v6, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    .line 39
    .line 40
    or-int/2addr v4, v5

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v4, v1

    .line 43
    :goto_1
    or-int/2addr v3, v4

    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 48
    .line 49
    iget-object v0, p1, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    .line 50
    .line 51
    monitor-enter v0

    .line 52
    :try_start_0
    iget-object p1, p1, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 53
    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    if-nez p1, :cond_3

    .line 56
    .line 57
    const/4 p1, 0x0

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    :goto_2
    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->isClientInPackageAllowlist(Landroid/accessibilityservice/AccessibilityServiceInfo;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_6

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 70
    .line 71
    iget-object p1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    .line 72
    .line 73
    monitor-enter p1

    .line 74
    :try_start_1
    iget-object p0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 75
    .line 76
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    if-nez p0, :cond_4

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_4
    iget-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 81
    .line 82
    if-eqz p1, :cond_5

    .line 83
    .line 84
    move v4, v5

    .line 85
    :cond_5
    iget p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    .line 86
    .line 87
    or-int v1, v4, p0

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    throw p0

    .line 93
    :cond_6
    :goto_3
    or-int p0, v3, v1

    .line 94
    .line 95
    return p0

    .line 96
    :catchall_1
    move-exception p0

    .line 97
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 98
    throw p0
.end method

.method public final convertPixelToDpi(F)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 12
    .line 13
    int-to-float p0, p0

    .line 14
    const/high16 v0, 0x43200000    # 160.0f

    .line 15
    .line 16
    div-float/2addr p0, v0

    .line 17
    div-float/2addr p1, p0

    .line 18
    float-to-int p0, p1

    .line 19
    return p0
.end method

.method public final disableAccessibilityMenuToMigrateIfNeeded()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 5
    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getAccessibilityMenuComponentToMigrate(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const/4 v1, 0x2

    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p0
.end method

.method public final disableAccessibilityServiceLocked(ILandroid/content/ComponentName;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 9
    .line 10
    const-string/jumbo v1, "enabled_accessibility_services"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 17
    .line 18
    check-cast v0, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 24
    .line 25
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(ILjava/lang/String;Ljava/util/Set;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 33
    .line 34
    check-cast v0, Ljava/util/HashSet;

    .line 35
    .line 36
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    const/4 p2, 0x0

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public final disassociateEmbeddedHierarchy(Landroid/os/IBinder;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 2
    .line 3
    const-wide/16 v1, 0x4

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 12
    .line 13
    const-string v3, "AccessibilityManagerService.disassociateEmbeddedHierarchy"

    .line 14
    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v5, "token="

    .line 18
    .line 19
    .line 20
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->disassociateLocked(Landroid/os/IBinder;)V

    .line 39
    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final dispatchAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getDisplayId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDisplay(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getDisplayId()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    sget-boolean v1, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "Send proxy event "

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, " for display id "

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getDisplayId()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string v2, "ProxyManager"

    .line 60
    .line 61
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 70
    .line 71
    .line 72
    const/4 v0, 0x1

    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 79
    .line 80
    if-eqz p0, :cond_3

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "AccessibilityManagerService"

    .line 4
    .line 5
    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    const-string v1, "ACCESSIBILITY MANAGER (dumpsys accessibility)"

    .line 16
    .line 17
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 21
    .line 22
    .line 23
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 24
    .line 25
    const-string/jumbo v2, "eng"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x0

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    const-string/jumbo v2, "userdebug"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    :cond_1
    const-string/jumbo v1, "print-accessibilitywindowinfo"

    .line 45
    .line 46
    .line 47
    invoke-static {v1, p3}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->hasMatchedArgument(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_d

    .line 52
    .line 53
    const-string/jumbo v1, "print-accessibilitynodeinfo"

    .line 54
    .line 55
    .line 56
    invoke-static {v1, p3}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->hasMatchedArgument(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    goto/16 :goto_5

    .line 63
    .line 64
    :cond_2
    const-string/jumbo v1, "currentUserId="

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 72
    .line 73
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 78
    .line 79
    .line 80
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRealCurrentUserId:I

    .line 81
    .line 82
    const/4 v2, -0x2

    .line 83
    if-eq v1, v2, :cond_3

    .line 84
    .line 85
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 86
    .line 87
    if-eq v2, v1, :cond_3

    .line 88
    .line 89
    const-string v1, " (set for UiAutomation purposes; \"real\" current user is "

    .line 90
    .line 91
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRealCurrentUserId:I

    .line 96
    .line 97
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const-string v2, ")"

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    goto/16 :goto_8

    .line 113
    .line 114
    :cond_3
    :goto_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mVisibleBgUserIds:Landroid/util/SparseBooleanArray;

    .line 118
    .line 119
    if-eqz v1, :cond_4

    .line 120
    .line 121
    const-string/jumbo v1, "visibleBgUserIds="

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mVisibleBgUserIds:Landroid/util/SparseBooleanArray;

    .line 129
    .line 130
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 138
    .line 139
    .line 140
    :cond_4
    const-string/jumbo v1, "hasMagnificationConnection="

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isConnected()Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 163
    .line 164
    .line 165
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationProcessor:Lcom/android/server/accessibility/magnification/MagnificationProcessor;

    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v1, p2, v2}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->dump(Ljava/io/PrintWriter;Ljava/util/ArrayList;)V

    .line 172
    .line 173
    .line 174
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 175
    .line 176
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    move v2, v3

    .line 181
    :goto_1
    if-ge v2, v1, :cond_8

    .line 182
    .line 183
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 184
    .line 185
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    check-cast v4, Lcom/android/server/accessibility/AccessibilityUserState;

    .line 190
    .line 191
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityUserState;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    const-string v4, "  AccessibilityInputFilter:{"

    .line 195
    .line 196
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 197
    .line 198
    .line 199
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 200
    .line 201
    if-eqz v4, :cond_5

    .line 202
    .line 203
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    :cond_5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 207
    .line 208
    .line 209
    const-string v4, "  }]"

    .line 210
    .line 211
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 215
    .line 216
    .line 217
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCallStack:Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    if-lez v4, :cond_7

    .line 224
    .line 225
    const-string v4, "**** CallStack History ****\n"

    .line 226
    .line 227
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 228
    .line 229
    .line 230
    move v4, v3

    .line 231
    :goto_2
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCallStack:Ljava/util/ArrayList;

    .line 232
    .line 233
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    if-ge v4, v5, :cond_6

    .line 238
    .line 239
    new-instance v5, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    const-string/jumbo v6, "history ["

    .line 245
    .line 246
    .line 247
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v6, "] : \n"

    .line 254
    .line 255
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCallStack:Ljava/util/ArrayList;

    .line 259
    .line 260
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    check-cast v6, Ljava/lang/String;

    .line 265
    .line 266
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 274
    .line 275
    .line 276
    add-int/lit8 v4, v4, 0x1

    .line 277
    .line 278
    goto :goto_2

    .line 279
    :cond_6
    const-string v4, "**** End of CallStack History ****\n"

    .line 280
    .line 281
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 282
    .line 283
    .line 284
    :cond_7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 285
    .line 286
    .line 287
    add-int/lit8 v2, v2, 0x1

    .line 288
    .line 289
    goto :goto_1

    .line 290
    :cond_8
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 291
    .line 292
    iget-object v2, v1, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 293
    .line 294
    if-nez v2, :cond_9

    .line 295
    .line 296
    iget v2, v1, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationFlags:I

    .line 297
    .line 298
    and-int/lit8 v2, v2, 0x2

    .line 299
    .line 300
    if-nez v2, :cond_9

    .line 301
    .line 302
    goto :goto_3

    .line 303
    :cond_9
    iget-object v2, v1, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    .line 304
    .line 305
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :try_start_1
    iget-object v1, v1, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 307
    .line 308
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 309
    if-eqz v1, :cond_a

    .line 310
    .line 311
    :try_start_2
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    :cond_a
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 315
    .line 316
    .line 317
    :goto_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 318
    .line 319
    invoke-virtual {v1, p2, p3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 323
    .line 324
    if-eqz v1, :cond_b

    .line 325
    .line 326
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 327
    .line 328
    if-eqz v1, :cond_b

    .line 329
    .line 330
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    :cond_b
    const-string v1, "Global client list info:{"

    .line 334
    .line 335
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 339
    .line 340
    const-string v2, "    Client list "

    .line 341
    .line 342
    invoke-virtual {v1, p2, v2}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    const-string v1, "    Registered clients:{"

    .line 346
    .line 347
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    :goto_4
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 351
    .line 352
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    if-ge v3, v1, :cond_c

    .line 357
    .line 358
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 359
    .line 360
    invoke-virtual {v1, v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 365
    .line 366
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    .line 367
    .line 368
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 373
    .line 374
    .line 375
    add-int/lit8 v3, v3, 0x1

    .line 376
    .line 377
    goto :goto_4

    .line 378
    :cond_c
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 379
    .line 380
    .line 381
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 382
    .line 383
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/accessibility/ProxyManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yDisplayListener:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

    .line 387
    .line 388
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->dump(Ljava/io/PrintWriter;)V

    .line 389
    .line 390
    .line 391
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 392
    return-void

    .line 393
    :catchall_1
    move-exception p0

    .line 394
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 395
    :try_start_4
    throw p0

    .line 396
    :cond_d
    :goto_5
    const-string/jumbo p1, "print-accessibilitywindowinfo"

    .line 397
    .line 398
    .line 399
    invoke-static {p1, p3}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->hasMatchedArgument(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 400
    .line 401
    .line 402
    move-result p1

    .line 403
    if-eqz p1, :cond_e

    .line 404
    .line 405
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 406
    .line 407
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    goto :goto_7

    .line 411
    :cond_e
    const-string/jumbo p1, "print-accessibilitynodeinfo"

    .line 412
    .line 413
    .line 414
    invoke-static {p1, p3}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->hasMatchedArgument(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 415
    .line 416
    .line 417
    move-result p1

    .line 418
    if-eqz p1, :cond_12

    .line 419
    .line 420
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getInteractionBridge()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    .line 421
    .line 422
    .line 423
    move-result-object p1

    .line 424
    if-nez p1, :cond_f

    .line 425
    .line 426
    const-string p0, "There are no enabled AccessibilityService"

    .line 427
    .line 428
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    goto :goto_7

    .line 432
    :cond_f
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 433
    .line 434
    iget p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mConnectionId:I

    .line 435
    .line 436
    const/4 v1, 0x5

    .line 437
    new-array v1, v1, [Ljava/lang/String;

    .line 438
    .line 439
    array-length v2, p3

    .line 440
    const/4 v4, 0x4

    .line 441
    if-ge v2, v4, :cond_10

    .line 442
    .line 443
    array-length v2, p3

    .line 444
    goto :goto_6

    .line 445
    :cond_10
    move v2, v4

    .line 446
    :goto_6
    if-ge v3, v2, :cond_11

    .line 447
    .line 448
    aget-object v5, p3, v3

    .line 449
    .line 450
    aput-object v5, v1, v3

    .line 451
    .line 452
    add-int/lit8 v3, v3, 0x1

    .line 453
    .line 454
    goto :goto_6

    .line 455
    :cond_11
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object p1

    .line 459
    aput-object p1, v1, v4

    .line 460
    .line 461
    invoke-virtual {p0, p2, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    :cond_12
    :goto_7
    monitor-exit v0

    .line 465
    return-void

    .line 466
    :goto_8
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 467
    throw p0
.end method

.method public final enableAccessibilityServiceLocked(ILandroid/content/ComponentName;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 9
    .line 10
    const-string/jumbo v1, "enabled_accessibility_services"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 17
    .line 18
    check-cast v0, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 24
    .line 25
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(ILjava/lang/String;Ljava/util/Set;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 33
    .line 34
    check-cast v0, Ljava/util/HashSet;

    .line 35
    .line 36
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    const/4 p2, 0x0

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public final enableShortcutForTargets(Ljava/util/List;IZI)V
    .locals 11

    .line 1
    invoke-static {p2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->convertToKey(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    const/4 v0, 0x4

    .line 6
    if-eq p2, v0, :cond_b

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    if-ne p2, v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_5

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0, p4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getA11yFeatureToTileMapInternal(I)Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v6

    .line 21
    :try_start_0
    invoke-virtual {p0, p4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v2, p2, p4}, Lcom/android/internal/accessibility/util/ShortcutUtils;->getShortcutTargetsFromSettings(Landroid/content/Context;II)Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 32
    .line 33
    invoke-direct {v2, v8}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 34
    .line 35
    .line 36
    if-eqz p3, :cond_1

    .line 37
    .line 38
    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    :cond_1
    invoke-interface {v2, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 46
    .line 47
    .line 48
    :goto_0
    const/16 v9, 0x10

    .line 49
    .line 50
    if-ne p2, v9, :cond_2

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda17;

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    invoke-direct {v3, v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda17;-><init>(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {}, Ljava/util/stream/Collectors;->toUnmodifiableList()Ljava/util/stream/Collector;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Ljava/util/List;

    .line 75
    .line 76
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 77
    .line 78
    invoke-direct {v2, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    move-object v10, v2

    .line 82
    invoke-interface {v8, v10}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    monitor-exit v6

    .line 89
    return-void

    .line 90
    :cond_3
    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 91
    .line 92
    const/4 v0, 0x0

    .line 93
    invoke-direct {v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 94
    .line 95
    .line 96
    const-string v5, ""

    .line 97
    .line 98
    move-object v0, p0

    .line 99
    move v2, p4

    .line 100
    move-object v3, v10

    .line 101
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    if-ne p2, v9, :cond_6

    .line 105
    .line 106
    invoke-interface {v8}, Ljava/util/Set;->size()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    invoke-interface {v10}, Ljava/util/Set;->size()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    sub-int/2addr v0, v1

    .line 115
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-gtz v0, :cond_4

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_4
    if-eqz p3, :cond_5

    .line 123
    .line 124
    const-string v1, "accessibility.value_qs_shortcut_add"

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_5
    const-string v1, "accessibility.value_qs_shortcut_remove"

    .line 128
    .line 129
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    int-to-long v3, v0

    .line 134
    invoke-static {v1, v2, v3, v4}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;IJ)V

    .line 135
    .line 136
    .line 137
    :goto_2
    invoke-virtual {v7, v10}, Lcom/android/server/accessibility/AccessibilityUserState;->updateA11yQsTargetLocked(Ljava/util/Set;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 141
    .line 142
    .line 143
    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, v7, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 145
    .line 146
    .line 147
    :cond_6
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 149
    .line 150
    .line 151
    move-result-wide v0

    .line 152
    :try_start_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 153
    .line 154
    new-instance v3, Landroid/util/ArraySet;

    .line 155
    .line 156
    invoke-direct {v3, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 157
    .line 158
    .line 159
    invoke-static {v2, v3, p4}, Lcom/android/internal/accessibility/util/ShortcutUtils;->updateInvisibleToggleAccessibilityServiceEnableState(Landroid/content/Context;Ljava/util/Set;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 160
    .line 161
    .line 162
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 163
    .line 164
    .line 165
    if-ne p2, v9, :cond_7

    .line 166
    .line 167
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 168
    .line 169
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda14;

    .line 170
    .line 171
    const/4 v2, 0x1

    .line 172
    invoke-direct {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda14;-><init>(I)V

    .line 173
    .line 174
    .line 175
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-static {v1, p0, v10, v8, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    .line 185
    .line 186
    :cond_7
    if-nez p3, :cond_8

    .line 187
    .line 188
    return-void

    .line 189
    :cond_8
    const/4 p3, 0x2

    .line 190
    const/4 v0, 0x1

    .line 191
    if-ne p2, p3, :cond_9

    .line 192
    .line 193
    const-string/jumbo p1, "skip_accessibility_shortcut_dialog_timeout_restriction"

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, p4, v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistIntToSetting(IILjava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-static {}, Lcom/android/server/accessibility/Flags;->enableHardwareShortcutDisablesWarning()Z

    .line 200
    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_9
    if-ne p2, v0, :cond_a

    .line 204
    .line 205
    const-string/jumbo p2, "com.android.server.accessibility.MagnificationController"

    .line 206
    .line 207
    .line 208
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    if-eqz p1, :cond_a

    .line 213
    .line 214
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 215
    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    const-string p2, "accessibility_floating_menu_size"

    .line 221
    .line 222
    const/4 p3, -0x1

    .line 223
    invoke-static {p1, p2, p3, p4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    if-ne p1, p3, :cond_a

    .line 228
    .line 229
    const-string p1, "accessibility_floating_menu_size"

    .line 230
    .line 231
    invoke-virtual {p0, p4, v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistIntToSetting(IILjava/lang/String;)V

    .line 232
    .line 233
    .line 234
    :cond_a
    :goto_3
    return-void

    .line 235
    :catchall_1
    move-exception p0

    .line 236
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 237
    .line 238
    .line 239
    throw p0

    .line 240
    :goto_4
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    throw p0

    .line 242
    :cond_b
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 247
    .line 248
    .line 249
    move-result p2

    .line 250
    if-eqz p2, :cond_d

    .line 251
    .line 252
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object p2

    .line 256
    check-cast p2, Ljava/lang/String;

    .line 257
    .line 258
    const-string/jumbo v0, "com.android.server.accessibility.MagnificationController"

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-eqz v0, :cond_c

    .line 266
    .line 267
    invoke-virtual {p0, p4, p3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistIntToSetting(IILjava/lang/String;)V

    .line 268
    .line 269
    .line 270
    goto :goto_6

    .line 271
    :cond_c
    const-string v0, "AccessibilityManagerService"

    .line 272
    .line 273
    const-string v2, "Triple tap or two-fingers double-tap is not supported for "

    .line 274
    .line 275
    invoke-static {v2, p2, v0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    goto :goto_6

    .line 279
    :cond_d
    return-void
.end method

.method public final enableShortcutsForTargets(ZILjava/util/List;I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->enableShortcutsForTargets_enforcePermission()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/internal/accessibility/common/ShortcutConstants;->USER_SHORTCUT_TYPES:[I

    .line 5
    .line 6
    array-length v1, v0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    aget v3, v0, v2

    .line 11
    .line 12
    and-int v4, p2, v3

    .line 13
    .line 14
    if-ne v4, v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p3, v3, p1, p4}, Lcom/android/server/accessibility/AccessibilityManagerService;->enableShortcutForTargets(Ljava/util/List;IZI)V

    .line 17
    .line 18
    .line 19
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return-void
.end method

.method public final fallBackMagnificationModeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)Z
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationModeLocked(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mSupportWindowMagnification:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCapabilities:I

    .line 14
    .line 15
    and-int/2addr v0, v1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    const-string/jumbo v0, "displayId "

    .line 21
    .line 22
    .line 23
    const-string v1, ", invalid magnification mode:"

    .line 24
    .line 25
    invoke-static {p2, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationModeLocked(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "AccessibilityManagerService"

    .line 41
    .line 42
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCapabilities:I

    .line 46
    .line 47
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationModes:Landroid/util/SparseIntArray;

    .line 48
    .line 49
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getDisplayId()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-ne p2, p1, :cond_2

    .line 57
    .line 58
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    new-instance p2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda6;

    .line 63
    .line 64
    invoke-direct {p2, v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda6;-><init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    .line 69
    .line 70
    :cond_2
    const/4 p0, 0x1

    .line 71
    return p0
.end method

.method public final getA11yFeatureToTileMap(I)Landroid/os/Bundle;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getA11yFeatureToTileMap_enforcePermission()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getA11yFeatureToTileMapInternal(I)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Ljava/util/Map$Entry;

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroid/content/ComponentName;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroid/os/Parcelable;

    .line 50
    .line 51
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    return-object v0
.end method

.method public final getA11yFeatureToTileMapInternal(I)Ljava/util/Map;
    .locals 7

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 10
    .line 11
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityUserState;->getA11yFeatureToTileService()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    sget v2, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    if-eq v1, v2, :cond_0

    .line 32
    .line 33
    move v1, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    .line 41
    .line 42
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 47
    .line 48
    check-cast p0, Landroid/util/ArrayMap;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_2

    .line 63
    .line 64
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    check-cast v5, Ljava/util/Map$Entry;

    .line 69
    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    check-cast v6, Landroid/content/ComponentName;

    .line 77
    .line 78
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v4, v2, p1, v6, v3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-eqz v6, :cond_1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    check-cast v6, Landroid/content/ComponentName;

    .line 94
    .line 95
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    check-cast v5, Landroid/content/ComponentName;

    .line 100
    .line 101
    invoke-virtual {v0, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    sget-object p0, Lcom/android/internal/accessibility/common/ShortcutConstants;->A11Y_FEATURE_TO_FRAMEWORK_TILE:Ljava/util/Map;

    .line 106
    .line 107
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 108
    .line 109
    .line 110
    return-object v0

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    throw p0
.end method

.method public final getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getInteractionBridge()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusNotLocked()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v2

    .line 19
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 20
    .line 21
    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Landroid/graphics/Point;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 37
    .line 38
    .line 39
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    invoke-virtual {v5, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 50
    .line 51
    if-eqz v6, :cond_1

    .line 52
    .line 53
    new-instance v6, Landroid/view/MagnificationSpec;

    .line 54
    .line 55
    invoke-direct {v6}, Landroid/view/MagnificationSpec;-><init>()V

    .line 56
    .line 57
    .line 58
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v5, Landroid/view/MagnificationSpec;

    .line 61
    .line 62
    invoke-virtual {v6, v5}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :cond_1
    const/4 v6, 0x0

    .line 70
    :goto_0
    if-eqz v6, :cond_2

    .line 71
    .line 72
    invoke-virtual {v6}, Landroid/view/MagnificationSpec;->isNop()Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-nez v5, :cond_2

    .line 77
    .line 78
    iget v5, v6, Landroid/view/MagnificationSpec;->offsetX:F

    .line 79
    .line 80
    neg-float v5, v5

    .line 81
    float-to-int v5, v5

    .line 82
    iget v7, v6, Landroid/view/MagnificationSpec;->offsetY:F

    .line 83
    .line 84
    neg-float v7, v7

    .line 85
    float-to-int v7, v7

    .line 86
    invoke-virtual {v3, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 87
    .line 88
    .line 89
    iget v5, v6, Landroid/view/MagnificationSpec;->scale:F

    .line 90
    .line 91
    const/high16 v6, 0x3f800000    # 1.0f

    .line 92
    .line 93
    div-float/2addr v6, v5

    .line 94
    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->scale(F)V

    .line 95
    .line 96
    .line 97
    :cond_2
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 98
    .line 99
    iget-object v5, v5, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect1:Landroid/graphics/Rect;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindow()Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    if-eqz v6, :cond_3

    .line 106
    .line 107
    invoke-virtual {v6, v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 108
    .line 109
    .line 110
    :cond_3
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    iget-object v7, v6, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 117
    .line 118
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :try_start_1
    iget v8, v6, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 120
    .line 121
    invoke-virtual {v6, v0, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowToken(II)Landroid/os/IBinder;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 126
    :try_start_2
    iget-object v6, v6, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 127
    .line 128
    invoke-virtual {v6, v8}, Lcom/android/server/wm/WindowManagerInternal;->isEmbeddedWindowType(Landroid/os/IBinder;)Z

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    if-eqz v6, :cond_4

    .line 133
    .line 134
    const-string v7, "AccessibilityManagerService"

    .line 135
    .line 136
    const-string/jumbo v8, "skip checking window bound for "

    .line 137
    .line 138
    .line 139
    invoke-static {v0, v8, v7}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_4
    if-nez v6, :cond_5

    .line 143
    .line 144
    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-nez v0, :cond_5

    .line 149
    .line 150
    monitor-exit v2

    .line 151
    goto :goto_1

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 153
    .line 154
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    .line 155
    .line 156
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->mDefaultDisplay:Landroid/view/Display;

    .line 157
    .line 158
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 159
    .line 160
    .line 161
    iget p0, v0, Landroid/graphics/Point;->x:I

    .line 162
    .line 163
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 164
    .line 165
    invoke-virtual {v3, v1, v1, p0, v0}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    if-nez p0, :cond_6

    .line 170
    .line 171
    monitor-exit v2

    .line 172
    goto :goto_1

    .line 173
    :cond_6
    iget p0, v4, Landroid/graphics/Point;->x:I

    .line 174
    .line 175
    iget v0, v4, Landroid/graphics/Point;->y:I

    .line 176
    .line 177
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Point;->set(II)V

    .line 178
    .line 179
    .line 180
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    const/4 v1, 0x1

    .line 182
    :goto_1
    return v1

    .line 183
    :catchall_1
    move-exception p0

    .line 184
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 185
    :try_start_4
    throw p0

    .line 186
    :goto_2
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 187
    throw p0
.end method

.method public final getAccessibilityShortcutTargets(I)Ljava/util/List;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getAccessibilityShortcutTargets_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 5
    .line 6
    const-wide/16 v1, 0x4

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 15
    .line 16
    const-string/jumbo v3, "shortcutType="

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const-string v4, "AccessibilityManagerService.getAccessibilityShortcutTargets"

    .line 24
    .line 25
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityShortcutTargetsInternal(I)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final getAccessibilityShortcutTargetsInternal(I)Ljava/util/List;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Ljava/util/LinkedHashSet;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-eq p1, v2, :cond_0

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-object v1

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    sub-int/2addr p1, v2

    .line 33
    :goto_0
    if-ltz p1, :cond_3

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 42
    .line 43
    iget-boolean v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    .line 44
    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    iget-object v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 54
    .line 55
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 56
    .line 57
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 58
    .line 59
    const/16 v4, 0x1d

    .line 60
    .line 61
    if-le v3, v4, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    iget-object v2, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    .line 65
    .line 66
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-nez v3, :cond_2

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_1
    add-int/lit8 p1, p1, -0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    monitor-exit v0

    .line 83
    return-object v1

    .line 84
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    throw p0
.end method

.method public final getAccessibilityTargetLabel(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getTargets(Landroid/content/Context;I)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 p1, 0x0

    .line 8
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ge p1, v0, :cond_1

    .line 13
    .line 14
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const-string p0, ""

    .line 49
    .line 50
    return-object p0
.end method

.method public final getAccessibilityWindowId(Landroid/os/IBinder;)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 2
    .line 3
    const-wide/16 v1, 0x4

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 12
    .line 13
    const-string v3, "AccessibilityManagerService.getAccessibilityWindowId"

    .line 14
    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v5, "windowToken="

    .line 18
    .line 19
    .line 20
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/16 v2, 0x3e8

    .line 45
    .line 46
    if-ne v1, v2, :cond_1

    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 49
    .line 50
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 51
    .line 52
    invoke-virtual {v1, p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    monitor-exit v0

    .line 57
    return p0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 61
    .line 62
    const-string p1, "Only SYSTEM can call getAccessibilityWindowId"

    .line 63
    .line 64
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0
.end method

.method public final getClientStateLocked(Lcom/android/server/accessibility/AccessibilityUserState;)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->getTraceStateForAccessibilityManagerClientState()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isHandlingAccessibilityEventsLocked()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v2, v1

    .line 28
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 29
    .line 30
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    .line 31
    .line 32
    if-nez v0, :cond_4

    .line 33
    .line 34
    :cond_3
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    :goto_2
    if-ge v1, v3, :cond_6

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 47
    .line 48
    iget-object v4, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    .line 49
    .line 50
    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const-string/jumbo v5, "com.samsung.android.app.a11yhelper"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_5

    .line 62
    .line 63
    :cond_4
    or-int/lit8 v2, v2, 0x1a

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_6
    :goto_3
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTextHighContrastEnabled:Z

    .line 70
    .line 71
    if-eqz v0, :cond_7

    .line 72
    .line 73
    or-int/lit8 v2, v2, 0x4

    .line 74
    .line 75
    :cond_7
    iget-boolean p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAudioDescriptionByDefaultRequested:Z

    .line 76
    .line 77
    if-eqz p1, :cond_8

    .line 78
    .line 79
    or-int/lit16 v2, v2, 0x1000

    .line 80
    .line 81
    :cond_8
    or-int/2addr p0, v2

    .line 82
    return p0
.end method

.method public final getCurrentUserState()Lcom/android/server/accessibility/AccessibilityUserState;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    monitor-exit v0

    .line 11
    return-object p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final getDisplayId()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isFoldedLargeCoverScreen()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isDexDualMonitorDisplay(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x2

    .line 18
    return p0

    .line 19
    :cond_1
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final getEnabledAccessibilityServiceList(II)Ljava/util/List;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 2
    .line 3
    const-wide/16 v1, 0x4

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 12
    .line 13
    const-string v3, "AccessibilityManagerService.getEnabledAccessibilityServiceList"

    .line 14
    .line 15
    const-string/jumbo v4, "feedbackType="

    .line 16
    .line 17
    .line 18
    const-string v5, ";userId="

    .line 19
    .line 20
    invoke-static {p1, p2, v4, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/ProxyManager;->getFirstDeviceIdForUidLocked(I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 49
    .line 50
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/ProxyManager;->getInstalledAndEnabledServiceInfosLocked(II)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    monitor-exit v0

    .line 55
    return-object p0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 59
    .line 60
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/android/server/accessibility/UiAutomationManager;->suppressingAccessibilityServicesLocked()Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-eqz p0, :cond_2

    .line 75
    .line 76
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    monitor-exit v0

    .line 81
    return-object p0

    .line 82
    :cond_2
    iget-object p0, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    :goto_0
    if-ge v2, p2, :cond_5

    .line 95
    .line 96
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 101
    .line 102
    iget v4, v3, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    .line 103
    .line 104
    and-int/2addr v4, p1

    .line 105
    if-nez v4, :cond_3

    .line 106
    .line 107
    const/4 v4, -0x1

    .line 108
    if-ne p1, v4, :cond_4

    .line 109
    .line 110
    :cond_3
    iget-object v3, v3, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 111
    .line 112
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_5
    monitor-exit v0

    .line 119
    return-object v1

    .line 120
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    throw p0
.end method

.method public final getFocusColor()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 2
    .line 3
    const-wide/16 v1, 0x4

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 12
    .line 13
    const-string v3, "AccessibilityManagerService.getFocusColor"

    .line 14
    .line 15
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 22
    .line 23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/ProxyManager;->getFirstDeviceIdForUidLocked(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/ProxyManager;->getFirstProxyForDeviceIdLocked(I)Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    iget p0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mFocusColor:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 p0, 0x0

    .line 51
    :goto_0
    monitor-exit v0

    .line 52
    return p0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusColor:I

    .line 62
    .line 63
    monitor-exit v0

    .line 64
    return p0

    .line 65
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0
.end method

.method public final getFocusStrokeWidth()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 2
    .line 3
    const-wide/16 v1, 0x4

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 12
    .line 13
    const-string v3, "AccessibilityManagerService.getFocusStrokeWidth"

    .line 14
    .line 15
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 22
    .line 23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/ProxyManager;->getFirstDeviceIdForUidLocked(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/ProxyManager;->getFirstProxyForDeviceIdLocked(I)Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    iget p0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mFocusStrokeWidth:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 p0, 0x0

    .line 51
    :goto_0
    monitor-exit v0

    .line 52
    return p0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusStrokeWidth:I

    .line 62
    .line 63
    monitor-exit v0

    .line 64
    return p0

    .line 65
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0
.end method

.method public final getInstalledAccessibilityServiceList(I)Landroid/content/pm/ParceledListSlice;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 2
    .line 3
    const-wide/16 v1, 0x4

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 12
    .line 13
    const-string v3, "AccessibilityManagerService.getInstalledAccessibilityServiceList"

    .line 14
    .line 15
    const-string/jumbo v4, "userId="

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 29
    .line 30
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/ProxyManager;->getFirstDeviceIdForUidLocked(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 49
    .line 50
    const/4 v2, -0x1

    .line 51
    invoke-virtual {p0, v2, v1}, Lcom/android/server/accessibility/ProxyManager;->getInstalledAndEnabledServiceInfosLocked(II)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-direct {p1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 56
    .line 57
    .line 58
    monitor-exit v0

    .line 59
    return-object p1

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 63
    .line 64
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 77
    .line 78
    .line 79
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    sget v0, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    .line 85
    .line 86
    if-ne p0, v0, :cond_2

    .line 87
    .line 88
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 89
    .line 90
    invoke-direct {p0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 91
    .line 92
    .line 93
    return-object p0

    .line 94
    :cond_2
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    .line 95
    .line 96
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 101
    .line 102
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    const/4 v3, 0x1

    .line 111
    sub-int/2addr v2, v3

    .line 112
    :goto_0
    if-ltz v2, :cond_4

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 119
    .line 120
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {p0, v0, p1, v4, v3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-eqz v4, :cond_3

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_4
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 141
    .line 142
    invoke-direct {p0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 143
    .line 144
    .line 145
    return-object p0

    .line 146
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    throw p0
.end method

.method public final getInteractionBridge()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mKeyEventDispatcher:Lcom/android/server/accessibility/KeyEventDispatcher;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/accessibility/KeyEventDispatcher;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accessibility/KeyEventDispatcher;-><init>(Landroid/os/Handler;Ljava/lang/Object;Landroid/os/PowerManager;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mKeyEventDispatcher:Lcom/android/server/accessibility/KeyEventDispatcher;

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mKeyEventDispatcher:Lcom/android/server/accessibility/KeyEventDispatcher;

    .line 19
    .line 20
    return-object p0
.end method

.method public getLock()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    monitor-exit v0

    .line 11
    return-object p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public getPackageMonitor()Lcom/android/internal/content/PackageMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRecommendedTimeoutMillis()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 2
    .line 3
    const-wide/16 v1, 0x4

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 12
    .line 13
    const-string v3, "AccessibilityManagerService.getRecommendedTimeoutMillis"

    .line 14
    .line 15
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 22
    .line 23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/ProxyManager;->getFirstDeviceIdForUidLocked(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/ProxyManager;->getRecommendedTimeoutMillisLocked(I)J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    monitor-exit v0

    .line 46
    return-wide v1

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInteractiveUiTimeout:I

    .line 56
    .line 57
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mNonInteractiveUiTimeout:I

    .line 58
    .line 59
    invoke-static {v1, p0}, Lcom/android/internal/util/IntPair;->of(II)J

    .line 60
    .line 61
    .line 62
    move-result-wide v1

    .line 63
    monitor-exit v0

    .line 64
    return-wide v1

    .line 65
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0
.end method

.method public final getScreenReaderName()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, ""

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-ge v2, v3, :cond_2

    .line 24
    .line 25
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->isScreenReaderEnabled()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_1

    .line 44
    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    const-string/jumbo v5, "com.samsung.accessibility/com.samsung.android.app.talkback.TalkBackService"

    .line 48
    .line 49
    .line 50
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-nez v5, :cond_0

    .line 59
    .line 60
    const-string/jumbo v5, "com.google.android.marvin.talkback/.TalkBackService"

    .line 61
    .line 62
    .line 63
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-nez v5, :cond_0

    .line 72
    .line 73
    const-string/jumbo v5, "com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"

    .line 74
    .line 75
    .line 76
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_1

    .line 85
    .line 86
    :cond_0
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 91
    .line 92
    invoke-virtual {v1, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    const-string/jumbo p0, "getScreenReaderName : "

    .line 104
    .line 105
    .line 106
    const-string v0, "AccessibilityManagerService"

    .line 107
    .line 108
    invoke-static {p0, v1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-object v1
.end method

.method public final getSystemActionPerformer()Lcom/android/server/accessibility/SystemActionPerformer;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/accessibility/SystemActionPerformer;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    move-object v1, v0

    .line 13
    move-object v5, p0

    .line 14
    move-object v6, p0

    .line 15
    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/SystemActionPerformer;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Ljava/util/function/Supplier;Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;Lcom/android/server/accessibility/SystemActionPerformer$DisplayUpdateCallBack;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    .line 21
    .line 22
    return-object p0
.end method

.method public final getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/accessibility/AccessibilityUserState;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/accessibility/AccessibilityUserState;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-direct {v0, p1, v1, p0}, Lcom/android/server/accessibility/AccessibilityUserState;-><init>(ILandroid/content/Context;Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-object v0
.end method

.method public final getValidDisplayList()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yDisplayListener:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->mDisplaysList:Ljava/util/ArrayList;

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-object p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final getWindowToken(II)Landroid/os/IBinder;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getWindowToken_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 5
    .line 6
    const-wide/16 v1, 0x4

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 15
    .line 16
    const-string v3, "AccessibilityManagerService.getWindowToken"

    .line 17
    .line 18
    const-string/jumbo v4, "windowId="

    .line 19
    .line 20
    .line 21
    const-string v5, ";userId="

    .line 22
    .line 23
    invoke-static {p1, p2, v4, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 34
    .line 35
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    if-eq v1, v2, :cond_1

    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-object v3

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 49
    .line 50
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    monitor-exit v0

    .line 57
    return-object v3

    .line 58
    :cond_2
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokenForUserAndWindowIdLocked(II)Landroid/os/IBinder;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    monitor-exit v0

    .line 69
    return-object p0

    .line 70
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw p0
.end method

.method public final getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveParentWindowIdLocked(I)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayWindowObserverByWindowIdLocked(I)Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/view/WindowInfo;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    new-instance p0, Landroid/view/MagnificationSpec;

    .line 30
    .line 31
    invoke-direct {p0}, Landroid/view/MagnificationSpec;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object p1, v1, Landroid/view/WindowInfo;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 37
    .line 38
    .line 39
    new-instance p1, Landroid/util/Pair;

    .line 40
    .line 41
    iget-object v0, v1, Landroid/view/WindowInfo;->mTransformMatrix:[F

    .line 42
    .line 43
    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter v1

    .line 50
    :try_start_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 51
    .line 52
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 53
    .line 54
    invoke-virtual {v0, v2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokenForUserAndWindowIdLocked(II)Landroid/os/IBinder;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->getWindowTransformationMatrixAndMagnificationSpec(Landroid/os/IBinder;)Landroid/util/Pair;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const/16 p1, 0x9

    .line 66
    .line 67
    new-array p1, p1, [F

    .line 68
    .line 69
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Landroid/graphics/Matrix;

    .line 72
    .line 73
    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v1, Landroid/view/MagnificationSpec;

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/view/MagnificationSpec;->isNop()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_2

    .line 82
    .line 83
    iget v2, v1, Landroid/view/MagnificationSpec;->scale:F

    .line 84
    .line 85
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 86
    .line 87
    .line 88
    iget v2, v1, Landroid/view/MagnificationSpec;->offsetX:F

    .line 89
    .line 90
    iget v1, v1, Landroid/view/MagnificationSpec;->offsetY:F

    .line 91
    .line 92
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 93
    .line 94
    .line 95
    :cond_2
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 96
    .line 97
    .line 98
    new-instance v0, Landroid/util/Pair;

    .line 99
    .line 100
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast p0, Landroid/view/MagnificationSpec;

    .line 103
    .line 104
    invoke-direct {v0, p1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    return-object v0

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    throw p0

    .line 111
    :catchall_1
    move-exception p0

    .line 112
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 113
    throw p0
.end method

.method public final getWindowTransformationSpec(I)Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;
    .locals 1

    .line 1
    new-instance v0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowTransformationMatrixAndMagnificationSpec(I)Landroid/util/Pair;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, [F

    .line 13
    .line 14
    iput-object p1, v0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->transformationMatrix:[F

    .line 15
    .line 16
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Landroid/view/MagnificationSpec;

    .line 19
    .line 20
    iput-object p0, v0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->magnificationSpec:Landroid/view/MagnificationSpec;

    .line 21
    .line 22
    return-object v0
.end method

.method public final init()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x2

    .line 5
    const/4 v4, 0x3

    .line 6
    const/16 v0, 0x10

    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x1

    .line 10
    iget-object v7, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 11
    .line 12
    iget-object v8, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 13
    .line 14
    iput-object v8, v7, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 15
    .line 16
    new-instance v7, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;

    .line 17
    .line 18
    invoke-direct {v7, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 19
    .line 20
    .line 21
    iput-object v7, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 22
    .line 23
    iget-object v8, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 26
    .line 27
    const/4 v14, 0x0

    .line 28
    invoke-virtual {v7, v8, v14, v15, v6}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 29
    .line 30
    .line 31
    new-instance v12, Landroid/content/IntentFilter;

    .line 32
    .line 33
    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v7, "android.intent.action.USER_SWITCHED"

    .line 37
    .line 38
    invoke-virtual {v12, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v7, "android.intent.action.USER_UNLOCKED"

    .line 42
    .line 43
    invoke-virtual {v12, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v7, "android.intent.action.USER_REMOVED"

    .line 47
    .line 48
    invoke-virtual {v12, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v7, "android.os.action.SETTING_RESTORED"

    .line 52
    .line 53
    invoke-virtual {v12, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/android/server/accessibility/Flags;->managerAvoidReceiverTimeout()Z

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    iget-object v9, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    new-instance v10, Lcom/android/server/accessibility/AccessibilityManagerService$2;

    .line 66
    .line 67
    invoke-direct {v10, v5, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$2;-><init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 68
    .line 69
    .line 70
    const/4 v13, 0x0

    .line 71
    move-object v11, v15

    .line 72
    move-object v8, v14

    .line 73
    move-object v14, v7

    .line 74
    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    const-string v7, "android.safetycenter.action.SAFETY_CENTER_ENABLED_CHANGED"

    .line 78
    .line 79
    invoke-static {v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    new-instance v10, Lcom/android/server/accessibility/AccessibilityManagerService$2;

    .line 84
    .line 85
    invoke-direct {v10, v6, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$2;-><init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 86
    .line 87
    .line 88
    iget-object v9, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    iget-object v14, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 91
    .line 92
    const/4 v7, 0x2

    .line 93
    move v15, v7

    .line 94
    invoke-virtual/range {v9 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 95
    .line 96
    .line 97
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->vdmPublicApis()Z

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-nez v7, :cond_0

    .line 102
    .line 103
    new-instance v7, Lcom/android/server/accessibility/AccessibilityManagerService$2;

    .line 104
    .line 105
    invoke-direct {v7, v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$2;-><init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 106
    .line 107
    .line 108
    new-instance v9, Landroid/content/IntentFilter;

    .line 109
    .line 110
    const-string v10, "android.companion.virtual.action.VIRTUAL_DEVICE_REMOVED"

    .line 111
    .line 112
    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v10, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 116
    .line 117
    invoke-virtual {v10, v7, v9, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 118
    .line 119
    .line 120
    :cond_0
    new-instance v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;

    .line 121
    .line 122
    iget-object v9, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 123
    .line 124
    invoke-direct {v7, v1, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V

    .line 125
    .line 126
    .line 127
    iget-object v9, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 128
    .line 129
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationEnabledUri:Landroid/net/Uri;

    .line 134
    .line 135
    const/4 v11, -0x1

    .line 136
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 137
    .line 138
    .line 139
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mMagnificationmSingleFingerTripleTapEnabledUri:Landroid/net/Uri;

    .line 140
    .line 141
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 142
    .line 143
    .line 144
    invoke-static {}, Lcom/android/server/accessibility/Flags;->enableMagnificationMultipleFingerMultipleTapGesture()Z

    .line 145
    .line 146
    .line 147
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAutoclickEnabledUri:Landroid/net/Uri;

    .line 148
    .line 149
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 150
    .line 151
    .line 152
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mEnabledAccessibilityServicesUri:Landroid/net/Uri;

    .line 153
    .line 154
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 155
    .line 156
    .line 157
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationGrantedAccessibilityServicesUri:Landroid/net/Uri;

    .line 158
    .line 159
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 160
    .line 161
    .line 162
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mHighTextContrastUri:Landroid/net/Uri;

    .line 163
    .line 164
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 165
    .line 166
    .line 167
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAudioDescriptionByDefaultUri:Landroid/net/Uri;

    .line 168
    .line 169
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 170
    .line 171
    .line 172
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilitySoftKeyboardModeUri:Landroid/net/Uri;

    .line 173
    .line 174
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 175
    .line 176
    .line 177
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mShowImeWithHardKeyboardUri:Landroid/net/Uri;

    .line 178
    .line 179
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 180
    .line 181
    .line 182
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityShortcutServiceIdUri:Landroid/net/Uri;

    .line 183
    .line 184
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 185
    .line 186
    .line 187
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityButtonComponentIdUri:Landroid/net/Uri;

    .line 188
    .line 189
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 190
    .line 191
    .line 192
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityButtonTargetsUri:Landroid/net/Uri;

    .line 193
    .line 194
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 195
    .line 196
    .line 197
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mUserNonInteractiveUiTimeoutUri:Landroid/net/Uri;

    .line 198
    .line 199
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 200
    .line 201
    .line 202
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mUserInteractiveUiTimeoutUri:Landroid/net/Uri;

    .line 203
    .line 204
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 205
    .line 206
    .line 207
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mMagnificationModeUri:Landroid/net/Uri;

    .line 208
    .line 209
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 210
    .line 211
    .line 212
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mMagnificationCapabilityUri:Landroid/net/Uri;

    .line 213
    .line 214
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 215
    .line 216
    .line 217
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mMagnificationFollowTypingUri:Landroid/net/Uri;

    .line 218
    .line 219
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 220
    .line 221
    .line 222
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAlwaysOnMagnificationUri:Landroid/net/Uri;

    .line 223
    .line 224
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 225
    .line 226
    .line 227
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAutoActionEnabledUri:Landroid/net/Uri;

    .line 228
    .line 229
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 230
    .line 231
    .line 232
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mCornerActionEnabledUri:Landroid/net/Uri;

    .line 233
    .line 234
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 235
    .line 236
    .line 237
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mScreenCurtainEnabledUri:Landroid/net/Uri;

    .line 238
    .line 239
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 240
    .line 241
    .line 242
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTapDurationEnabledUri:Landroid/net/Uri;

    .line 243
    .line 244
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 245
    .line 246
    .line 247
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchBlockingEnabledUri:Landroid/net/Uri;

    .line 248
    .line 249
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 250
    .line 251
    .line 252
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mBounceKeysThresholdUri:Landroid/net/Uri;

    .line 253
    .line 254
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 255
    .line 256
    .line 257
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mSlowKeysThresholdUri:Landroid/net/Uri;

    .line 258
    .line 259
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 260
    .line 261
    .line 262
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mStickyKeysUri:Landroid/net/Uri;

    .line 263
    .line 264
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 265
    .line 266
    .line 267
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mNaviBarModeUri:Landroid/net/Uri;

    .line 268
    .line 269
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 270
    .line 271
    .line 272
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAmplifyAmbientSountEnableUri:Landroid/net/Uri;

    .line 273
    .line 274
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 275
    .line 276
    .line 277
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mHighContrastTextEnableUri:Landroid/net/Uri;

    .line 278
    .line 279
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 280
    .line 281
    .line 282
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorLensEnableUri:Landroid/net/Uri;

    .line 283
    .line 284
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 285
    .line 286
    .line 287
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorLensTypeUri:Landroid/net/Uri;

    .line 288
    .line 289
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 290
    .line 291
    .line 292
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorLensOpacityUri:Landroid/net/Uri;

    .line 293
    .line 294
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 295
    .line 296
    .line 297
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorReluminoEnableUri:Landroid/net/Uri;

    .line 298
    .line 299
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 300
    .line 301
    .line 302
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorReluminoTypeUri:Landroid/net/Uri;

    .line 303
    .line 304
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 305
    .line 306
    .line 307
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorReluminoEdgeThinknessUri:Landroid/net/Uri;

    .line 308
    .line 309
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 310
    .line 311
    .line 312
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityDirectAccessServiceIdUri:Landroid/net/Uri;

    .line 313
    .line 314
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 315
    .line 316
    .line 317
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mA11yAMEnableUri:Landroid/net/Uri;

    .line 318
    .line 319
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 320
    .line 321
    .line 322
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mA11yAMMagnificationEnableUri:Landroid/net/Uri;

    .line 323
    .line 324
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 325
    .line 326
    .line 327
    iget-object v10, v7, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mOneHandModeActivateUri:Landroid/net/Uri;

    .line 328
    .line 329
    invoke-virtual {v9, v10, v5, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 330
    .line 331
    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->disableAccessibilityMenuToMigrateIfNeeded()V

    .line 333
    .line 334
    .line 335
    new-instance v7, Lcom/android/server/accessibility/CVDCalculator;

    .line 336
    .line 337
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 338
    .line 339
    .line 340
    new-array v9, v0, [D

    .line 341
    .line 342
    fill-array-data v9, :array_0

    .line 343
    .line 344
    .line 345
    iput-object v9, v7, Lcom/android/server/accessibility/CVDCalculator;->u:[D

    .line 346
    .line 347
    new-array v9, v0, [D

    .line 348
    .line 349
    fill-array-data v9, :array_1

    .line 350
    .line 351
    .line 352
    iput-object v9, v7, Lcom/android/server/accessibility/CVDCalculator;->v:[D

    .line 353
    .line 354
    new-array v9, v0, [D

    .line 355
    .line 356
    iput-object v9, v7, Lcom/android/server/accessibility/CVDCalculator;->SpotsU:[D

    .line 357
    .line 358
    new-array v0, v0, [D

    .line 359
    .line 360
    iput-object v0, v7, Lcom/android/server/accessibility/CVDCalculator;->SpotsV:[D

    .line 361
    .line 362
    iput-object v8, v7, Lcom/android/server/accessibility/CVDCalculator;->mInputNums:[I

    .line 363
    .line 364
    new-instance v0, Lcom/android/server/accessibility/ColorTransferTable;

    .line 365
    .line 366
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 367
    .line 368
    .line 369
    iput-object v0, v7, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 370
    .line 371
    iput v4, v7, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    .line 372
    .line 373
    iput-object v7, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->cvdCalculator:Lcom/android/server/accessibility/CVDCalculator;

    .line 374
    .line 375
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 376
    .line 377
    const-class v7, Lcom/android/server/accessibility/GestureWakeup;

    .line 378
    .line 379
    monitor-enter v7

    .line 380
    :try_start_0
    sget-object v9, Lcom/android/server/accessibility/GestureWakeup;->sGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    .line 381
    .line 382
    if-nez v9, :cond_1

    .line 383
    .line 384
    new-instance v9, Lcom/android/server/accessibility/GestureWakeup;

    .line 385
    .line 386
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 387
    .line 388
    .line 389
    iput-boolean v5, v9, Lcom/android/server/accessibility/GestureWakeup;->mIsSettingGestureWakeUp:Z

    .line 390
    .line 391
    iput-object v8, v9, Lcom/android/server/accessibility/GestureWakeup;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 392
    .line 393
    iput-object v8, v9, Lcom/android/server/accessibility/GestureWakeup;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    .line 394
    .line 395
    new-instance v8, Lcom/android/server/accessibility/GestureWakeup$1;

    .line 396
    .line 397
    invoke-direct {v8, v9}, Lcom/android/server/accessibility/GestureWakeup$1;-><init>(Lcom/android/server/accessibility/GestureWakeup;)V

    .line 398
    .line 399
    .line 400
    iput-object v8, v9, Lcom/android/server/accessibility/GestureWakeup;->mSemContextListener:Lcom/android/server/accessibility/GestureWakeup$1;

    .line 401
    .line 402
    iput-object v0, v9, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    .line 403
    .line 404
    sput-object v9, Lcom/android/server/accessibility/GestureWakeup;->sGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    .line 405
    .line 406
    goto :goto_0

    .line 407
    :catchall_0
    move-exception v0

    .line 408
    goto/16 :goto_7

    .line 409
    .line 410
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/accessibility/GestureWakeup;->sGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    .line 412
    monitor-exit v7

    .line 413
    iput-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    .line 414
    .line 415
    iget-object v7, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 416
    .line 417
    invoke-virtual {v0, v7}, Lcom/android/server/accessibility/GestureWakeup;->checkSettingCondition(Landroid/content/Context;)Z

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    if-eqz v0, :cond_2

    .line 422
    .line 423
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    .line 424
    .line 425
    invoke-virtual {v0}, Lcom/android/server/accessibility/GestureWakeup;->StartGestureWakeup()Z

    .line 426
    .line 427
    .line 428
    :cond_2
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 429
    .line 430
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    const-string/jumbo v7, "show_a11y_button"

    .line 435
    .line 436
    .line 437
    const/4 v8, -0x2

    .line 438
    invoke-static {v0, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    if-ne v0, v6, :cond_3

    .line 443
    .line 444
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 445
    .line 446
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    const-string/jumbo v7, "navigation_bar_gesture_while_hidden"

    .line 451
    .line 452
    .line 453
    invoke-static {v0, v7, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 454
    .line 455
    .line 456
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 457
    .line 458
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    const-string/jumbo v7, "show_a11y_button"

    .line 463
    .line 464
    .line 465
    invoke-static {v0, v7, v5, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 466
    .line 467
    .line 468
    :cond_3
    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 469
    .line 470
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    .line 471
    .line 472
    invoke-static {v0, v7}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    iget-object v7, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 477
    .line 478
    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService$2;

    .line 479
    .line 480
    invoke-direct {v9, v4, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$2;-><init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v7, v9, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 484
    .line 485
    .line 486
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 487
    .line 488
    const-string/jumbo v7, "com.samsung.android.accessibility.talkback"

    .line 489
    .line 490
    .line 491
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    const/16 v9, 0x80

    .line 496
    .line 497
    :try_start_1
    invoke-virtual {v0, v7, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 498
    .line 499
    .line 500
    move v0, v6

    .line 501
    goto :goto_1

    .line 502
    :catch_0
    move v0, v5

    .line 503
    :goto_1
    const-string v7, "AccessibilityManagerService"

    .line 504
    .line 505
    if-nez v0, :cond_4

    .line 506
    .line 507
    const-string v0, "Package com.samsung.android.accessibility.talkback is not installed"

    .line 508
    .line 509
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    .line 511
    .line 512
    goto/16 :goto_6

    .line 513
    .line 514
    :cond_4
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 515
    .line 516
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    const-string/jumbo v9, "enabled_accessibility_services"

    .line 521
    .line 522
    .line 523
    invoke-static {v0, v9, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    iget-object v10, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 528
    .line 529
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 530
    .line 531
    .line 532
    move-result-object v10

    .line 533
    const-string v12, "accessibility_shortcut_target_service"

    .line 534
    .line 535
    invoke-static {v10, v12, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v10

    .line 539
    const-string/jumbo v13, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    .line 540
    .line 541
    .line 542
    const-string v14, "(?i).*com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService.*"

    .line 543
    .line 544
    const-string/jumbo v15, "com.samsung.accessibility/com.samsung.android.app.talkback.TalkBackService"

    .line 545
    .line 546
    .line 547
    const-string v4, "(?i).*com.samsung.accessibility/com.samsung.android.app.talkback.TalkBackService.*"

    .line 548
    .line 549
    const-string/jumbo v3, "com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"

    .line 550
    .line 551
    .line 552
    if-eqz v0, :cond_7

    .line 553
    .line 554
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 555
    .line 556
    .line 557
    move-result v16

    .line 558
    if-nez v16, :cond_7

    .line 559
    .line 560
    :try_start_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 561
    .line 562
    .line 563
    move-result v16

    .line 564
    if-eqz v16, :cond_5

    .line 565
    .line 566
    invoke-virtual {v0, v15, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    move/from16 v16, v6

    .line 571
    .line 572
    goto :goto_2

    .line 573
    :catch_1
    move-exception v0

    .line 574
    goto :goto_3

    .line 575
    :cond_5
    move/from16 v16, v5

    .line 576
    .line 577
    :goto_2
    invoke-virtual {v0, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 578
    .line 579
    .line 580
    move-result v17

    .line 581
    if-eqz v17, :cond_6

    .line 582
    .line 583
    invoke-virtual {v0, v13, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    move/from16 v16, v6

    .line 588
    .line 589
    :cond_6
    if-eqz v16, :cond_7

    .line 590
    .line 591
    const-string v2, "Change Accessibility ComponentName of ENABLED_ACCESSIBILITY_SERVICES"

    .line 592
    .line 593
    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    .line 595
    .line 596
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 597
    .line 598
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 599
    .line 600
    .line 601
    move-result-object v2

    .line 602
    invoke-static {v2, v9, v0, v8}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 603
    .line 604
    .line 605
    goto :goto_4

    .line 606
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 607
    .line 608
    const-string/jumbo v9, "changeAccessibilityComponentNameIfNeed() exception : "

    .line 609
    .line 610
    .line 611
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    .line 623
    .line 624
    :cond_7
    :goto_4
    if-eqz v10, :cond_a

    .line 625
    .line 626
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 627
    .line 628
    .line 629
    move-result v0

    .line 630
    if-nez v0, :cond_a

    .line 631
    .line 632
    :try_start_3
    invoke-virtual {v10, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 633
    .line 634
    .line 635
    move-result v0

    .line 636
    if-eqz v0, :cond_8

    .line 637
    .line 638
    invoke-virtual {v10, v15, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v10

    .line 642
    move v0, v6

    .line 643
    goto :goto_5

    .line 644
    :cond_8
    move v0, v5

    .line 645
    :goto_5
    invoke-virtual {v10, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 646
    .line 647
    .line 648
    move-result v2

    .line 649
    if-eqz v2, :cond_9

    .line 650
    .line 651
    invoke-virtual {v10, v13, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v10

    .line 655
    move v0, v6

    .line 656
    :cond_9
    if-eqz v0, :cond_a

    .line 657
    .line 658
    const-string v0, "Change Accessibility ComponentName of ACCESSIBILITY_SHORTCUT_TARGET_SERVICE"

    .line 659
    .line 660
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    .line 662
    .line 663
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 664
    .line 665
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    invoke-static {v0, v12, v10}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 670
    .line 671
    .line 672
    :catch_2
    :cond_a
    :goto_6
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 673
    .line 674
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    const-string v2, "accessibility_magnification_activated"

    .line 679
    .line 680
    invoke-static {v0, v2, v5, v8}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 681
    .line 682
    .line 683
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 684
    .line 685
    invoke-direct {v0, v5, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;-><init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 686
    .line 687
    .line 688
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 689
    .line 690
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mAodShowStateUri:Landroid/net/Uri;

    .line 695
    .line 696
    invoke-virtual {v2, v3, v5, v0, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 697
    .line 698
    .line 699
    const-string v0, "AccessibilityManagerService"

    .line 700
    .line 701
    const-string/jumbo v2, "register AODStateContentObserver"

    .line 702
    .line 703
    .line 704
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    .line 706
    .line 707
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 708
    .line 709
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    const-string/jumbo v2, "user_setup_complete"

    .line 714
    .line 715
    .line 716
    invoke-static {v0, v2, v5, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 717
    .line 718
    .line 719
    move-result v0

    .line 720
    if-nez v0, :cond_b

    .line 721
    .line 722
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 723
    .line 724
    invoke-direct {v0, v6, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;-><init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 725
    .line 726
    .line 727
    iput-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mColorInversionStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 728
    .line 729
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 730
    .line 731
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 732
    .line 733
    .line 734
    move-result-object v0

    .line 735
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mColorInversionStateUri:Landroid/net/Uri;

    .line 736
    .line 737
    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mColorInversionStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 738
    .line 739
    invoke-virtual {v0, v2, v5, v3, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 740
    .line 741
    .line 742
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 743
    .line 744
    const/4 v2, 0x4

    .line 745
    invoke-direct {v0, v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;-><init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 746
    .line 747
    .line 748
    iput-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mSetupCompleteStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 749
    .line 750
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 751
    .line 752
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mSetupCompleteUri:Landroid/net/Uri;

    .line 757
    .line 758
    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mSetupCompleteStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 759
    .line 760
    invoke-virtual {v0, v2, v5, v3, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 761
    .line 762
    .line 763
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 764
    .line 765
    const/4 v2, 0x2

    .line 766
    invoke-direct {v0, v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;-><init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 767
    .line 768
    .line 769
    iput-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mDaltonizerEnabledStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 770
    .line 771
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 772
    .line 773
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

    .line 778
    .line 779
    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mDaltonizerEnabledStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 780
    .line 781
    invoke-virtual {v0, v2, v5, v3, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 782
    .line 783
    .line 784
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 785
    .line 786
    const/4 v2, 0x3

    .line 787
    invoke-direct {v0, v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;-><init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 788
    .line 789
    .line 790
    iput-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mDaltonizerStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 791
    .line 792
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 793
    .line 794
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 795
    .line 796
    .line 797
    move-result-object v0

    .line 798
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplayDaltonizerUri:Landroid/net/Uri;

    .line 799
    .line 800
    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mDaltonizerStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 801
    .line 802
    invoke-virtual {v0, v2, v5, v3, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 803
    .line 804
    .line 805
    invoke-static {}, Lcom/android/server/accessibility/Flags;->enableColorCorrectionSaturation()Z

    .line 806
    .line 807
    .line 808
    move-result v0

    .line 809
    if-eqz v0, :cond_b

    .line 810
    .line 811
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 812
    .line 813
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplayDaltonizerSaturationLevelUri:Landroid/net/Uri;

    .line 818
    .line 819
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mDaltonizerStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 820
    .line 821
    invoke-virtual {v0, v2, v5, v1, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 822
    .line 823
    .line 824
    :cond_b
    return-void

    .line 825
    :goto_7
    monitor-exit v7

    .line 826
    throw v0

    .line 827
    :array_0
    .array-data 8
        -0x3fca75c28f5c28f6L    # -21.54
        -0x3fc8bd70a3d70a3dL    # -23.26
        -0x3fc9970a3d70a3d7L    # -22.41
        -0x3fc8e3d70a3d70a4L    # -23.11
        -0x3fc98ccccccccccdL    # -22.45
        -0x3fca3d70a3d70a3dL    # -21.76
        -0x3fd3d70a3d70a3d7L    # -14.08
        -0x3ffa3d70a3d70a3dL    # -2.72
        0x402dae147ae147aeL    # 14.84
        0x4037deb851eb851fL    # 23.87
        0x403fd1eb851eb852L    # 31.82
        0x403f6b851eb851ecL    # 31.42
        0x403dca3d70a3d70aL    # 29.79
        0x403aa3d70a3d70a4L    # 26.64
        0x4036eb851eb851ecL    # 22.92
        0x4026666666666666L    # 11.2
    .end array-data

    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    :array_1
    .array-data 8
        -0x3fbcce147ae147aeL    # -38.39
        -0x3fc670a3d70a3d71L    # -25.56
        -0x3fd0f0a3d70a3d71L    # -15.53
        -0x3fe2333333333333L    # -7.45
        0x3ff199999999999aL    # 1.1
        0x401d666666666666L    # 7.35
        0x4032bd70a3d70a3dL    # 18.74
        0x403c2147ae147ae1L    # 28.13
        0x403f2147ae147ae1L    # 31.13
        0x403a59999999999aL    # 26.35
        0x402d851eb851eb85L    # 14.76
        0x401bf5c28f5c28f6L    # 6.99
        0x3fb999999999999aL    # 0.1
        -0x3fdd3d70a3d70a3dL    # -9.38
        -0x3fcd59999999999aL    # -18.65
        -0x3fc763d70a3d70a4L    # -24.61
    .end array-data
.end method

.method public final injectInputEventToInputFilter(Landroid/view/InputEvent;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->injectInputEventToInputFilter_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    const-wide/16 v3, 0x3e8

    .line 12
    .line 13
    add-long/2addr v1, v3

    .line 14
    :catch_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilterInstalled:Z

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    cmp-long v3, v3, v1

    .line 23
    .line 24
    if-gez v3, :cond_0

    .line 25
    .line 26
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    sub-long v4, v1, v4

    .line 33
    .line 34
    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_2

    .line 40
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilterInstalled:Z

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 46
    .line 47
    if-eqz p0, :cond_1

    .line 48
    .line 49
    const/high16 v0, 0x41000000    # 8.0f

    .line 50
    .line 51
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const-string p0, "AccessibilityManagerService"

    .line 56
    .line 57
    const-string p1, "Cannot injectInputEventToInputFilter because the AccessibilityInputFilter is not installed."

    .line 58
    .line 59
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :goto_1
    return-void

    .line 63
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    throw p0
.end method

.method public final interrupt(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 2
    .line 3
    const-wide/16 v1, 0x4

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 12
    .line 13
    const-string v3, "AccessibilityManagerService.interrupt"

    .line 14
    .line 15
    const-string/jumbo v4, "userId="

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 35
    .line 36
    if-eq p1, v1, :cond_1

    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto/16 :goto_6

    .line 42
    .line 43
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 44
    .line 45
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/ProxyManager;->getFirstDeviceIdForUidLocked(I)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 54
    .line 55
    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    const/4 v3, 0x0

    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    new-instance p1, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 68
    .line 69
    move v4, v3

    .line 70
    :goto_0
    iget-object v5, v2, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 71
    .line 72
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-ge v4, v5, :cond_6

    .line 77
    .line 78
    iget-object v5, v2, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 79
    .line 80
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 85
    .line 86
    if-eqz v5, :cond_2

    .line 87
    .line 88
    iget v6, v5, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    .line 89
    .line 90
    if-ne v6, v1, :cond_2

    .line 91
    .line 92
    iget-object v6, v5, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 93
    .line 94
    iget-object v5, v5, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 95
    .line 96
    if-eqz v6, :cond_2

    .line 97
    .line 98
    if-eqz v5, :cond_2

    .line 99
    .line 100
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 111
    .line 112
    new-instance v1, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    .line 120
    .line 121
    move v2, v3

    .line 122
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-ge v2, v4, :cond_5

    .line 127
    .line 128
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    check-cast v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 133
    .line 134
    iget-object v5, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 135
    .line 136
    iget-object v4, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 137
    .line 138
    if-eqz v5, :cond_4

    .line 139
    .line 140
    if-eqz v4, :cond_4

    .line 141
    .line 142
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_5
    move-object p1, v1

    .line 149
    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    :goto_2
    if-ge v3, v0, :cond_8

    .line 155
    .line 156
    :try_start_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 157
    .line 158
    const-wide/16 v4, 0x2

    .line 159
    .line 160
    invoke-virtual {v1, v4, v5}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_7

    .line 165
    .line 166
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 167
    .line 168
    const-string v2, "AccessibilityManagerService.IAccessibilityServiceClient.onInterrupt"

    .line 169
    .line 170
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :catch_0
    move-exception v1

    .line 175
    goto :goto_4

    .line 176
    :cond_7
    :goto_3
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    check-cast v1, Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 181
    .line 182
    invoke-interface {v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onInterrupt()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 183
    .line 184
    .line 185
    goto :goto_5

    .line 186
    :goto_4
    const-string v2, "AccessibilityManagerService"

    .line 187
    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v5, "Error sending interrupt request to "

    .line 191
    .line 192
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    invoke-static {v2, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    .line 208
    .line 209
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_8
    return-void

    .line 213
    :goto_6
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    throw p0
.end method

.method public final isAccessibilityServiceWarningRequired(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isAccessibilityServiceWarningRequired_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 18
    .line 19
    check-cast v2, Ljava/util/HashSet;

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    monitor-exit v1

    .line 29
    return v3

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    sget-object v1, Lcom/android/internal/accessibility/common/ShortcutConstants;->USER_SHORTCUT_TYPES:[I

    .line 34
    .line 35
    array-length v2, v1

    .line 36
    move v4, v3

    .line 37
    :goto_0
    if-ge v4, v2, :cond_2

    .line 38
    .line 39
    aget v5, v1, v4

    .line 40
    .line 41
    invoke-virtual {p0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityShortcutTargets(I)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    check-cast v5, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_1

    .line 56
    .line 57
    return v3

    .line 58
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-static {}, Landroid/view/accessibility/Flags;->skipAccessibilityWarningDialogForTrustedServices()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/4 v1, 0x1

    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 77
    .line 78
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const p1, 0x1070170

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    new-instance p1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 104
    .line 105
    const/4 v2, 0x3

    .line 106
    invoke-direct {p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 107
    .line 108
    .line 109
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    new-instance p1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda42;

    .line 117
    .line 118
    const/4 v2, 0x0

    .line 119
    invoke-direct {p1, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda42;-><init>(ILandroid/content/ComponentName;)V

    .line 120
    .line 121
    .line 122
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    if-eqz p0, :cond_3

    .line 127
    .line 128
    move p0, v1

    .line 129
    goto :goto_1

    .line 130
    :cond_3
    move p0, v3

    .line 131
    :goto_1
    if-eqz p0, :cond_4

    .line 132
    .line 133
    return v3

    .line 134
    :cond_4
    return v1

    .line 135
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    throw p0
.end method

.method public final isAccessibilityTargetAllowed(Ljava/lang/String;II)Z
    .locals 5

    .line 1
    const-string v0, "Exception when retrieving package:"

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-class v4, Landroid/app/admin/DevicePolicyManager;

    .line 10
    .line 11
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 16
    .line 17
    invoke-virtual {v3, p3}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz p3, :cond_1

    .line 23
    .line 24
    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-eqz p3, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    return v3

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->enhancedConfirmationModeApisEnabled()Z

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    const/4 v4, 0x1

    .line 42
    if-eqz p3, :cond_2

    .line 43
    .line 44
    invoke-static {}, Landroid/security/Flags;->extendEcmToAllSettings()Z

    .line 45
    .line 46
    .line 47
    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    if-eqz p3, :cond_2

    .line 49
    .line 50
    :try_start_2
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    const-class p2, Landroid/app/ecm/EnhancedConfirmationManager;

    .line 53
    .line 54
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Landroid/app/ecm/EnhancedConfirmationManager;

    .line 59
    .line 60
    const-string p2, "android:bind_accessibility_service"

    .line 61
    .line 62
    invoke-virtual {p0, p1, p2}, Landroid/app/ecm/EnhancedConfirmationManager;->isRestricted(Ljava/lang/String;Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result p0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    xor-int/2addr p0, v4

    .line 67
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    .line 69
    .line 70
    return p0

    .line 71
    :catch_0
    move-exception p0

    .line 72
    :try_start_3
    const-string p2, "AccessibilityManagerService"

    .line 73
    .line 74
    new-instance p3, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    .line 88
    .line 89
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    .line 91
    .line 92
    return v3

    .line 93
    :cond_2
    :try_start_4
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 94
    .line 95
    const-class v0, Landroid/app/AppOpsManager;

    .line 96
    .line 97
    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    check-cast p3, Landroid/app/AppOpsManager;

    .line 102
    .line 103
    const/16 v0, 0x77

    .line 104
    .line 105
    invoke-virtual {p3, v0, p2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    const p2, 0x1110194

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 119
    .line 120
    .line 121
    move-result p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 122
    if-eqz p0, :cond_3

    .line 123
    .line 124
    if-eqz p1, :cond_3

    .line 125
    .line 126
    const/4 p0, 0x3

    .line 127
    if-ne p1, p0, :cond_4

    .line 128
    .line 129
    :cond_3
    move v3, v4

    .line 130
    :cond_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 131
    .line 132
    .line 133
    return v3

    .line 134
    :catch_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    .line 136
    .line 137
    return v3

    .line 138
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    .line 140
    .line 141
    throw p0
.end method

.method public final isActivatedMagnification()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isActivatedMagnification_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getDisplayId()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationModeLocked(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getDisplayId()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-virtual {v1, p0, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public final isAudioDescriptionByDefaultEnabled()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 2
    .line 3
    const-wide/16 v1, 0x4

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 12
    .line 13
    const-string v3, "AccessibilityManagerService.isAudioDescriptionByDefaultEnabled"

    .line 14
    .line 15
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAudioDescriptionByDefaultRequested:Z

    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final isCameraFlashNotificationRunning()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFlashNotificationsController:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraFlashNotificationRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10
    .line 11
    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    .line 16
    .line 17
    throw p0
.end method

.method public final isScreenReaderEnabled()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "enabled_accessibility_services"

    .line 8
    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 11
    .line 12
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 v0, 0x0

    .line 17
    if-eqz p0, :cond_2

    .line 18
    .line 19
    const-string v1, "(?i).*com.samsung.accessibility/com.samsung.android.app.talkback.TalkBackService.*"

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const-string v1, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    const-string v1, "(?i).*com.google.android.marvin.talkback/.TalkBackService.*"

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    const-string v1, "(?i).*com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService.*"

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    :cond_0
    const/4 v0, 0x1

    .line 52
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string/jumbo v2, "isScreenReaderEnable : "

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v2, ", accesibilityService : "

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    const-string v1, "AccessibilityManagerService"

    .line 76
    .line 77
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :cond_2
    return v0
.end method

.method public final isSystemAudioCaptioningUiEnabled(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCaptioningManagerImpl:Lcom/android/server/accessibility/CaptioningManagerImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/CaptioningManagerImpl;->isSystemAudioCaptioningUiEnabled(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isTwoFingerGestureRecognitionEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->shouldRecogniseTwoFingerGestures:Z

    .line 2
    .line 3
    return p0
.end method

.method public final migrateAccessibilityButtonSettingsIfNecessaryLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;I)V
    .locals 15

    .line 1
    move-object/from16 v7, p1

    .line 2
    .line 3
    const/16 v0, 0x1d

    .line 4
    .line 5
    move/from16 v1, p3

    .line 6
    .line 7
    if-le v1, v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v8, v7, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Ljava/util/LinkedHashSet;

    .line 11
    .line 12
    invoke-interface {v8}, Ljava/util/Set;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda10;

    .line 17
    .line 18
    move-object/from16 v2, p2

    .line 19
    .line 20
    invoke-direct {v1, v2, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v8, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 24
    .line 25
    .line 26
    invoke-interface {v8}, Ljava/util/Set;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v9, 0x0

    .line 31
    const/4 v10, 0x1

    .line 32
    if-eq v0, v1, :cond_1

    .line 33
    .line 34
    move v11, v10

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v11, v9

    .line 37
    :goto_0
    invoke-interface {v8}, Ljava/util/Set;->size()I

    .line 38
    .line 39
    .line 40
    move-result v12

    .line 41
    iget-object v4, v7, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityShortcutKeyTargets:Ljava/util/LinkedHashSet;

    .line 42
    .line 43
    iget-object v5, v7, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityDirectAccessTargets:Ljava/util/LinkedHashSet;

    .line 44
    .line 45
    new-instance v6, Ljava/util/LinkedHashSet;

    .line 46
    .line 47
    iget-object v0, v7, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityQsTargets:Ljava/util/LinkedHashSet;

    .line 48
    .line 49
    invoke-direct {v6, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 50
    .line 51
    .line 52
    iget-object v13, v7, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 53
    .line 54
    new-instance v14, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda11;

    .line 55
    .line 56
    move-object v0, v14

    .line 57
    move-object/from16 v1, p2

    .line 58
    .line 59
    move-object/from16 v2, p1

    .line 60
    .line 61
    move-object v3, v8

    .line 62
    invoke-direct/range {v0 .. v6}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v13, v14}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v8}, Ljava/util/Set;->size()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eq v12, v0, :cond_2

    .line 73
    .line 74
    move v9, v10

    .line 75
    :cond_2
    or-int v0, v11, v9

    .line 76
    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    return-void

    .line 80
    :cond_3
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 81
    .line 82
    const/4 v0, 0x0

    .line 83
    invoke-direct {v5, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 84
    .line 85
    .line 86
    const-string v2, "accessibility_button_targets"

    .line 87
    .line 88
    iget v3, v7, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 89
    .line 90
    const/4 v6, 0x0

    .line 91
    move-object v1, p0

    .line 92
    move-object v4, v8

    .line 93
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final notifyAccessibilityButtonClicked(ILjava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->notifyAccessibilityButtonClicked_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 5
    .line 6
    const-wide/16 v1, 0x4

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 15
    .line 16
    const-string v3, "AccessibilityManagerService.notifyAccessibilityButtonClicked"

    .line 17
    .line 18
    const-string/jumbo v4, "displayId="

    .line 19
    .line 20
    .line 21
    const-string v5, ";targetName="

    .line 22
    .line 23
    invoke-static {p1, v4, v5, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "access_control_enabled"

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v3, -0x2

    .line 40
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v1, 0x1

    .line 45
    if-ne v0, v1, :cond_1

    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    if-nez p2, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter v0

    .line 53
    :try_start_0
    iget p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 54
    .line 55
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mTargetAssignedToAccessibilityButton:Ljava/lang/String;

    .line 60
    .line 61
    monitor-exit v0

    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p0

    .line 66
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 67
    .line 68
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda14;

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    invoke-direct {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda14;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v2, p0, p1, v1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final notifyAccessibilityButtonVisibilityChanged(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->notifyAccessibilityButtonVisibilityChanged_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 5
    .line 6
    const-wide/16 v1, 0x4

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 15
    .line 16
    const-string v3, "AccessibilityManagerService.notifyAccessibilityButtonVisibilityChanged"

    .line 17
    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string/jumbo v5, "shown="

    .line 21
    .line 22
    .line 23
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter v0

    .line 39
    :try_start_0
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityButtonShown:Z

    .line 46
    .line 47
    iget-object p0, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    add-int/lit8 p0, p0, -0x1

    .line 54
    .line 55
    :goto_0
    if-ltz p0, :cond_2

    .line 56
    .line 57
    iget-object p1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 64
    .line 65
    iget-boolean v2, p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    .line 66
    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isAccessibilityButtonAvailableLocked()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    iget-object p1, p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    const/16 v4, 0x8

    .line 77
    .line 78
    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 83
    .line 84
    .line 85
    :cond_1
    add-int/lit8 p0, p0, -0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    monitor-exit v0

    .line 89
    return-void

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    throw p0
.end method

.method public final notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .locals 4

    .line 1
    :try_start_0
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 23
    .line 24
    iget-boolean v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mIsDefault:Z

    .line 25
    .line 26
    if-ne v3, p2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    :cond_1
    return-void
.end method

.method public final notifyClearAccessibilityCacheLocked()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/lit8 v1, v1, -0x1

    .line 14
    .line 15
    :goto_0
    const/4 v2, 0x2

    .line 16
    if-ltz v1, :cond_0

    .line 17
    .line 18
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 25
    .line 26
    iget-object v3, v3, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 27
    .line 28
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 29
    .line 30
    .line 31
    add-int/lit8 v1, v1, -0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    :goto_1
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-ge v0, v1, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 56
    .line 57
    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    return-void
.end method

.method public final notifyClientsOfServicesStateChange(Landroid/os/RemoteCallbackList;J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 2
    .line 3
    const-wide/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 12
    .line 13
    const-string/jumbo v3, "uiTimeout="

    .line 14
    .line 15
    .line 16
    invoke-static {p2, p3, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string v4, "AccessibilityManagerService.notifyClientsOfServicesStateChange"

    .line 21
    .line 22
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda53;

    .line 26
    .line 27
    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda53;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;J)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p1, p0}, Landroid/os/RemoteCallbackList;->broadcastForEachCookie(Ljava/util/function/Consumer;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final notifyGestureLocked(Landroid/accessibilityservice/AccessibilityGestureEvent;Z)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    :goto_0
    if-ltz v0, :cond_2

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 24
    .line 25
    iget-boolean v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    iget-boolean v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mIsDefault:Z

    .line 30
    .line 31
    if-ne v3, p2, :cond_1

    .line 32
    .line 33
    invoke-static {}, Landroid/view/accessibility/Flags;->copyEventsForGestureDetection()Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    iget-object p0, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;->copyForAsync()Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    iget-object p0, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 54
    .line 55
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 60
    .line 61
    .line 62
    :goto_1
    return v1

    .line 63
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 p0, 0x0

    .line 67
    return p0
.end method

.method public notifyKeyEvent(Landroid/view/KeyEvent;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/accessibility/KeyEventDispatcher;->notifyKeyEventLocked(Landroid/view/KeyEvent;ILjava/util/List;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    monitor-exit v0

    .line 32
    return p0

    .line 33
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final notifyMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClearAccessibilityCacheLocked()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChangedLocked(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 8
    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final notifyMagnificationChangedLocked(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    :goto_0
    if-ltz v0, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 26
    .line 27
    iget-object v2, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 28
    .line 29
    iget-object v2, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v2

    .line 32
    :try_start_0
    iget-object v3, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mMagnificationCallbackState:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-nez v3, :cond_0

    .line 39
    .line 40
    monitor-exit v2

    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_2

    .line 44
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iput-object p2, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 50
    .line 51
    iput-object p3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 52
    .line 53
    iput p1, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 54
    .line 55
    const/4 v3, 0x5

    .line 56
    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 61
    .line 62
    .line 63
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    throw p0

    .line 68
    :cond_1
    return-void
.end method

.method public final notifyQuickSettingsTilesChanged(ILjava/util/List;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->notifyQuickSettingsTilesChanged_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/view/accessibility/Flags;->a11yQsShortcut()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v0, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter p2

    .line 19
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getTileServiceToA11yServiceInfoMapLocked()Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getA11yFeatureToTileService()Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    new-instance v4, Landroid/util/ArraySet;

    .line 32
    .line 33
    iget-object v5, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yTilesInQsPanel:Landroid/util/ArraySet;

    .line 34
    .line 35
    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    new-instance v6, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda17;

    .line 43
    .line 44
    const/4 v7, 0x2

    .line 45
    invoke-direct {v6, v7, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda17;-><init>(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    check-cast v5, Ljava/util/Set;

    .line 61
    .line 62
    invoke-virtual {v4}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    new-instance v6, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda50;

    .line 67
    .line 68
    const/4 v7, 0x0

    .line 69
    invoke-direct {v6, v7, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda50;-><init>(ILjava/util/Set;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v4, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-interface {v4, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    check-cast v4, Ljava/util/Set;

    .line 85
    .line 86
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-eqz v6, :cond_1

    .line 91
    .line 92
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_1

    .line 97
    .line 98
    monitor-exit p2

    .line 99
    return-void

    .line 100
    :catchall_0
    move-exception p0

    .line 101
    goto/16 :goto_2

    .line 102
    .line 103
    :cond_1
    iget-object v6, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yTilesInQsPanel:Landroid/util/ArraySet;

    .line 104
    .line 105
    invoke-virtual {v6}, Landroid/util/ArraySet;->clear()V

    .line 106
    .line 107
    .line 108
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yTilesInQsPanel:Landroid/util/ArraySet;

    .line 109
    .line 110
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 111
    .line 112
    .line 113
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    new-instance p2, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .line 118
    .line 119
    new-instance v0, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .line 123
    .line 124
    sget-object v1, Lcom/android/internal/accessibility/common/ShortcutConstants;->A11Y_FEATURE_TO_FRAMEWORK_TILE:Ljava/util/Map;

    .line 125
    .line 126
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    if-eqz v6, :cond_4

    .line 139
    .line 140
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    check-cast v6, Ljava/util/Map$Entry;

    .line 145
    .line 146
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    check-cast v7, Landroid/content/ComponentName;

    .line 151
    .line 152
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    check-cast v6, Landroid/content/ComponentName;

    .line 161
    .line 162
    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    if-eqz v8, :cond_3

    .line 167
    .line 168
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_3
    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    if-eqz v6, :cond_2

    .line 177
    .line 178
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_4
    check-cast v3, Landroid/util/ArrayMap;

    .line 183
    .line 184
    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    const/4 v6, 0x1

    .line 197
    if-eqz v3, :cond_8

    .line 198
    .line 199
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    check-cast v3, Ljava/util/Map$Entry;

    .line 204
    .line 205
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v7

    .line 209
    check-cast v7, Landroid/content/ComponentName;

    .line 210
    .line 211
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    check-cast v3, Landroid/content/ComponentName;

    .line 220
    .line 221
    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v8

    .line 225
    if-eqz v8, :cond_7

    .line 226
    .line 227
    const/4 v8, 0x0

    .line 228
    invoke-interface {v2, v3, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 233
    .line 234
    if-eqz v3, :cond_6

    .line 235
    .line 236
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->isAccessibilityServiceWarningRequired(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    if-eqz v3, :cond_6

    .line 241
    .line 242
    const-string v3, "accessibility.value_qs_shortcut_add"

    .line 243
    .line 244
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 245
    .line 246
    .line 247
    move-result v7

    .line 248
    int-to-long v8, v6

    .line 249
    invoke-static {v3, v7, v8, v9}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;IJ)V

    .line 250
    .line 251
    .line 252
    goto :goto_1

    .line 253
    :cond_6
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    goto :goto_1

    .line 257
    :cond_7
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    if-eqz v3, :cond_5

    .line 262
    .line 263
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    goto :goto_1

    .line 267
    :cond_8
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    const/16 v2, 0x10

    .line 272
    .line 273
    if-nez v1, :cond_9

    .line 274
    .line 275
    invoke-virtual {p0, p2, v2, v6, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->enableShortcutForTargets(Ljava/util/List;IZI)V

    .line 276
    .line 277
    .line 278
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 279
    .line 280
    .line 281
    move-result p2

    .line 282
    if-nez p2, :cond_a

    .line 283
    .line 284
    const/4 p2, 0x0

    .line 285
    invoke-virtual {p0, v0, v2, p2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->enableShortcutForTargets(Ljava/util/List;IZI)V

    .line 286
    .line 287
    .line 288
    :cond_a
    return-void

    .line 289
    :goto_2
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    throw p0
.end method

.method public notifySystemActionsChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 2

    .line 1
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    add-int/lit8 p0, p0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz p0, :cond_0

    .line 10
    .line 11
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 20
    .line 21
    const/16 v1, 0x9

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 24
    .line 25
    .line 26
    add-int/lit8 p0, p0, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public final onClientChangeLocked(ZZ)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onPackagesForceStoppedLocked([Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 12

    .line 1
    iget-object v0, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda30;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    invoke-direct {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 31
    .line 32
    check-cast v1, Ljava/util/HashSet;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const/4 v2, 0x0

    .line 39
    move v3, v2

    .line 40
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    const/4 v5, 0x1

    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Landroid/content/ComponentName;

    .line 52
    .line 53
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    array-length v7, p1

    .line 58
    move v8, v2

    .line 59
    :goto_1
    if-ge v8, v7, :cond_0

    .line 60
    .line 61
    aget-object v9, p1, v8

    .line 62
    .line 63
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    if-eqz v9, :cond_1

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 70
    .line 71
    .line 72
    iget-object v3, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    .line 73
    .line 74
    check-cast v3, Ljava/util/HashSet;

    .line 75
    .line 76
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    iget-object v3, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    .line 80
    .line 81
    check-cast v3, Ljava/util/HashSet;

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move v3, v5

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    if-eqz v3, :cond_3

    .line 92
    .line 93
    iget-object p1, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 94
    .line 95
    iget v1, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 96
    .line 97
    const-string/jumbo v4, "enabled_accessibility_services"

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v1, v4, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(ILjava/lang/String;Ljava/util/Set;)V

    .line 101
    .line 102
    .line 103
    :cond_3
    iget-object p1, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Ljava/util/LinkedHashSet;

    .line 104
    .line 105
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda17;

    .line 106
    .line 107
    const/4 v4, 0x1

    .line 108
    invoke-direct {v1, v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda17;-><init>(ILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v1}, Ljava/util/LinkedHashSet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_4

    .line 116
    .line 117
    iget-object v9, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Ljava/util/LinkedHashSet;

    .line 118
    .line 119
    new-instance v10, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 120
    .line 121
    const/4 v0, 0x0

    .line 122
    invoke-direct {v10, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 123
    .line 124
    .line 125
    const/4 v11, 0x0

    .line 126
    const-string v7, "accessibility_button_targets"

    .line 127
    .line 128
    iget v8, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 129
    .line 130
    move-object v6, p0

    .line 131
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_4
    if-nez v3, :cond_5

    .line 135
    .line 136
    if-eqz p1, :cond_6

    .line 137
    .line 138
    :cond_5
    move v2, v5

    .line 139
    :cond_6
    return v2
.end method

.method public final onServiceInfoChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 2
    .line 3
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 4
    .line 5
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    .line 8
    .line 9
    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 10
    .line 11
    iget v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 12
    .line 13
    if-eq v3, v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    new-instance v3, Landroid/util/ArraySet;

    .line 18
    .line 19
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    move v5, v4

    .line 24
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    iget-object v7, v0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

    .line 29
    .line 30
    if-ge v5, v6, :cond_3

    .line 31
    .line 32
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    check-cast v6, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 37
    .line 38
    iget-object v6, v6, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 39
    .line 40
    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    invoke-virtual {v8}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isAccessibilityTool()Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-nez v6, :cond_2

    .line 53
    .line 54
    invoke-virtual {v3, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    .line 58
    .line 59
    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_1

    .line 64
    .line 65
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    .line 66
    .line 67
    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    iget-boolean v6, v0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mSendNonA11yToolNotificationEnabled:Z

    .line 72
    .line 73
    if-eqz v6, :cond_2

    .line 74
    .line 75
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    new-instance v6, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda2;

    .line 79
    .line 80
    const/4 v9, 0x0

    .line 81
    invoke-direct {v6, v9, v7}, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    invoke-static {v6, v9, v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    iget-object v7, v7, Lcom/android/server/accessibility/PolicyWarningUIController;->mMainHandler:Landroid/os/Handler;

    .line 93
    .line 94
    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 95
    .line 96
    .line 97
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    :goto_2
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    .line 101
    .line 102
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-ge v4, v2, :cond_4

    .line 107
    .line 108
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    .line 109
    .line 110
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    check-cast v2, Landroid/content/ComponentName;

    .line 115
    .line 116
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    new-instance v5, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda2;

    .line 120
    .line 121
    const/4 v6, 0x1

    .line 122
    invoke-direct {v5, v6, v7}, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-static {v5, v6, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    iget-object v5, v7, Lcom/android/server/accessibility/PolicyWarningUIController;->mMainHandler:Landroid/os/Handler;

    .line 134
    .line 135
    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 136
    .line 137
    .line 138
    add-int/lit8 v4, v4, 0x1

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_4
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    .line 142
    .line 143
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 144
    .line 145
    .line 146
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    .line 147
    .line 148
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 149
    .line 150
    .line 151
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/accessibility/AccessibilityShellCommand;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/accessibility/AccessibilityShellCommand;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/SystemActionPerformer;)V

    .line 8
    .line 9
    .line 10
    move-object v1, p0

    .line 11
    move-object v2, p1

    .line 12
    move-object v3, p2

    .line 13
    move-object v4, p3

    .line 14
    move-object v5, p4

    .line 15
    move-object v6, p5

    .line 16
    move-object v7, p6

    .line 17
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onTouchInteractionEnd()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    .line 8
    .line 9
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 10
    .line 11
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    .line 12
    .line 13
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->setActiveWindowLocked(I)V

    .line 14
    .line 15
    .line 16
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 17
    .line 18
    if-eq v2, v3, :cond_1

    .line 19
    .line 20
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    .line 21
    .line 22
    if-ne v3, v2, :cond_1

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x1

    .line 31
    if-lez v3, :cond_0

    .line 32
    .line 33
    move v1, v4

    .line 34
    :cond_0
    xor-int/2addr v1, v4

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->clearAccessibilityFocusLocked(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

.method public final onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v15, p1

    .line 4
    .line 5
    const/4 v14, 0x1

    .line 6
    iput-boolean v14, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInitialized:Z

    .line 7
    .line 8
    iget-object v1, v15, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    .line 9
    .line 10
    check-cast v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v13, 0x0

    .line 17
    move v2, v13

    .line 18
    :goto_0
    const/16 v12, 0x11

    .line 19
    .line 20
    const/16 v16, 0x2

    .line 21
    .line 22
    if-ge v2, v1, :cond_2

    .line 23
    .line 24
    iget-object v3, v15, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    .line 25
    .line 26
    check-cast v3, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 33
    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    and-int/lit8 v5, v5, 0x2

    .line 46
    .line 47
    if-nez v5, :cond_1

    .line 48
    .line 49
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 50
    .line 51
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 52
    .line 53
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 54
    .line 55
    if-gt v5, v12, :cond_1

    .line 56
    .line 57
    new-instance v5, Landroid/content/ComponentName;

    .line 58
    .line 59
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 60
    .line 61
    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 64
    .line 65
    invoke-direct {v5, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v4, v15, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    .line 69
    .line 70
    check-cast v4, Ljava/util/HashSet;

    .line 71
    .line 72
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_1

    .line 77
    .line 78
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    or-int/lit8 v4, v4, 0x2

    .line 83
    .line 84
    invoke-virtual {v3, v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    .line 85
    .line 86
    .line 87
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    iget-object v11, v15, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    .line 91
    .line 92
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUmi:Lcom/android/server/pm/UserManagerInternal;

    .line 93
    .line 94
    iget v2, v15, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    .line 97
    .line 98
    .line 99
    move-result v17

    .line 100
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 101
    .line 102
    check-cast v1, Ljava/util/HashSet;

    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 105
    .line 106
    .line 107
    iget-object v1, v15, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    .line 108
    .line 109
    check-cast v1, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    move v9, v13

    .line 116
    :goto_2
    const/4 v7, 0x0

    .line 117
    if-ge v9, v10, :cond_15

    .line 118
    .line 119
    iget-object v1, v15, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    .line 120
    .line 121
    check-cast v1, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    move-object v5, v1

    .line 128
    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 129
    .line 130
    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 139
    .line 140
    check-cast v1, Ljava/util/HashSet;

    .line 141
    .line 142
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-object v1, v11

    .line 146
    check-cast v1, Ljava/util/HashMap;

    .line 147
    .line 148
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 153
    .line 154
    if-nez v17, :cond_4

    .line 155
    .line 156
    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isDirectBootAware()Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-nez v2, :cond_4

    .line 161
    .line 162
    const-string v1, "AccessibilityManagerService"

    .line 163
    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v3, "Ignoring non-encryption-aware service "

    .line 167
    .line 168
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    :cond_3
    :goto_3
    move/from16 v23, v9

    .line 182
    .line 183
    move/from16 v22, v10

    .line 184
    .line 185
    move-object/from16 v24, v11

    .line 186
    .line 187
    move/from16 v19, v14

    .line 188
    .line 189
    move-object v11, v15

    .line 190
    goto/16 :goto_b

    .line 191
    .line 192
    :cond_4
    iget-object v2, v15, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    .line 193
    .line 194
    check-cast v2, Ljava/util/HashSet;

    .line 195
    .line 196
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-nez v2, :cond_3

    .line 201
    .line 202
    iget-object v2, v15, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    .line 203
    .line 204
    check-cast v2, Ljava/util/HashSet;

    .line 205
    .line 206
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-eqz v2, :cond_5

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_5
    iget-object v2, v15, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 214
    .line 215
    check-cast v2, Ljava/util/HashSet;

    .line 216
    .line 217
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-eqz v2, :cond_d

    .line 222
    .line 223
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 224
    .line 225
    invoke-virtual {v2}, Lcom/android/server/accessibility/UiAutomationManager;->suppressingAccessibilityServicesLocked()Z

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    if-nez v2, :cond_d

    .line 230
    .line 231
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 240
    .line 241
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 242
    .line 243
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 244
    .line 245
    iget v6, v15, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 246
    .line 247
    invoke-virtual {v0, v2, v3, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->isAccessibilityTargetAllowed(Ljava/lang/String;II)Z

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    if-nez v2, :cond_6

    .line 252
    .line 253
    const-string v1, "AccessibilityManagerService"

    .line 254
    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string v3, "Skipping enabling service disallowed by device admin policy: "

    .line 258
    .line 259
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    iget v1, v15, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 273
    .line 274
    invoke-virtual {v0, v1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->disableAccessibilityServiceLocked(ILandroid/content/ComponentName;)V

    .line 275
    .line 276
    .line 277
    goto :goto_3

    .line 278
    :cond_6
    if-nez v1, :cond_7

    .line 279
    .line 280
    new-instance v18, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 281
    .line 282
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 283
    .line 284
    sget v6, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    .line 285
    .line 286
    add-int/lit8 v1, v6, 0x1

    .line 287
    .line 288
    sput v1, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    .line 289
    .line 290
    iget-object v7, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 291
    .line 292
    iget-object v8, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 293
    .line 294
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 295
    .line 296
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 297
    .line 298
    iget-object v12, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 299
    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getSystemActionPerformer()Lcom/android/server/accessibility/SystemActionPerformer;

    .line 301
    .line 302
    .line 303
    move-result-object v20

    .line 304
    iget-object v14, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 305
    .line 306
    iget-object v15, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 307
    .line 308
    move-object/from16 v21, v1

    .line 309
    .line 310
    move-object/from16 v1, v18

    .line 311
    .line 312
    move-object/from16 v22, v2

    .line 313
    .line 314
    move-object/from16 v2, p1

    .line 315
    .line 316
    move/from16 v23, v9

    .line 317
    .line 318
    move-object/from16 v9, v22

    .line 319
    .line 320
    move/from16 v22, v10

    .line 321
    .line 322
    move-object/from16 v10, p0

    .line 323
    .line 324
    move-object/from16 v24, v11

    .line 325
    .line 326
    move-object/from16 v11, v21

    .line 327
    .line 328
    move-object/from16 v13, v20

    .line 329
    .line 330
    const/16 v19, 0x1

    .line 331
    .line 332
    move-object/from16 v0, p1

    .line 333
    .line 334
    invoke-direct/range {v1 .. v15}, Lcom/android/server/accessibility/AccessibilityServiceConnection;-><init>(Lcom/android/server/accessibility/AccessibilityUserState;Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;Lcom/android/server/wm/ActivityTaskManagerInternal;)V

    .line 335
    .line 336
    .line 337
    goto :goto_5

    .line 338
    :cond_7
    move/from16 v23, v9

    .line 339
    .line 340
    move/from16 v22, v10

    .line 341
    .line 342
    move-object/from16 v24, v11

    .line 343
    .line 344
    move/from16 v19, v14

    .line 345
    .line 346
    move-object v0, v15

    .line 347
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 348
    .line 349
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    if-eqz v2, :cond_9

    .line 354
    .line 355
    :cond_8
    :goto_4
    move-object v11, v0

    .line 356
    move-object/from16 v0, p0

    .line 357
    .line 358
    goto/16 :goto_b

    .line 359
    .line 360
    :cond_9
    :goto_5
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    .line 361
    .line 362
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    check-cast v2, Lcom/android/server/accessibility/AccessibilityUserState;

    .line 367
    .line 368
    if-nez v2, :cond_a

    .line 369
    .line 370
    goto :goto_4

    .line 371
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 372
    .line 373
    .line 374
    move-result-wide v3

    .line 375
    :try_start_0
    iget-boolean v5, v2, Lcom/android/server/accessibility/AccessibilityUserState;->mBindInstantServiceAllowed:Z

    .line 376
    .line 377
    if-eqz v5, :cond_b

    .line 378
    .line 379
    const v5, 0x2501001

    .line 380
    .line 381
    .line 382
    goto :goto_6

    .line 383
    :cond_b
    const v5, 0x2101001

    .line 384
    .line 385
    .line 386
    :goto_6
    iget-object v6, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    .line 388
    iget v7, v2, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 389
    .line 390
    if-nez v6, :cond_c

    .line 391
    .line 392
    :try_start_1
    iget-object v6, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 393
    .line 394
    iget-object v8, v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIntent:Landroid/content/Intent;

    .line 395
    .line 396
    new-instance v9, Landroid/os/UserHandle;

    .line 397
    .line 398
    invoke-direct {v9, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v6, v8, v1, v5, v9}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 402
    .line 403
    .line 404
    move-result v5

    .line 405
    if-eqz v5, :cond_c

    .line 406
    .line 407
    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    .line 408
    .line 409
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    .line 410
    .line 411
    check-cast v2, Ljava/util/HashSet;

    .line 412
    .line 413
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    .line 415
    .line 416
    goto :goto_7

    .line 417
    :catchall_0
    move-exception v0

    .line 418
    goto :goto_8

    .line 419
    :cond_c
    :goto_7
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 420
    .line 421
    .line 422
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 423
    .line 424
    iget-object v3, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    .line 425
    .line 426
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    iget-object v1, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 431
    .line 432
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 437
    .line 438
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 439
    .line 440
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 441
    .line 442
    invoke-virtual {v2, v1, v7, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setAllowAppSwitches(IILjava/lang/String;)V

    .line 443
    .line 444
    .line 445
    goto :goto_4

    .line 446
    :goto_8
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 447
    .line 448
    .line 449
    throw v0

    .line 450
    :cond_d
    move/from16 v23, v9

    .line 451
    .line 452
    move/from16 v22, v10

    .line 453
    .line 454
    move-object/from16 v24, v11

    .line 455
    .line 456
    move/from16 v19, v14

    .line 457
    .line 458
    move-object v0, v15

    .line 459
    if-eqz v1, :cond_8

    .line 460
    .line 461
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->unbindLocked()V

    .line 462
    .line 463
    .line 464
    iget-boolean v2, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    .line 465
    .line 466
    if-eqz v2, :cond_8

    .line 467
    .line 468
    iget-object v2, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 469
    .line 470
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 475
    .line 476
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 477
    .line 478
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 479
    .line 480
    const/16 v3, 0x1d

    .line 481
    .line 482
    if-gt v2, v3, :cond_e

    .line 483
    .line 484
    goto/16 :goto_4

    .line 485
    .line 486
    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    .line 487
    .line 488
    const/4 v3, 0x3

    .line 489
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 490
    .line 491
    .line 492
    new-instance v3, Landroid/util/Pair;

    .line 493
    .line 494
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 495
    .line 496
    .line 497
    move-result-object v4

    .line 498
    const-string v5, "accessibility_shortcut_target_service"

    .line 499
    .line 500
    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    new-instance v3, Landroid/util/Pair;

    .line 507
    .line 508
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 509
    .line 510
    .line 511
    move-result-object v4

    .line 512
    const-string v5, "accessibility_button_targets"

    .line 513
    .line 514
    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    invoke-static {}, Landroid/view/accessibility/Flags;->a11yQsShortcut()Z

    .line 521
    .line 522
    .line 523
    move-result v3

    .line 524
    const/16 v8, 0x10

    .line 525
    .line 526
    if-eqz v3, :cond_f

    .line 527
    .line 528
    new-instance v3, Landroid/util/Pair;

    .line 529
    .line 530
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 531
    .line 532
    .line 533
    move-result-object v4

    .line 534
    const-string v5, "accessibility_qs_targets"

    .line 535
    .line 536
    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    :cond_f
    iget-object v9, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    .line 543
    .line 544
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 545
    .line 546
    .line 547
    move-result-object v10

    .line 548
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 549
    .line 550
    .line 551
    move-result v1

    .line 552
    if-eqz v1, :cond_13

    .line 553
    .line 554
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v1

    .line 558
    check-cast v1, Landroid/util/Pair;

    .line 559
    .line 560
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 561
    .line 562
    check-cast v2, Ljava/lang/Integer;

    .line 563
    .line 564
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 565
    .line 566
    .line 567
    move-result v11

    .line 568
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 569
    .line 570
    move-object v2, v1

    .line 571
    check-cast v2, Ljava/lang/String;

    .line 572
    .line 573
    invoke-virtual {v0, v11, v9}, Lcom/android/server/accessibility/AccessibilityUserState;->removeShortcutTargetLocked(ILandroid/content/ComponentName;)Z

    .line 574
    .line 575
    .line 576
    move-result v1

    .line 577
    if-eqz v1, :cond_12

    .line 578
    .line 579
    invoke-virtual {v0, v11}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Ljava/util/LinkedHashSet;

    .line 580
    .line 581
    .line 582
    move-result-object v4

    .line 583
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 584
    .line 585
    const/4 v1, 0x0

    .line 586
    invoke-direct {v5, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 587
    .line 588
    .line 589
    const/4 v6, 0x0

    .line 590
    iget v3, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 591
    .line 592
    move-object/from16 v1, p0

    .line 593
    .line 594
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    if-eq v11, v8, :cond_10

    .line 598
    .line 599
    goto :goto_9

    .line 600
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getA11yFeatureToTileService()Ljava/util/Map;

    .line 601
    .line 602
    .line 603
    move-result-object v1

    .line 604
    invoke-interface {v1, v9, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v1

    .line 608
    check-cast v1, Landroid/content/ComponentName;

    .line 609
    .line 610
    const-class v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 611
    .line 612
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    move-result-object v2

    .line 616
    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 617
    .line 618
    if-eqz v2, :cond_12

    .line 619
    .line 620
    if-nez v1, :cond_11

    .line 621
    .line 622
    goto :goto_9

    .line 623
    :cond_11
    move-object v11, v0

    .line 624
    move-object/from16 v0, p0

    .line 625
    .line 626
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 627
    .line 628
    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;

    .line 629
    .line 630
    const/16 v5, 0xb

    .line 631
    .line 632
    invoke-direct {v4, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;-><init>(I)V

    .line 633
    .line 634
    .line 635
    invoke-static {v4, v2, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 636
    .line 637
    .line 638
    move-result-object v1

    .line 639
    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 640
    .line 641
    .line 642
    goto :goto_a

    .line 643
    :cond_12
    move-object v11, v0

    .line 644
    move-object/from16 v0, p0

    .line 645
    .line 646
    :goto_a
    move-object v0, v11

    .line 647
    goto :goto_9

    .line 648
    :cond_13
    move-object v11, v0

    .line 649
    move-object/from16 v0, p0

    .line 650
    .line 651
    const/16 v1, 0x200

    .line 652
    .line 653
    invoke-virtual {v11, v1, v9}, Lcom/android/server/accessibility/AccessibilityUserState;->removeShortcutTargetLocked(ILandroid/content/ComponentName;)Z

    .line 654
    .line 655
    .line 656
    move-result v1

    .line 657
    if-eqz v1, :cond_14

    .line 658
    .line 659
    iget-object v4, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityDirectAccessTargets:Ljava/util/LinkedHashSet;

    .line 660
    .line 661
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 662
    .line 663
    const/4 v1, 0x0

    .line 664
    invoke-direct {v5, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 665
    .line 666
    .line 667
    const-string v2, "accessibility_direct_access_target_service"

    .line 668
    .line 669
    iget v3, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 670
    .line 671
    const/4 v6, 0x0

    .line 672
    move-object/from16 v1, p0

    .line 673
    .line 674
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    :cond_14
    :goto_b
    add-int/lit8 v9, v23, 0x1

    .line 678
    .line 679
    move-object v15, v11

    .line 680
    move/from16 v14, v19

    .line 681
    .line 682
    move/from16 v10, v22

    .line 683
    .line 684
    move-object/from16 v11, v24

    .line 685
    .line 686
    const/16 v12, 0x11

    .line 687
    .line 688
    const/4 v13, 0x0

    .line 689
    goto/16 :goto_2

    .line 690
    .line 691
    :cond_15
    move/from16 v19, v14

    .line 692
    .line 693
    move-object v11, v15

    .line 694
    iget-object v1, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 695
    .line 696
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 697
    .line 698
    .line 699
    move-result v1

    .line 700
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    .line 701
    .line 702
    invoke-virtual {v2}, Landroid/util/IntArray;->clear()V

    .line 703
    .line 704
    .line 705
    const/4 v13, 0x0

    .line 706
    :goto_c
    if-ge v13, v1, :cond_17

    .line 707
    .line 708
    iget-object v2, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 709
    .line 710
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 711
    .line 712
    .line 713
    move-result-object v2

    .line 714
    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 715
    .line 716
    iget-object v2, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 717
    .line 718
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    .line 719
    .line 720
    .line 721
    move-result-object v2

    .line 722
    if-eqz v2, :cond_16

    .line 723
    .line 724
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    .line 725
    .line 726
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 727
    .line 728
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 729
    .line 730
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 731
    .line 732
    invoke-virtual {v3, v2}, Landroid/util/IntArray;->add(I)V

    .line 733
    .line 734
    .line 735
    :cond_16
    add-int/lit8 v13, v13, 0x1

    .line 736
    .line 737
    goto :goto_c

    .line 738
    :cond_17
    const-class v1, Landroid/media/AudioManagerInternal;

    .line 739
    .line 740
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object v1

    .line 744
    check-cast v1, Landroid/media/AudioManagerInternal;

    .line 745
    .line 746
    if-eqz v1, :cond_18

    .line 747
    .line 748
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    .line 749
    .line 750
    invoke-virtual {v1, v2}, Landroid/media/AudioManagerInternal;->setAccessibilityServiceUids(Landroid/util/IntArray;)V

    .line 751
    .line 752
    .line 753
    :cond_18
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 754
    .line 755
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    .line 756
    .line 757
    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 758
    .line 759
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 760
    .line 761
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 762
    .line 763
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 764
    .line 765
    .line 766
    monitor-enter v3

    .line 767
    :try_start_2
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 768
    .line 769
    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    .line 770
    .line 771
    .line 772
    move-result-object v2

    .line 773
    iput-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAccessibilityServiceUids:[I

    .line 774
    .line 775
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 776
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 777
    .line 778
    .line 779
    iget-object v1, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 780
    .line 781
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda25;

    .line 782
    .line 783
    const/4 v3, 0x0

    .line 784
    invoke-direct {v2, v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda25;-><init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 785
    .line 786
    .line 787
    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 788
    .line 789
    .line 790
    move-result v1

    .line 791
    if-nez v1, :cond_19

    .line 792
    .line 793
    iget-object v1, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    .line 794
    .line 795
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda25;

    .line 796
    .line 797
    const/4 v3, 0x1

    .line 798
    invoke-direct {v2, v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda25;-><init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 799
    .line 800
    .line 801
    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 802
    .line 803
    .line 804
    move-result v1

    .line 805
    if-eqz v1, :cond_1a

    .line 806
    .line 807
    :cond_19
    const-string/jumbo v1, "enabled_accessibility_services"

    .line 808
    .line 809
    .line 810
    iget-object v2, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 811
    .line 812
    iget v3, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 813
    .line 814
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(ILjava/lang/String;Ljava/util/Set;)V

    .line 815
    .line 816
    .line 817
    const-string/jumbo v1, "touch_exploration_granted_accessibility_services"

    .line 818
    .line 819
    .line 820
    iget-object v2, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    .line 821
    .line 822
    iget v3, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 823
    .line 824
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(ILjava/lang/String;Ljava/util/Set;)V

    .line 825
    .line 826
    .line 827
    :cond_1a
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 828
    .line 829
    iget-object v1, v1, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 830
    .line 831
    if-eqz v1, :cond_1b

    .line 832
    .line 833
    goto :goto_d

    .line 834
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isHandlingAccessibilityEventsLocked()Z

    .line 835
    .line 836
    .line 837
    move-result v1

    .line 838
    if-eqz v1, :cond_1c

    .line 839
    .line 840
    :goto_d
    move/from16 v14, v19

    .line 841
    .line 842
    goto :goto_e

    .line 843
    :cond_1c
    const/4 v14, 0x0

    .line 844
    :goto_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 845
    .line 846
    .line 847
    move-result-wide v1

    .line 848
    :try_start_3
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 849
    .line 850
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 851
    .line 852
    .line 853
    move-result-object v3

    .line 854
    const-string v4, "accessibility_enabled"

    .line 855
    .line 856
    iget v5, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 857
    .line 858
    invoke-static {v3, v4, v14, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 859
    .line 860
    .line 861
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 862
    .line 863
    .line 864
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateWindowsForAccessibilityCallbackLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 865
    .line 866
    .line 867
    iget-object v1, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 868
    .line 869
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 870
    .line 871
    .line 872
    move-result v1

    .line 873
    const/4 v13, 0x0

    .line 874
    :goto_f
    const/16 v8, 0x8

    .line 875
    .line 876
    if-ge v13, v1, :cond_1e

    .line 877
    .line 878
    iget-object v2, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 879
    .line 880
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 881
    .line 882
    .line 883
    move-result-object v2

    .line 884
    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 885
    .line 886
    iget-boolean v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestFilterKeyEvents:Z

    .line 887
    .line 888
    if-eqz v3, :cond_1d

    .line 889
    .line 890
    invoke-virtual {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    .line 891
    .line 892
    .line 893
    move-result v2

    .line 894
    and-int/2addr v2, v8

    .line 895
    if-eqz v2, :cond_1d

    .line 896
    .line 897
    move/from16 v9, v19

    .line 898
    .line 899
    iput-boolean v9, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mIsFilterKeyEventsEnabled:Z

    .line 900
    .line 901
    const/4 v10, 0x0

    .line 902
    goto :goto_10

    .line 903
    :cond_1d
    move/from16 v9, v19

    .line 904
    .line 905
    add-int/lit8 v13, v13, 0x1

    .line 906
    .line 907
    move/from16 v19, v9

    .line 908
    .line 909
    goto :goto_f

    .line 910
    :cond_1e
    move/from16 v9, v19

    .line 911
    .line 912
    const/4 v10, 0x0

    .line 913
    iput-boolean v10, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mIsFilterKeyEventsEnabled:Z

    .line 914
    .line 915
    :goto_10
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 916
    .line 917
    iget-object v1, v1, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 918
    .line 919
    if-eqz v1, :cond_1f

    .line 920
    .line 921
    iget-boolean v1, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    .line 922
    .line 923
    if-eqz v1, :cond_1f

    .line 924
    .line 925
    move v14, v9

    .line 926
    goto :goto_11

    .line 927
    :cond_1f
    move v14, v10

    .line 928
    :goto_11
    iget-object v1, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 929
    .line 930
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 931
    .line 932
    .line 933
    move-result v1

    .line 934
    move v13, v10

    .line 935
    :goto_12
    if-ge v13, v1, :cond_26

    .line 936
    .line 937
    iget-object v2, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 938
    .line 939
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 940
    .line 941
    .line 942
    move-result-object v2

    .line 943
    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 944
    .line 945
    iget v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    .line 946
    .line 947
    if-eqz v3, :cond_24

    .line 948
    .line 949
    iget-object v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 950
    .line 951
    if-eqz v3, :cond_24

    .line 952
    .line 953
    iget-boolean v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    .line 954
    .line 955
    if-nez v3, :cond_20

    .line 956
    .line 957
    goto :goto_14

    .line 958
    :cond_20
    iget-object v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 959
    .line 960
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    .line 961
    .line 962
    .line 963
    move-result-object v3

    .line 964
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 965
    .line 966
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 967
    .line 968
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 969
    .line 970
    const/16 v4, 0x11

    .line 971
    .line 972
    if-gt v3, v4, :cond_23

    .line 973
    .line 974
    iget-object v3, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    .line 975
    .line 976
    iget-object v5, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    .line 977
    .line 978
    check-cast v3, Ljava/util/HashSet;

    .line 979
    .line 980
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 981
    .line 982
    .line 983
    move-result v3

    .line 984
    if-eqz v3, :cond_21

    .line 985
    .line 986
    goto :goto_13

    .line 987
    :cond_21
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    .line 988
    .line 989
    if-eqz v3, :cond_22

    .line 990
    .line 991
    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    .line 992
    .line 993
    .line 994
    move-result v3

    .line 995
    if-nez v3, :cond_25

    .line 996
    .line 997
    :cond_22
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 998
    .line 999
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;

    .line 1000
    .line 1001
    const/16 v6, 0xa

    .line 1002
    .line 1003
    invoke-direct {v5, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;-><init>(I)V

    .line 1004
    .line 1005
    .line 1006
    invoke-static {v5, v0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v2

    .line 1010
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1011
    .line 1012
    .line 1013
    goto :goto_15

    .line 1014
    :cond_23
    invoke-virtual {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    .line 1015
    .line 1016
    .line 1017
    move-result v3

    .line 1018
    and-int/lit8 v3, v3, 0x2

    .line 1019
    .line 1020
    if-eqz v3, :cond_25

    .line 1021
    .line 1022
    :goto_13
    iget-boolean v13, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceHandlesDoubleTap:Z

    .line 1023
    .line 1024
    iget-boolean v1, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestMultiFingerGestures:Z

    .line 1025
    .line 1026
    iget-boolean v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTwoFingerPassthrough:Z

    .line 1027
    .line 1028
    iget-boolean v2, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSendMotionEvents:Z

    .line 1029
    .line 1030
    move v14, v9

    .line 1031
    goto :goto_16

    .line 1032
    :cond_24
    :goto_14
    const/16 v4, 0x11

    .line 1033
    .line 1034
    :cond_25
    :goto_15
    add-int/lit8 v13, v13, 0x1

    .line 1035
    .line 1036
    goto :goto_12

    .line 1037
    :cond_26
    move v1, v10

    .line 1038
    move v2, v1

    .line 1039
    move v3, v2

    .line 1040
    move v13, v3

    .line 1041
    :goto_16
    iget-boolean v4, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    .line 1042
    .line 1043
    if-eq v14, v4, :cond_27

    .line 1044
    .line 1045
    iput-boolean v14, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    .line 1046
    .line 1047
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 1048
    .line 1049
    .line 1050
    move-result-wide v4

    .line 1051
    :try_start_4
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 1052
    .line 1053
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v6

    .line 1057
    const-string/jumbo v12, "touch_exploration_enabled"

    .line 1058
    .line 1059
    .line 1060
    iget v15, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 1061
    .line 1062
    invoke-static {v6, v12, v14, v15}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1063
    .line 1064
    .line 1065
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1066
    .line 1067
    .line 1068
    goto :goto_17

    .line 1069
    :catchall_1
    move-exception v0

    .line 1070
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1071
    .line 1072
    .line 1073
    throw v0

    .line 1074
    :cond_27
    :goto_17
    iget-object v4, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceDetectsGestures:Landroid/util/SparseArray;

    .line 1075
    .line 1076
    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1077
    .line 1078
    .line 1079
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v4

    .line 1083
    iget-object v5, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 1084
    .line 1085
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v5

    .line 1089
    :cond_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1090
    .line 1091
    .line 1092
    move-result v6

    .line 1093
    if-eqz v6, :cond_2a

    .line 1094
    .line 1095
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v6

    .line 1099
    check-cast v6, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1100
    .line 1101
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v12

    .line 1105
    :goto_18
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 1106
    .line 1107
    .line 1108
    move-result v14

    .line 1109
    if-eqz v14, :cond_28

    .line 1110
    .line 1111
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v14

    .line 1115
    check-cast v14, Landroid/view/Display;

    .line 1116
    .line 1117
    invoke-virtual {v14}, Landroid/view/Display;->getDisplayId()I

    .line 1118
    .line 1119
    .line 1120
    move-result v14

    .line 1121
    invoke-virtual {v6, v14}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isServiceDetectsGesturesEnabled(I)Z

    .line 1122
    .line 1123
    .line 1124
    move-result v15

    .line 1125
    if-eqz v15, :cond_29

    .line 1126
    .line 1127
    iget-object v15, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceDetectsGestures:Landroid/util/SparseArray;

    .line 1128
    .line 1129
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1130
    .line 1131
    invoke-virtual {v15, v14, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1132
    .line 1133
    .line 1134
    :cond_29
    const/4 v7, 0x0

    .line 1135
    goto :goto_18

    .line 1136
    :cond_2a
    iput-boolean v13, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceHandlesDoubleTap:Z

    .line 1137
    .line 1138
    iput-boolean v1, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestMultiFingerGestures:Z

    .line 1139
    .line 1140
    iput-boolean v3, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestTwoFingerPassthrough:Z

    .line 1141
    .line 1142
    iput-boolean v2, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mSendMotionEventsEnabled:Z

    .line 1143
    .line 1144
    iget-object v1, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 1145
    .line 1146
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1147
    .line 1148
    .line 1149
    move-result v1

    .line 1150
    move v13, v10

    .line 1151
    :goto_19
    if-ge v13, v1, :cond_2c

    .line 1152
    .line 1153
    iget-object v2, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 1154
    .line 1155
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v2

    .line 1159
    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1160
    .line 1161
    invoke-virtual {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    .line 1162
    .line 1163
    .line 1164
    move-result v2

    .line 1165
    and-int/lit8 v2, v2, 0x20

    .line 1166
    .line 1167
    if-eqz v2, :cond_2b

    .line 1168
    .line 1169
    iput-boolean v9, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mIsPerformGesturesEnabled:Z

    .line 1170
    .line 1171
    goto :goto_1a

    .line 1172
    :cond_2b
    add-int/lit8 v13, v13, 0x1

    .line 1173
    .line 1174
    goto :goto_19

    .line 1175
    :cond_2c
    iput-boolean v10, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mIsPerformGesturesEnabled:Z

    .line 1176
    .line 1177
    :goto_1a
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1178
    .line 1179
    .line 1180
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 1181
    .line 1182
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;

    .line 1183
    .line 1184
    const/16 v3, 0x9

    .line 1185
    .line 1186
    invoke-direct {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;-><init>(I)V

    .line 1187
    .line 1188
    .line 1189
    invoke-static {v2, v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v2

    .line 1193
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1194
    .line 1195
    .line 1196
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 1197
    .line 1198
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;

    .line 1199
    .line 1200
    const/16 v3, 0x8

    .line 1201
    .line 1202
    invoke-direct {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;-><init>(I)V

    .line 1203
    .line 1204
    .line 1205
    invoke-static {v2, v0, v11}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v2

    .line 1209
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1210
    .line 1211
    .line 1212
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 1213
    .line 1214
    const-wide/16 v12, 0x2

    .line 1215
    .line 1216
    invoke-virtual {v1, v12, v13}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 1217
    .line 1218
    .line 1219
    move-result v1

    .line 1220
    if-eqz v1, :cond_2d

    .line 1221
    .line 1222
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 1223
    .line 1224
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1225
    .line 1226
    const-string/jumbo v3, "userState="

    .line 1227
    .line 1228
    .line 1229
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1230
    .line 1231
    .line 1232
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1233
    .line 1234
    .line 1235
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v2

    .line 1239
    const-string v3, "AccessibilityManagerService.updateRelevantEventsLocked"

    .line 1240
    .line 1241
    invoke-virtual {v1, v3, v12, v13, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1242
    .line 1243
    .line 1244
    :cond_2d
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 1245
    .line 1246
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda8;

    .line 1247
    .line 1248
    const/4 v3, 0x1

    .line 1249
    invoke-direct {v2, v0, v11, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;I)V

    .line 1250
    .line 1251
    .line 1252
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1253
    .line 1254
    .line 1255
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 1256
    .line 1257
    .line 1258
    iget-object v4, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityShortcutKeyTargets:Ljava/util/LinkedHashSet;

    .line 1259
    .line 1260
    invoke-interface {v4}, Ljava/util/Set;->size()I

    .line 1261
    .line 1262
    .line 1263
    move-result v1

    .line 1264
    if-nez v1, :cond_2e

    .line 1265
    .line 1266
    goto :goto_1b

    .line 1267
    :cond_2e
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda4;

    .line 1268
    .line 1269
    const/4 v3, 0x3

    .line 1270
    invoke-direct {v2, v11, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/accessibility/AccessibilityUserState;I)V

    .line 1271
    .line 1272
    .line 1273
    invoke-interface {v4, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1274
    .line 1275
    .line 1276
    invoke-interface {v4}, Ljava/util/Set;->size()I

    .line 1277
    .line 1278
    .line 1279
    move-result v2

    .line 1280
    if-ne v1, v2, :cond_2f

    .line 1281
    .line 1282
    goto :goto_1b

    .line 1283
    :cond_2f
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 1284
    .line 1285
    const/4 v1, 0x0

    .line 1286
    invoke-direct {v5, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 1287
    .line 1288
    .line 1289
    const-string v2, "accessibility_shortcut_target_service"

    .line 1290
    .line 1291
    iget v3, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 1292
    .line 1293
    const/4 v6, 0x0

    .line 1294
    move-object/from16 v1, p0

    .line 1295
    .line 1296
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;Ljava/lang/String;)V

    .line 1297
    .line 1298
    .line 1299
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1300
    .line 1301
    .line 1302
    :goto_1b
    iget-object v1, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 1303
    .line 1304
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1305
    .line 1306
    .line 1307
    move-result v1

    .line 1308
    sub-int/2addr v1, v9

    .line 1309
    :goto_1c
    if-ltz v1, :cond_31

    .line 1310
    .line 1311
    iget-object v2, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 1312
    .line 1313
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v2

    .line 1317
    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1318
    .line 1319
    iget-boolean v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    .line 1320
    .line 1321
    if-eqz v3, :cond_30

    .line 1322
    .line 1323
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isAccessibilityButtonAvailableLocked()Z

    .line 1324
    .line 1325
    .line 1326
    move-result v3

    .line 1327
    iget-object v2, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 1328
    .line 1329
    invoke-virtual {v2, v8, v3, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v2

    .line 1333
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1334
    .line 1335
    .line 1336
    :cond_30
    add-int/lit8 v1, v1, -0x1

    .line 1337
    .line 1338
    goto :goto_1c

    .line 1339
    :cond_31
    iget-object v4, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Ljava/util/LinkedHashSet;

    .line 1340
    .line 1341
    invoke-interface {v4}, Ljava/util/Set;->size()I

    .line 1342
    .line 1343
    .line 1344
    move-result v1

    .line 1345
    if-nez v1, :cond_32

    .line 1346
    .line 1347
    goto :goto_1d

    .line 1348
    :cond_32
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda4;

    .line 1349
    .line 1350
    const/4 v3, 0x2

    .line 1351
    invoke-direct {v2, v11, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/accessibility/AccessibilityUserState;I)V

    .line 1352
    .line 1353
    .line 1354
    invoke-interface {v4, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1355
    .line 1356
    .line 1357
    invoke-interface {v4}, Ljava/util/Set;->size()I

    .line 1358
    .line 1359
    .line 1360
    move-result v2

    .line 1361
    if-ne v1, v2, :cond_33

    .line 1362
    .line 1363
    goto :goto_1d

    .line 1364
    :cond_33
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 1365
    .line 1366
    const/4 v1, 0x0

    .line 1367
    invoke-direct {v5, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 1368
    .line 1369
    .line 1370
    const-string v2, "accessibility_button_targets"

    .line 1371
    .line 1372
    iget v3, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 1373
    .line 1374
    const/4 v6, 0x0

    .line 1375
    move-object/from16 v1, p0

    .line 1376
    .line 1377
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;Ljava/lang/String;)V

    .line 1378
    .line 1379
    .line 1380
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1381
    .line 1382
    .line 1383
    :goto_1d
    invoke-static {}, Landroid/view/accessibility/Flags;->a11yQsShortcut()Z

    .line 1384
    .line 1385
    .line 1386
    move-result v1

    .line 1387
    if-nez v1, :cond_34

    .line 1388
    .line 1389
    goto :goto_1f

    .line 1390
    :cond_34
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 1391
    .line 1392
    iget-object v1, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityQsTargets:Ljava/util/LinkedHashSet;

    .line 1393
    .line 1394
    invoke-direct {v4, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 1395
    .line 1396
    .line 1397
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda4;

    .line 1398
    .line 1399
    const/4 v2, 0x1

    .line 1400
    invoke-direct {v1, v11, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/accessibility/AccessibilityUserState;I)V

    .line 1401
    .line 1402
    .line 1403
    invoke-interface {v4, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1404
    .line 1405
    .line 1406
    move-result v1

    .line 1407
    iget-object v2, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 1408
    .line 1409
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getA11yFeatureToTileService()Ljava/util/Map;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v3

    .line 1413
    new-instance v5, Landroid/util/ArraySet;

    .line 1414
    .line 1415
    iget-object v6, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yTilesInQsPanel:Landroid/util/ArraySet;

    .line 1416
    .line 1417
    invoke-direct {v5, v6}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 1418
    .line 1419
    .line 1420
    check-cast v2, Ljava/util/HashSet;

    .line 1421
    .line 1422
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v2

    .line 1426
    :cond_35
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1427
    .line 1428
    .line 1429
    move-result v6

    .line 1430
    if-eqz v6, :cond_36

    .line 1431
    .line 1432
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v6

    .line 1436
    check-cast v6, Landroid/content/ComponentName;

    .line 1437
    .line 1438
    const/4 v7, 0x0

    .line 1439
    invoke-interface {v3, v6, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v8

    .line 1443
    check-cast v8, Landroid/content/ComponentName;

    .line 1444
    .line 1445
    if-eqz v8, :cond_35

    .line 1446
    .line 1447
    invoke-virtual {v5, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 1448
    .line 1449
    .line 1450
    move-result v8

    .line 1451
    if-eqz v8, :cond_35

    .line 1452
    .line 1453
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 1454
    .line 1455
    .line 1456
    move-result-object v6

    .line 1457
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1458
    .line 1459
    .line 1460
    move-result v6

    .line 1461
    or-int/2addr v1, v6

    .line 1462
    goto :goto_1e

    .line 1463
    :cond_36
    if-nez v1, :cond_37

    .line 1464
    .line 1465
    goto :goto_1f

    .line 1466
    :cond_37
    invoke-virtual {v11, v4}, Lcom/android/server/accessibility/AccessibilityUserState;->updateA11yQsTargetLocked(Ljava/util/Set;)V

    .line 1467
    .line 1468
    .line 1469
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 1470
    .line 1471
    const/4 v1, 0x0

    .line 1472
    invoke-direct {v5, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 1473
    .line 1474
    .line 1475
    const-string v2, "accessibility_qs_targets"

    .line 1476
    .line 1477
    iget v3, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 1478
    .line 1479
    const/4 v6, 0x0

    .line 1480
    move-object/from16 v1, p0

    .line 1481
    .line 1482
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;Ljava/lang/String;)V

    .line 1483
    .line 1484
    .line 1485
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1486
    .line 1487
    .line 1488
    :goto_1f
    iget-object v4, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityDirectAccessTargets:Ljava/util/LinkedHashSet;

    .line 1489
    .line 1490
    invoke-interface {v4}, Ljava/util/Set;->size()I

    .line 1491
    .line 1492
    .line 1493
    move-result v1

    .line 1494
    if-nez v1, :cond_38

    .line 1495
    .line 1496
    goto :goto_20

    .line 1497
    :cond_38
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda4;

    .line 1498
    .line 1499
    const/4 v3, 0x0

    .line 1500
    invoke-direct {v2, v11, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/accessibility/AccessibilityUserState;I)V

    .line 1501
    .line 1502
    .line 1503
    invoke-interface {v4, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1504
    .line 1505
    .line 1506
    invoke-interface {v4}, Ljava/util/Set;->size()I

    .line 1507
    .line 1508
    .line 1509
    move-result v2

    .line 1510
    if-ne v1, v2, :cond_39

    .line 1511
    .line 1512
    goto :goto_20

    .line 1513
    :cond_39
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 1514
    .line 1515
    const/4 v1, 0x0

    .line 1516
    invoke-direct {v5, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 1517
    .line 1518
    .line 1519
    const-string v2, "accessibility_direct_access_target_service"

    .line 1520
    .line 1521
    iget v3, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 1522
    .line 1523
    const/4 v6, 0x0

    .line 1524
    move-object/from16 v1, p0

    .line 1525
    .line 1526
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;Ljava/lang/String;)V

    .line 1527
    .line 1528
    .line 1529
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1530
    .line 1531
    .line 1532
    :goto_20
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationCapabilitiesSettingsChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1533
    .line 1534
    .line 1535
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    .line 1536
    .line 1537
    .line 1538
    move-result-object v1

    .line 1539
    :goto_21
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1540
    .line 1541
    .line 1542
    move-result v2

    .line 1543
    if-ge v10, v2, :cond_3a

    .line 1544
    .line 1545
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1546
    .line 1547
    .line 1548
    move-result-object v2

    .line 1549
    check-cast v2, Landroid/view/Display;

    .line 1550
    .line 1551
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    .line 1552
    .line 1553
    .line 1554
    move-result v2

    .line 1555
    invoke-virtual {v0, v11, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationModeChangeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)V

    .line 1556
    .line 1557
    .line 1558
    add-int/lit8 v10, v10, 0x1

    .line 1559
    .line 1560
    goto :goto_21

    .line 1561
    :cond_3a
    iget v1, v11, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 1562
    .line 1563
    iget v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 1564
    .line 1565
    if-eq v1, v2, :cond_3b

    .line 1566
    .line 1567
    goto :goto_22

    .line 1568
    :cond_3b
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 1569
    .line 1570
    invoke-virtual {v1, v12, v13}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 1571
    .line 1572
    .line 1573
    move-result v1

    .line 1574
    if-eqz v1, :cond_3c

    .line 1575
    .line 1576
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 1577
    .line 1578
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1579
    .line 1580
    const-string/jumbo v3, "userState="

    .line 1581
    .line 1582
    .line 1583
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1584
    .line 1585
    .line 1586
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1587
    .line 1588
    .line 1589
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1590
    .line 1591
    .line 1592
    move-result-object v2

    .line 1593
    const-string v3, "AccessibilityManagerService.updateFocusAppearanceDataLocked"

    .line 1594
    .line 1595
    invoke-virtual {v1, v3, v12, v13, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1596
    .line 1597
    .line 1598
    :cond_3c
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 1599
    .line 1600
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda8;

    .line 1601
    .line 1602
    const/4 v3, 0x0

    .line 1603
    invoke-direct {v2, v0, v11, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;I)V

    .line 1604
    .line 1605
    .line 1606
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1607
    .line 1608
    .line 1609
    :goto_22
    return-void

    .line 1610
    :catchall_2
    move-exception v0

    .line 1611
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1612
    .line 1613
    .line 1614
    throw v0

    .line 1615
    :catchall_3
    move-exception v0

    .line 1616
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1617
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1618
    .line 1619
    .line 1620
    throw v0
.end method

.method public final parseAccessibilityServiceInfos(I)Ljava/util/List;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v2, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v3

    .line 11
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindInstantServiceAllowed:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const v0, 0x8c8084

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const v0, 0xc8084

    .line 24
    .line 25
    .line 26
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    new-instance v4, Landroid/content/Intent;

    .line 30
    .line 31
    const-string v5, "android.accessibilityservice.AccessibilityService"

    .line 32
    .line 33
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    move/from16 v5, p1

    .line 37
    .line 38
    invoke-virtual {v3, v4, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const/4 v0, 0x0

    .line 47
    move v5, v0

    .line 48
    :goto_1
    if-ge v5, v4, :cond_5

    .line 49
    .line 50
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 55
    .line 56
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 57
    .line 58
    iget-object v7, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 59
    .line 60
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 64
    .line 65
    const-string v9, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    .line 66
    .line 67
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    const-string v9, "Skipping accessibility service "

    .line 72
    .line 73
    const-string v10, "AccessibilitySecurityPolicy"

    .line 74
    .line 75
    if-nez v8, :cond_1

    .line 76
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v7, Landroid/content/ComponentName;

    .line 83
    .line 84
    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 87
    .line 88
    invoke-direct {v7, v8, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v6, ": it does not require the permission android.permission.BIND_ACCESSIBILITY_SERVICE"

    .line 99
    .line 100
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    goto/16 :goto_2

    .line 111
    .line 112
    :cond_1
    iget v8, v6, Landroid/content/pm/ServiceInfo;->flags:I

    .line 113
    .line 114
    and-int/lit8 v8, v8, 0x4

    .line 115
    .line 116
    if-eqz v8, :cond_2

    .line 117
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    new-instance v7, Landroid/content/ComponentName;

    .line 124
    .line 125
    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 126
    .line 127
    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 128
    .line 129
    invoke-direct {v7, v8, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v6, ": the service is the external one and doesn\'t allow to register as an accessibility service "

    .line 140
    .line 141
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_2
    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 153
    .line 154
    iget v13, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 155
    .line 156
    iget-object v11, v7, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 157
    .line 158
    iget-object v14, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 159
    .line 160
    const/16 v16, 0x0

    .line 161
    .line 162
    const-string v12, "android:bind_accessibility_service"

    .line 163
    .line 164
    const/4 v15, 0x0

    .line 165
    invoke-virtual/range {v11 .. v16}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    if-eqz v7, :cond_3

    .line 170
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    new-instance v7, Landroid/content/ComponentName;

    .line 177
    .line 178
    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 179
    .line 180
    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 181
    .line 182
    invoke-direct {v7, v8, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v6, ": disallowed by AppOps"

    .line 193
    .line 194
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_3
    :try_start_1
    new-instance v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 206
    .line 207
    iget-object v7, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 208
    .line 209
    invoke-direct {v6, v0, v7}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 210
    .line 211
    .line 212
    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isWithinParcelableSize()Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-nez v0, :cond_4

    .line 217
    .line 218
    const-string v0, "AccessibilityManagerService"

    .line 219
    .line 220
    new-instance v7, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    const-string v8, "Skipping service "

    .line 223
    .line 224
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    invoke-virtual {v6}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v6, " because service info size is larger than safe parcelable limits."

    .line 239
    .line 240
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    goto :goto_2

    .line 251
    :cond_4
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    goto :goto_2

    .line 255
    :catch_0
    move-exception v0

    .line 256
    const-string v6, "AccessibilityManagerService"

    .line 257
    .line 258
    const-string v7, "Error while initializing AccessibilityServiceInfo"

    .line 259
    .line 260
    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    .line 262
    .line 263
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 264
    .line 265
    goto/16 :goto_1

    .line 266
    .line 267
    :cond_5
    return-object v2

    .line 268
    :catchall_0
    move-exception v0

    .line 269
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 270
    throw v0
.end method

.method public final performAccessibilityDirectAccess(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->performAccessibilityDirectAccess_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 5
    .line 6
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda14;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda14;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getDisplayId()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/16 v3, 0x200

    .line 21
    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v1, p0, v2, v3, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final performAccessibilityFrameworkFeature(ILandroid/content/ComponentName;)Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;

    .line 18
    .line 19
    new-instance v1, Landroid/provider/SettingsStringUtil$SettingStringHelper;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;->getSettingKey()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 32
    .line 33
    invoke-direct {v1, v3, v4, v5}, Landroid/provider/SettingsStringUtil$SettingStringHelper;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    instance-of v3, v0, Lcom/android/internal/accessibility/AccessibilityShortcutController$LaunchableFrameworkFeatureInfo;

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v0, p2, p1, v4}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 44
    .line 45
    .line 46
    sget-object p1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ACCESSIBILITY_HEARING_AIDS_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 47
    .line 48
    invoke-virtual {p2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    invoke-static {}, Lcom/android/systemui/Flags;->hearingAidsQsTileDialog()Z

    .line 55
    .line 56
    .line 57
    new-instance p1, Landroid/content/Intent;

    .line 58
    .line 59
    const-string/jumbo p2, "com.android.systemui.action.LAUNCH_HEARING_DEVICES_DIALOG"

    .line 60
    .line 61
    .line 62
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/high16 p2, 0x10000000

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    const v0, 0x104003a

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    sget-object p2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 85
    .line 86
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 87
    .line 88
    .line 89
    :cond_1
    return v4

    .line 90
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;->getSettingOnValue()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v1}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->read()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-nez v3, :cond_3

    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    invoke-static {p0, p2, p1, v4}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;->getSettingOnValue()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {v1, p0}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_3
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 118
    .line 119
    invoke-static {p0, p2, p1, v2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;->getSettingOffValue()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {v1, p0}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    :goto_0
    return v4
.end method

.method public final performAccessibilityShortcut(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->performAccessibilityShortcut_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 5
    .line 6
    const-wide/16 v1, 0x4

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 15
    .line 16
    const-string/jumbo v3, "targetName="

    .line 17
    .line 18
    .line 19
    invoke-static {v3, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const-string v4, "AccessibilityManagerService.performAccessibilityShortcut"

    .line 24
    .line 25
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 29
    .line 30
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda14;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-direct {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda14;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getDisplayId()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/4 v3, 0x2

    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v1, p0, v2, v3, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final performAccessibilityShortcutTargetActivity(ILandroid/content/ComponentName;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    .line 13
    .line 14
    check-cast v4, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-ge v3, v4, :cond_1

    .line 21
    .line 22
    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    .line 23
    .line 24
    check-cast v4, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    .line 31
    .line 32
    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v4, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_0

    .line 41
    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 46
    .line 47
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    const/high16 p2, 0x10000000

    .line 66
    .line 67
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    :try_start_1
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 73
    .line 74
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p2, v1, p1, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    .line 81
    :catch_0
    :try_start_2
    monitor-exit v0

    .line 82
    const/4 p0, 0x1

    .line 83
    return p0

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    monitor-exit v0

    .line 87
    return v2

    .line 88
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    throw p0
.end method

.method public final performAccessibilityShortcutTargetService(IILandroid/content/ComponentName;)Z
    .locals 12

    .line 1
    const-string v0, "Perform shortcut failed, service is not ready:"

    .line 2
    .line 3
    const-string/jumbo v1, "serviceConnection is null, but included in mEnabledServices : "

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "performAccessibilityShortcutTargetService assignedTarget : "

    .line 7
    .line 8
    .line 9
    const-string v3, "Perform shortcut failed, invalid component name:"

    .line 10
    .line 11
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v4

    .line 14
    :try_start_0
    iget v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 15
    .line 16
    invoke-virtual {p0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v5, p3}, Lcom/android/server/accessibility/AccessibilityUserState;->getInstalledServiceInfoLocked(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    const/4 v7, 0x0

    .line 25
    if-nez v6, :cond_0

    .line 26
    .line 27
    const-string p0, "AccessibilityManagerService"

    .line 28
    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    monitor-exit v4

    .line 45
    return v7

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :cond_0
    const-string/jumbo v3, "com.samsung.accessibility/com.samsung.accessibility.universalswitch.UniversalSwitchService"

    .line 50
    .line 51
    .line 52
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    new-instance v3, Lcom/samsung/android/widget/SemLockPatternUtils;

    .line 63
    .line 64
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    invoke-direct {v3, v8}, Lcom/samsung/android/widget/SemLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    invoke-virtual {v3, v8}, Lcom/samsung/android/widget/SemLockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    const/high16 v8, 0x10000

    .line 78
    .line 79
    if-ne v3, v8, :cond_1

    .line 80
    .line 81
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 82
    .line 83
    const p2, 0x1040f2f

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    new-instance p2, Landroid/os/Handler;

    .line 91
    .line 92
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 97
    .line 98
    .line 99
    new-instance p3, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda8;

    .line 100
    .line 101
    const/4 v0, 0x2

    .line 102
    invoke-direct {p3, p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;I)V

    .line 103
    .line 104
    .line 105
    const-wide/16 p0, 0x0

    .line 106
    .line 107
    invoke-virtual {p2, p3, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    .line 109
    .line 110
    monitor-exit v4

    .line 111
    return v7

    .line 112
    :cond_1
    iget-object v3, v5, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    .line 113
    .line 114
    check-cast v3, Ljava/util/HashMap;

    .line 115
    .line 116
    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 121
    .line 122
    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 127
    .line 128
    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 129
    .line 130
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 131
    .line 132
    iget v6, v6, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 133
    .line 134
    and-int/lit16 v6, v6, 0x100

    .line 135
    .line 136
    const/4 v9, 0x1

    .line 137
    if-eqz v6, :cond_2

    .line 138
    .line 139
    move v6, v9

    .line 140
    goto :goto_0

    .line 141
    :cond_2
    move v6, v7

    .line 142
    :goto_0
    const-string v10, "AccessibilityManagerService"

    .line 143
    .line 144
    new-instance v11, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v11, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v2, ", targetSdk : "

    .line 153
    .line 154
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v2, ", requestA11yButton : "

    .line 161
    .line 162
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-static {v10, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    const/16 v2, 0x200

    .line 176
    .line 177
    const/4 v10, 0x2

    .line 178
    const/16 v11, 0x1d

    .line 179
    .line 180
    if-gt v8, v11, :cond_3

    .line 181
    .line 182
    if-eq p2, v10, :cond_4

    .line 183
    .line 184
    if-eq p2, v2, :cond_4

    .line 185
    .line 186
    :cond_3
    if-le v8, v11, :cond_7

    .line 187
    .line 188
    if-nez v6, :cond_7

    .line 189
    .line 190
    :cond_4
    if-nez v3, :cond_6

    .line 191
    .line 192
    iget-object p1, v5, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 193
    .line 194
    check-cast p1, Ljava/util/HashSet;

    .line 195
    .line 196
    invoke-virtual {p1, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_5

    .line 201
    .line 202
    const-string p1, "AccessibilityManagerService"

    .line 203
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 220
    .line 221
    invoke-static {p1, p3, p2, v7}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 222
    .line 223
    .line 224
    iget p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 225
    .line 226
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->disableAccessibilityServiceLocked(ILandroid/content/ComponentName;)V

    .line 227
    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_5
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 231
    .line 232
    invoke-static {p1, p3, p2, v9}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 233
    .line 234
    .line 235
    iget p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 236
    .line 237
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->enableAccessibilityServiceLocked(ILandroid/content/ComponentName;)V

    .line 238
    .line 239
    .line 240
    goto :goto_1

    .line 241
    :cond_6
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 242
    .line 243
    invoke-static {p1, p3, p2, v7}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 244
    .line 245
    .line 246
    iget p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 247
    .line 248
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->disableAccessibilityServiceLocked(ILandroid/content/ComponentName;)V

    .line 249
    .line 250
    .line 251
    :goto_1
    monitor-exit v4

    .line 252
    return v9

    .line 253
    :cond_7
    if-eq p2, v10, :cond_8

    .line 254
    .line 255
    if-ne p2, v2, :cond_9

    .line 256
    .line 257
    :cond_8
    if-le v8, v11, :cond_9

    .line 258
    .line 259
    if-eqz v6, :cond_9

    .line 260
    .line 261
    iget-object v1, v5, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 262
    .line 263
    check-cast v1, Ljava/util/HashSet;

    .line 264
    .line 265
    invoke-virtual {v1, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-nez v1, :cond_9

    .line 270
    .line 271
    iget p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 272
    .line 273
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->enableAccessibilityServiceLocked(ILandroid/content/ComponentName;)V

    .line 274
    .line 275
    .line 276
    monitor-exit v4

    .line 277
    return v9

    .line 278
    :cond_9
    if-eqz v3, :cond_b

    .line 279
    .line 280
    iget-object v1, v5, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    if-eqz v1, :cond_b

    .line 287
    .line 288
    iget-boolean v1, v3, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    .line 289
    .line 290
    if-nez v1, :cond_a

    .line 291
    .line 292
    goto :goto_2

    .line 293
    :cond_a
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 294
    .line 295
    invoke-static {p0, p3, p2, v9}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 296
    .line 297
    .line 298
    iget-object p0, v3, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 299
    .line 300
    const/4 p2, 0x7

    .line 301
    invoke-virtual {p0, p2, p1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 306
    .line 307
    .line 308
    monitor-exit v4

    .line 309
    return v9

    .line 310
    :cond_b
    :goto_2
    const-string p0, "AccessibilityManagerService"

    .line 311
    .line 312
    new-instance p1, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .line 326
    .line 327
    monitor-exit v4

    .line 328
    return v7

    .line 329
    :goto_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    throw p0
.end method

.method public final persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {p4, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/String;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 v1, 0x0

    .line 30
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-lez v2, :cond_2

    .line 42
    .line 43
    const/16 v2, 0x3a

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result p4

    .line 60
    if-eqz p4, :cond_4

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_4
    move-object p5, p3

    .line 64
    :goto_2
    invoke-static {}, Landroid/view/accessibility/Flags;->restoreA11yShortcutTargetService()Z

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    if-eqz p3, :cond_5

    .line 69
    .line 70
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    invoke-static {p3, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    invoke-static {p5, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p3

    .line 84
    if-eqz p3, :cond_5

    .line 85
    .line 86
    return-void

    .line 87
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 88
    .line 89
    .line 90
    move-result-wide p3

    .line 91
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-static {p0, p1, p5, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    .line 100
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :catchall_0
    move-exception p0

    .line 105
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 106
    .line 107
    .line 108
    throw p0
.end method

.method public final persistComponentNamesToSettingLocked(ILjava/lang/String;Ljava/util/Set;)V
    .locals 6

    .line 1
    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    invoke-direct {v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p2

    .line 10
    move v2, p1

    .line 11
    move-object v3, p3

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final persistIntToSetting(IILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0, p3, p2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public final readAMEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "assistant_menu"

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iget v3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 12
    .line 13
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    move v0, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v2

    .line 23
    :goto_0
    if-eqz v0, :cond_5

    .line 24
    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const-string/jumbo v3, "assistant_menu_option_upperapps"

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v3}, Landroid/view/accessibility/A11yRune;->readDataFromAccessibilityProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_2

    .line 39
    .line 40
    const-string v3, "FingerMouse"

    .line 41
    .line 42
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_1

    .line 47
    .line 48
    const-string v3, "MagnifierWindow"

    .line 49
    .line 50
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_2

    .line 55
    .line 56
    :cond_1
    move p0, v1

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move p0, v2

    .line 59
    :goto_1
    if-eqz v0, :cond_3

    .line 60
    .line 61
    if-eqz p0, :cond_3

    .line 62
    .line 63
    move v3, v1

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    move v3, v2

    .line 66
    :goto_2
    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAMEnabled:Z

    .line 67
    .line 68
    if-eq v3, v4, :cond_5

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    if-eqz p0, :cond_4

    .line 73
    .line 74
    move p0, v1

    .line 75
    goto :goto_3

    .line 76
    :cond_4
    move p0, v2

    .line 77
    :goto_3
    iput-boolean p0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAMEnabled:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    return v1

    .line 80
    :catch_0
    :cond_5
    return v2
.end method

.method public final readAccessibilityButtonTargetComponentLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 8
    .line 9
    const-string v1, "accessibility_button_target_component"

    .line 10
    .line 11
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string/jumbo v0, "componentId : "

    .line 16
    .line 17
    .line 18
    const-string v1, " userState.getTargetAssignedToAccessibilityButton() : "

    .line 19
    .line 20
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mTargetAssignedToAccessibilityButton:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "AccessibilityManagerService"

    .line 34
    .line 35
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v1, 0x1

    .line 43
    const/4 v2, 0x0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mTargetAssignedToAccessibilityButton:Ljava/lang/String;

    .line 47
    .line 48
    if-nez p0, :cond_0

    .line 49
    .line 50
    return v2

    .line 51
    :cond_0
    const/4 p0, 0x0

    .line 52
    iput-object p0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mTargetAssignedToAccessibilityButton:Ljava/lang/String;

    .line 53
    .line 54
    return v1

    .line 55
    :cond_1
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mTargetAssignedToAccessibilityButton:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    return v2

    .line 64
    :cond_2
    iput-object p0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mTargetAssignedToAccessibilityButton:Ljava/lang/String;

    .line 65
    .line 66
    return v1
.end method

.method public final readAccessibilityButtonTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const-string v2, "accessibility_button_targets"

    .line 13
    .line 14
    iget v3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 15
    .line 16
    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedSettingToSet(Ljava/lang/String;ILjava/util/function/Function;Ljava/util/Set;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Ljava/util/LinkedHashSet;

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string/jumbo v3, "currentTargets : "

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v3, " targetsFromSetting : "

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "AccessibilityManagerService"

    .line 45
    .line 46
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    return p0

    .line 57
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 58
    .line 59
    .line 60
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 64
    .line 65
    .line 66
    const/4 p0, 0x1

    .line 67
    return p0
.end method

.method public final readAccessibilityDirectAccessSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 8
    .line 9
    const-string v2, "accessibility_direct_access_target_service"

    .line 10
    .line 11
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-direct {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedStringToSet(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/Set;Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityDirectAccessTargets:Ljava/util/LinkedHashSet;

    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string/jumbo v4, "readAccessibilityDirectAccessSettingLocked currentTargets : "

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v4, " targetsFromSetting : "

    .line 44
    .line 45
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const-string v4, "AccessibilityManagerService"

    .line 56
    .line 57
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    invoke-interface {v1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_0

    .line 65
    .line 66
    return v3

    .line 67
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 68
    .line 69
    .line 70
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 74
    .line 75
    .line 76
    const/4 p0, 0x1

    .line 77
    return p0
.end method

.method public final readAccessibilityShortcutKeySettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 8
    .line 9
    const-string v2, "accessibility_shortcut_target_service"

    .line 10
    .line 11
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-direct {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedStringToSet(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/Set;Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityShortcutKeyTargets:Ljava/util/LinkedHashSet;

    .line 31
    .line 32
    invoke-interface {v1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    return v3

    .line 39
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x1

    .line 49
    return p0
.end method

.method public final readAlwaysOnMagnificationLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "accessibility_magnification_always_on_enabled"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iget v3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 11
    .line 12
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    .line 19
    move v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/accessibility/magnification/MagnificationController;->mAlwaysOnMagnificationFeatureFlag:Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mAlwaysOnMagnificationEnabled:Z

    .line 30
    .line 31
    if-eq v0, v3, :cond_1

    .line 32
    .line 33
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mAlwaysOnMagnificationEnabled:Z

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mAlwaysOnMagnificationEnabled:Z

    .line 42
    .line 43
    return v2

    .line 44
    :cond_1
    return v1
.end method

.method public readColonDelimitedSettingToSet(Ljava/lang/String;ILjava/util/function/Function;Ljava/util/Set;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedStringToSet(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/Set;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final readColonDelimitedStringToSet(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/Set;Z)V
    .locals 0

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    invoke-interface {p3}, Ljava/util/Set;->clear()V

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result p4

    .line 10
    if-nez p4, :cond_3

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_3

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result p4

    .line 31
    if-eqz p4, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    return-void
.end method

.method public readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedSettingToSet(Ljava/lang/String;ILjava/util/function/Function;Ljava/util/Set;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/List;Ljava/util/List;)Z
    .locals 8

    .line 1
    move-object v0, p2

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    const/4 v4, 0x1

    .line 11
    if-ge v3, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 18
    .line 19
    iget-object v6, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    .line 20
    .line 21
    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    check-cast v6, Ljava/util/HashSet;

    .line 26
    .line 27
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-eqz v6, :cond_0

    .line 32
    .line 33
    iput-boolean v4, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->crashed:Z

    .line 34
    .line 35
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    .line 47
    .line 48
    check-cast v0, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 51
    .line 52
    .line 53
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    .line 54
    .line 55
    check-cast v0, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 58
    .line 59
    .line 60
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yServiceToTileService:Ljava/util/Map;

    .line 61
    .line 62
    check-cast p2, Landroid/util/ArrayMap;

    .line 63
    .line 64
    invoke-virtual {p2}, Landroid/util/ArrayMap;->clear()V

    .line 65
    .line 66
    .line 67
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    .line 68
    .line 69
    new-instance v0, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticLambda1;

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-direct {v0, p1, v1}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/AccessibilityUserState;I)V

    .line 73
    .line 74
    .line 75
    check-cast p2, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 78
    .line 79
    .line 80
    move p2, v4

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    move p2, v2

    .line 83
    :goto_1
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {p3, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_3

    .line 90
    .line 91
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    .line 92
    .line 93
    check-cast v0, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 96
    .line 97
    .line 98
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    .line 99
    .line 100
    check-cast v0, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 103
    .line 104
    .line 105
    iget-object p3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yActivityToTileService:Ljava/util/Map;

    .line 106
    .line 107
    check-cast p3, Landroid/util/ArrayMap;

    .line 108
    .line 109
    invoke-virtual {p3}, Landroid/util/ArrayMap;->clear()V

    .line 110
    .line 111
    .line 112
    iget-object p3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    .line 113
    .line 114
    new-instance v0, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticLambda1;

    .line 115
    .line 116
    const/4 v1, 0x1

    .line 117
    invoke-direct {v0, p1, v1}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/AccessibilityUserState;I)V

    .line 118
    .line 119
    .line 120
    check-cast p3, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 123
    .line 124
    .line 125
    move p3, v4

    .line 126
    goto :goto_2

    .line 127
    :cond_3
    move p3, v2

    .line 128
    :goto_2
    or-int/2addr p2, p3

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 130
    .line 131
    .line 132
    move-result p3

    .line 133
    or-int/2addr p2, p3

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 135
    .line 136
    .line 137
    move-result p3

    .line 138
    or-int/2addr p2, p3

    .line 139
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 140
    .line 141
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 142
    .line 143
    .line 144
    move-result-object p3

    .line 145
    const-string/jumbo v0, "touch_exploration_enabled"

    .line 146
    .line 147
    .line 148
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 149
    .line 150
    invoke-static {p3, v0, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 151
    .line 152
    .line 153
    move-result p3

    .line 154
    if-ne p3, v4, :cond_4

    .line 155
    .line 156
    move p3, v4

    .line 157
    goto :goto_3

    .line 158
    :cond_4
    move p3, v2

    .line 159
    :goto_3
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    .line 160
    .line 161
    if-eq p3, v0, :cond_5

    .line 162
    .line 163
    iput-boolean p3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    .line 164
    .line 165
    move p3, v4

    .line 166
    goto :goto_4

    .line 167
    :cond_5
    move p3, v2

    .line 168
    :goto_4
    or-int/2addr p2, p3

    .line 169
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 170
    .line 171
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 172
    .line 173
    .line 174
    move-result-object p3

    .line 175
    const-string/jumbo v0, "high_text_contrast_enabled"

    .line 176
    .line 177
    .line 178
    invoke-static {p3, v0, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 179
    .line 180
    .line 181
    move-result p3

    .line 182
    if-ne p3, v4, :cond_6

    .line 183
    .line 184
    move p3, v4

    .line 185
    goto :goto_5

    .line 186
    :cond_6
    move p3, v2

    .line 187
    :goto_5
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTextHighContrastEnabled:Z

    .line 188
    .line 189
    if-eq p3, v0, :cond_7

    .line 190
    .line 191
    iput-boolean p3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTextHighContrastEnabled:Z

    .line 192
    .line 193
    move p3, v4

    .line 194
    goto :goto_6

    .line 195
    :cond_7
    move p3, v2

    .line 196
    :goto_6
    or-int/2addr p2, p3

    .line 197
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 198
    .line 199
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 200
    .line 201
    .line 202
    move-result-object p3

    .line 203
    const-string/jumbo v0, "enabled_accessibility_audio_description_by_default"

    .line 204
    .line 205
    .line 206
    invoke-static {p3, v0, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 207
    .line 208
    .line 209
    move-result p3

    .line 210
    if-ne p3, v4, :cond_8

    .line 211
    .line 212
    move p3, v4

    .line 213
    goto :goto_7

    .line 214
    :cond_8
    move p3, v2

    .line 215
    :goto_7
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAudioDescriptionByDefaultRequested:Z

    .line 216
    .line 217
    if-eq p3, v0, :cond_9

    .line 218
    .line 219
    iput-boolean p3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAudioDescriptionByDefaultRequested:Z

    .line 220
    .line 221
    move p3, v4

    .line 222
    goto :goto_8

    .line 223
    :cond_9
    move p3, v2

    .line 224
    :goto_8
    or-int/2addr p2, p3

    .line 225
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 226
    .line 227
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 228
    .line 229
    .line 230
    move-result-object p3

    .line 231
    const-string v0, "accessibility_display_magnification_enabled"

    .line 232
    .line 233
    invoke-static {p3, v0, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 234
    .line 235
    .line 236
    move-result p3

    .line 237
    if-ne p3, v4, :cond_a

    .line 238
    .line 239
    move p3, v4

    .line 240
    goto :goto_9

    .line 241
    :cond_a
    move p3, v2

    .line 242
    :goto_9
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsMagnificationSingleFingerTripleTapEnabled:Z

    .line 243
    .line 244
    if-eq p3, v0, :cond_b

    .line 245
    .line 246
    iput-boolean p3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsMagnificationSingleFingerTripleTapEnabled:Z

    .line 247
    .line 248
    move p3, v4

    .line 249
    goto :goto_a

    .line 250
    :cond_b
    move p3, v2

    .line 251
    :goto_a
    or-int/2addr p2, p3

    .line 252
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 253
    .line 254
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 255
    .line 256
    .line 257
    move-result-object p3

    .line 258
    const-string v0, "accessibility_autoclick_enabled"

    .line 259
    .line 260
    invoke-static {p3, v0, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 261
    .line 262
    .line 263
    move-result p3

    .line 264
    if-ne p3, v4, :cond_c

    .line 265
    .line 266
    move p3, v4

    .line 267
    goto :goto_b

    .line 268
    :cond_c
    move p3, v2

    .line 269
    :goto_b
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoclickEnabled:Z

    .line 270
    .line 271
    if-eq p3, v0, :cond_d

    .line 272
    .line 273
    iput-boolean p3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoclickEnabled:Z

    .line 274
    .line 275
    move p3, v4

    .line 276
    goto :goto_c

    .line 277
    :cond_d
    move p3, v2

    .line 278
    :goto_c
    or-int/2addr p2, p3

    .line 279
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityShortcutKeySettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 280
    .line 281
    .line 282
    move-result p3

    .line 283
    or-int/2addr p2, p3

    .line 284
    new-instance p3, Landroid/util/ArraySet;

    .line 285
    .line 286
    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    .line 287
    .line 288
    .line 289
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 290
    .line 291
    const/4 v3, 0x0

    .line 292
    invoke-direct {v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 293
    .line 294
    .line 295
    const-string v3, "accessibility_qs_targets"

    .line 296
    .line 297
    invoke-virtual {p0, v3, v1, v0, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedSettingToSet(Ljava/lang/String;ILjava/util/function/Function;Ljava/util/Set;)V

    .line 298
    .line 299
    .line 300
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 301
    .line 302
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityQsTargets:Ljava/util/LinkedHashSet;

    .line 303
    .line 304
    invoke-direct {v0, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    if-eqz v0, :cond_e

    .line 312
    .line 313
    move p3, v2

    .line 314
    goto :goto_d

    .line 315
    :cond_e
    invoke-virtual {p1, p3}, Lcom/android/server/accessibility/AccessibilityUserState;->updateA11yQsTargetLocked(Ljava/util/Set;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 319
    .line 320
    .line 321
    move p3, v4

    .line 322
    :goto_d
    or-int/2addr p2, p3

    .line 323
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityButtonTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 324
    .line 325
    .line 326
    move-result p3

    .line 327
    or-int/2addr p2, p3

    .line 328
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityButtonTargetComponentLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 329
    .line 330
    .line 331
    move-result p3

    .line 332
    or-int/2addr p2, p3

    .line 333
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readUserRecommendedUiTimeoutSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 334
    .line 335
    .line 336
    move-result p3

    .line 337
    or-int/2addr p2, p3

    .line 338
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationModeForDefaultDisplayLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 339
    .line 340
    .line 341
    move-result p3

    .line 342
    or-int/2addr p2, p3

    .line 343
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 344
    .line 345
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 346
    .line 347
    .line 348
    move-result-object p3

    .line 349
    const-string v0, "accessibility_magnification_capability"

    .line 350
    .line 351
    invoke-static {p3, v0, v4, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 352
    .line 353
    .line 354
    move-result p3

    .line 355
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCapabilities:I

    .line 356
    .line 357
    if-eq p3, v0, :cond_f

    .line 358
    .line 359
    iput p3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCapabilities:I

    .line 360
    .line 361
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 362
    .line 363
    iput p3, v0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    .line 364
    .line 365
    move p3, v4

    .line 366
    goto :goto_e

    .line 367
    :cond_f
    move p3, v2

    .line 368
    :goto_e
    or-int/2addr p2, p3

    .line 369
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationFollowTypingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 370
    .line 371
    .line 372
    move-result p3

    .line 373
    or-int/2addr p2, p3

    .line 374
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAlwaysOnMagnificationLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 375
    .line 376
    .line 377
    move-result p3

    .line 378
    or-int/2addr p2, p3

    .line 379
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 380
    .line 381
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 382
    .line 383
    .line 384
    move-result-object p3

    .line 385
    const-string v0, "accessibility_auto_action_type"

    .line 386
    .line 387
    invoke-static {p3, v0, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 388
    .line 389
    .line 390
    move-result p3

    .line 391
    if-eqz p3, :cond_10

    .line 392
    .line 393
    move p3, v4

    .line 394
    goto :goto_f

    .line 395
    :cond_10
    move p3, v2

    .line 396
    :goto_f
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoActionEnabled:Z

    .line 397
    .line 398
    if-eq p3, v0, :cond_11

    .line 399
    .line 400
    iput-boolean p3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoActionEnabled:Z

    .line 401
    .line 402
    move p3, v4

    .line 403
    goto :goto_10

    .line 404
    :cond_11
    move p3, v2

    .line 405
    :goto_10
    or-int/2addr p2, p3

    .line 406
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 407
    .line 408
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 409
    .line 410
    .line 411
    move-result-object p3

    .line 412
    const-string v0, "accessibility_corner_action_enabled"

    .line 413
    .line 414
    invoke-static {p3, v0, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 415
    .line 416
    .line 417
    move-result p3

    .line 418
    if-eqz p3, :cond_12

    .line 419
    .line 420
    move p3, v4

    .line 421
    goto :goto_11

    .line 422
    :cond_12
    move p3, v2

    .line 423
    :goto_11
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsCornerActionEnabled:Z

    .line 424
    .line 425
    if-eq p3, v0, :cond_13

    .line 426
    .line 427
    iput-boolean p3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsCornerActionEnabled:Z

    .line 428
    .line 429
    move p3, v4

    .line 430
    goto :goto_12

    .line 431
    :cond_13
    move p3, v2

    .line 432
    :goto_12
    or-int/2addr p2, p3

    .line 433
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 434
    .line 435
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 436
    .line 437
    .line 438
    move-result-object p3

    .line 439
    const-string/jumbo v0, "tap_duration_enabled"

    .line 440
    .line 441
    .line 442
    invoke-static {p3, v0, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 443
    .line 444
    .line 445
    move-result p3

    .line 446
    if-ne p3, v4, :cond_14

    .line 447
    .line 448
    move p3, v4

    .line 449
    goto :goto_13

    .line 450
    :cond_14
    move p3, v2

    .line 451
    :goto_13
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTapDurationEnabled:Z

    .line 452
    .line 453
    if-eq p3, v0, :cond_15

    .line 454
    .line 455
    iput-boolean p3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTapDurationEnabled:Z

    .line 456
    .line 457
    move p3, v4

    .line 458
    goto :goto_14

    .line 459
    :cond_15
    move p3, v2

    .line 460
    :goto_14
    or-int/2addr p2, p3

    .line 461
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 462
    .line 463
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 464
    .line 465
    .line 466
    move-result-object p3

    .line 467
    const-string/jumbo v0, "touch_blocking_enabled"

    .line 468
    .line 469
    .line 470
    invoke-static {p3, v0, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 471
    .line 472
    .line 473
    move-result p3

    .line 474
    if-ne p3, v4, :cond_16

    .line 475
    .line 476
    move p3, v4

    .line 477
    goto :goto_15

    .line 478
    :cond_16
    move p3, v2

    .line 479
    :goto_15
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchBlockingEnabled:Z

    .line 480
    .line 481
    if-eq p3, v0, :cond_17

    .line 482
    .line 483
    iput-boolean p3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchBlockingEnabled:Z

    .line 484
    .line 485
    move p3, v4

    .line 486
    goto :goto_16

    .line 487
    :cond_17
    move p3, v2

    .line 488
    :goto_16
    or-int/2addr p2, p3

    .line 489
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 490
    .line 491
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 492
    .line 493
    .line 494
    move-result-object p3

    .line 495
    const-string v0, "accessibility_sticky_keys"

    .line 496
    .line 497
    invoke-static {p3, v0, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 498
    .line 499
    .line 500
    move-result p3

    .line 501
    if-ne p3, v4, :cond_18

    .line 502
    .line 503
    move p3, v4

    .line 504
    goto :goto_17

    .line 505
    :cond_18
    move p3, v2

    .line 506
    :goto_17
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsStickyKeysEnabled:Z

    .line 507
    .line 508
    if-eq p3, v0, :cond_19

    .line 509
    .line 510
    iput-boolean p3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsStickyKeysEnabled:Z

    .line 511
    .line 512
    move p3, v4

    .line 513
    goto :goto_18

    .line 514
    :cond_19
    move p3, v2

    .line 515
    :goto_18
    or-int/2addr p2, p3

    .line 516
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 517
    .line 518
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 519
    .line 520
    .line 521
    move-result-object p3

    .line 522
    const-string v0, "accessibility_bounce_keys"

    .line 523
    .line 524
    invoke-static {p3, v0, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 525
    .line 526
    .line 527
    move-result p3

    .line 528
    if-eqz p3, :cond_1a

    .line 529
    .line 530
    move p3, v4

    .line 531
    goto :goto_19

    .line 532
    :cond_1a
    move p3, v2

    .line 533
    :goto_19
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsBounceKeysEnabled:Z

    .line 534
    .line 535
    if-eq p3, v0, :cond_1b

    .line 536
    .line 537
    iput-boolean p3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsBounceKeysEnabled:Z

    .line 538
    .line 539
    move p3, v4

    .line 540
    goto :goto_1a

    .line 541
    :cond_1b
    move p3, v2

    .line 542
    :goto_1a
    or-int/2addr p2, p3

    .line 543
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 544
    .line 545
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 546
    .line 547
    .line 548
    move-result-object p3

    .line 549
    const-string v0, "accessibility_slow_keys"

    .line 550
    .line 551
    invoke-static {p3, v0, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 552
    .line 553
    .line 554
    move-result p3

    .line 555
    if-eqz p3, :cond_1c

    .line 556
    .line 557
    move p3, v4

    .line 558
    goto :goto_1b

    .line 559
    :cond_1c
    move p3, v2

    .line 560
    :goto_1b
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsSlowKeysEnabled:Z

    .line 561
    .line 562
    if-eq p3, v0, :cond_1d

    .line 563
    .line 564
    iput-boolean p3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsSlowKeysEnabled:Z

    .line 565
    .line 566
    move v2, v4

    .line 567
    :cond_1d
    or-int/2addr p2, v2

    .line 568
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readGestureNaviBarModeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 569
    .line 570
    .line 571
    move-result p3

    .line 572
    or-int/2addr p2, p3

    .line 573
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityDirectAccessSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 574
    .line 575
    .line 576
    move-result p3

    .line 577
    or-int/2addr p2, p3

    .line 578
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAMEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 579
    .line 580
    .line 581
    move-result p0

    .line 582
    or-int/2addr p0, p2

    .line 583
    return p0
.end method

.method public final readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 9
    .line 10
    const-string/jumbo v1, "enabled_accessibility_services"

    .line 11
    .line 12
    .line 13
    iget v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 14
    .line 15
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 19
    .line 20
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 29
    .line 30
    check-cast v0, Ljava/util/HashSet;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 33
    .line 34
    .line 35
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 38
    .line 39
    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 43
    .line 44
    check-cast p0, Ljava/util/HashSet;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    return p0

    .line 51
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 52
    .line 53
    check-cast p0, Ljava/util/HashSet;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    .line 56
    .line 57
    .line 58
    const/4 p0, 0x0

    .line 59
    return p0
.end method

.method public final readGestureNaviBarModeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string/jumbo v0, "navigation_mode"

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iget v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 12
    .line 13
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 v0, 0x2

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eq p0, v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    if-ne p0, v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move p0, v1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    move p0, v2

    .line 28
    :goto_1
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsGestureNaviBar:Z

    .line 29
    .line 30
    if-eq p0, v0, :cond_2

    .line 31
    .line 32
    iput-boolean p0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsGestureNaviBar:Z

    .line 33
    .line 34
    return v2

    .line 35
    :cond_2
    return v1
.end method

.method public final readMagnificationFollowTypingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "accessibility_magnification_follow_typing_enabled"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iget v3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 11
    .line 12
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    .line 19
    move v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationFollowTypingEnabled:Z

    .line 23
    .line 24
    if-eq v0, v3, :cond_1

    .line 25
    .line 26
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationFollowTypingEnabled:Z

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-boolean v0, p1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mMagnificationFollowTypingEnabled:Z

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationFollowTypingEnabled:Z

    .line 41
    .line 42
    return v2

    .line 43
    :cond_1
    return v1
.end method

.method public final readMagnificationModeForDefaultDisplayLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "accessibility_magnification_mode"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iget v3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 11
    .line 12
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getDisplayId()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationModeLocked(I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eq v0, v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getDisplayId()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationModes:Landroid/util/SparseIntArray;

    .line 31
    .line 32
    invoke-virtual {p1, p0, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    .line 34
    .line 35
    return v2

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method public final readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 9
    .line 10
    const-string/jumbo v1, "touch_exploration_granted_accessibility_services"

    .line 11
    .line 12
    .line 13
    iget v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 14
    .line 15
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 19
    .line 20
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    .line 29
    .line 30
    check-cast v0, Ljava/util/HashSet;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 33
    .line 34
    .line 35
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 38
    .line 39
    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 43
    .line 44
    check-cast p0, Ljava/util/HashSet;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    return p0

    .line 51
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 52
    .line 53
    check-cast p0, Ljava/util/HashSet;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    .line 56
    .line 57
    .line 58
    const/4 p0, 0x0

    .line 59
    return p0
.end method

.method public final readUserRecommendedUiTimeoutSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "accessibility_non_interactive_ui_timeout_ms"

    .line 8
    .line 9
    iget v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "accessibility_interactive_ui_timeout_ms"

    .line 23
    .line 24
    iget v4, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 25
    .line 26
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 31
    .line 32
    iget-object v4, v2, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v4

    .line 35
    move v5, v3

    .line 36
    :goto_0
    :try_start_0
    iget-object v6, v2, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const/4 v7, 0x1

    .line 43
    if-ge v5, v6, :cond_5

    .line 44
    .line 45
    iget-object v6, v2, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 46
    .line 47
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    check-cast v6, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 52
    .line 53
    if-eqz v6, :cond_4

    .line 54
    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    move v8, v1

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    iget-object v8, v6, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 60
    .line 61
    invoke-virtual {v8}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getInteractiveUiTimeoutMillis()I

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    :goto_1
    if-eqz v0, :cond_1

    .line 66
    .line 67
    move v9, v0

    .line 68
    goto :goto_2

    .line 69
    :cond_1
    iget-object v9, v6, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 70
    .line 71
    invoke-virtual {v9}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getNonInteractiveUiTimeoutMillis()I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    :goto_2
    iget v10, v6, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mInteractiveTimeout:I

    .line 76
    .line 77
    if-eq v10, v8, :cond_2

    .line 78
    .line 79
    iput v8, v6, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mInteractiveTimeout:I

    .line 80
    .line 81
    move v8, v7

    .line 82
    goto :goto_3

    .line 83
    :cond_2
    move v8, v3

    .line 84
    :goto_3
    iget v10, v6, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mNonInteractiveTimeout:I

    .line 85
    .line 86
    if-eq v10, v9, :cond_3

    .line 87
    .line 88
    iput v9, v6, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mNonInteractiveTimeout:I

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_3
    move v7, v8

    .line 92
    :goto_4
    if-eqz v7, :cond_4

    .line 93
    .line 94
    iget v6, v6, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    .line 95
    .line 96
    invoke-virtual {v2, v6}, Lcom/android/server/accessibility/ProxyManager;->scheduleNotifyProxyClientsOfServicesStateChangeLocked(I)V

    .line 97
    .line 98
    .line 99
    goto :goto_5

    .line 100
    :catchall_0
    move-exception p0

    .line 101
    goto :goto_7

    .line 102
    :cond_4
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_5
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    iget v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserNonInteractiveUiTimeout:I

    .line 107
    .line 108
    if-ne v0, v2, :cond_7

    .line 109
    .line 110
    iget v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserInteractiveUiTimeout:I

    .line 111
    .line 112
    if-eq v1, v2, :cond_6

    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_6
    return v3

    .line 116
    :cond_7
    :goto_6
    iput v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserNonInteractiveUiTimeout:I

    .line 117
    .line 118
    iput v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserInteractiveUiTimeout:I

    .line 119
    .line 120
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 121
    .line 122
    .line 123
    return v7

    .line 124
    :goto_7
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    throw p0
.end method

.method public final registerProxyForDisplay(Landroid/accessibilityservice/IAccessibilityServiceClient;I)Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->registerProxyForDisplay_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkForAccessibilityPermissionOrRole()V

    .line 7
    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    if-ltz p2, :cond_6

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_5

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/view/Display;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-ne v1, p2, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 42
    .line 43
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDisplay(I)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_4

    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 50
    .line 51
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    iget-object v2, v0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    const-class v3, Landroid/companion/virtual/VirtualDeviceManager;

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Landroid/companion/virtual/VirtualDeviceManager;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/android/server/accessibility/ProxyManager;->getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v2, :cond_3

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/companion/virtual/VirtualDeviceManager;->getVirtualDevices()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_3

    .line 86
    .line 87
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Landroid/companion/virtual/VirtualDevice;

    .line 92
    .line 93
    invoke-virtual {v3}, Landroid/companion/virtual/VirtualDevice;->getDeviceId()I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    invoke-virtual {v0, v4}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDisplayIdsForDevice(I)Landroid/util/ArraySet;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_2

    .line 110
    .line 111
    invoke-virtual {v3}, Landroid/companion/virtual/VirtualDevice;->getDeviceId()I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    invoke-virtual {v0, v3}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceOwnerUid(I)I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-ne v1, v3, :cond_2

    .line 120
    .line 121
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 122
    .line 123
    .line 124
    move-result-wide v0

    .line 125
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 126
    .line 127
    sget v5, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    .line 128
    .line 129
    add-int/lit8 v3, v5, 0x1

    .line 130
    .line 131
    sput v3, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    .line 132
    .line 133
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 134
    .line 135
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 136
    .line 137
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 138
    .line 139
    move-object v3, p1

    .line 140
    move v4, p2

    .line 141
    move-object v7, p0

    .line 142
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/ProxyManager;->registerProxy(Landroid/accessibilityservice/IAccessibilityServiceClient;IILcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;)V

    .line 143
    .line 144
    .line 145
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 146
    .line 147
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 148
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClearAccessibilityCacheLocked()V

    .line 149
    .line 150
    .line 151
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 153
    .line 154
    .line 155
    const/4 p0, 0x1

    .line 156
    return p0

    .line 157
    :catchall_0
    move-exception p0

    .line 158
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 160
    :catchall_1
    move-exception p0

    .line 161
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 162
    .line 163
    .line 164
    throw p0

    .line 165
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 166
    .line 167
    const-string p1, "The display "

    .line 168
    .line 169
    const-string v0, " does not belong to the caller."

    .line 170
    .line 171
    invoke-static {p2, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw p0

    .line 179
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 180
    .line 181
    const-string p1, "The display "

    .line 182
    .line 183
    const-string v0, " is already being proxy-ed"

    .line 184
    .line 185
    invoke-static {p2, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw p0

    .line 193
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 194
    .line 195
    const-string p1, "The display "

    .line 196
    .line 197
    const-string v0, " does not exist or is not tracked by accessibility."

    .line 198
    .line 199
    invoke-static {p2, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw p0

    .line 207
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 208
    .line 209
    const-string p1, "The display id "

    .line 210
    .line 211
    const-string v0, " is invalid."

    .line 212
    .line 213
    invoke-static {p2, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw p0
.end method

.method public final registerSystemAction(Landroid/app/RemoteAction;I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->registerSystemAction_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 5
    .line 6
    const-wide/16 v1, 0x4

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v4, "action="

    .line 19
    .line 20
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v4, ";actionId="

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const-string v4, "AccessibilityManagerService.registerSystemAction"

    .line 39
    .line 40
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getSystemActionPerformer()Lcom/android/server/accessibility/SystemActionPerformer;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/SystemActionPerformer;->registerSystemAction(ILandroid/app/RemoteAction;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;II)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->registerUiTestAutomationService_enforcePermission()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 7
    .line 8
    const-wide/16 v2, 0x4

    .line 9
    .line 10
    invoke-virtual {v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 17
    .line 18
    const-string v4, "AccessibilityManagerService.registerUiTestAutomationService"

    .line 19
    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string/jumbo v6, "owner="

    .line 23
    .line 24
    .line 25
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    move-object/from16 v6, p1

    .line 29
    .line 30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v7, ";serviceClient="

    .line 34
    .line 35
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-object/from16 v7, p2

    .line 39
    .line 40
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v8, ";accessibilityServiceInfo="

    .line 44
    .line 45
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-object/from16 v8, p3

    .line 49
    .line 50
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v9, ";flags="

    .line 54
    .line 55
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    move/from16 v14, p5

    .line 59
    .line 60
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    move-object/from16 v6, p1

    .line 72
    .line 73
    move-object/from16 v7, p2

    .line 74
    .line 75
    move-object/from16 v8, p3

    .line 76
    .line 77
    move/from16 v14, p5

    .line 78
    .line 79
    :goto_0
    iget-object v15, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 80
    .line 81
    monitor-enter v15

    .line 82
    move/from16 v1, p4

    .line 83
    .line 84
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->changeCurrentUserForTestAutomationIfNeededLocked(I)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 88
    .line 89
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 90
    .line 91
    sget v9, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    .line 92
    .line 93
    add-int/lit8 v2, v9, 0x1

    .line 94
    .line 95
    sput v2, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    .line 96
    .line 97
    iget-object v10, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 98
    .line 99
    iget-object v11, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 100
    .line 101
    iget-object v12, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 102
    .line 103
    iget-object v13, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 104
    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getSystemActionPerformer()Lcom/android/server/accessibility/SystemActionPerformer;

    .line 106
    .line 107
    .line 108
    move-result-object v16

    .line 109
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 110
    .line 111
    move-object/from16 v2, p1

    .line 112
    .line 113
    move-object/from16 v3, p2

    .line 114
    .line 115
    move-object/from16 v17, v5

    .line 116
    .line 117
    move-object/from16 v5, p3

    .line 118
    .line 119
    move v6, v9

    .line 120
    move-object v7, v10

    .line 121
    move-object v8, v11

    .line 122
    move-object/from16 v9, p0

    .line 123
    .line 124
    move-object v10, v12

    .line 125
    move-object v11, v13

    .line 126
    move-object/from16 v12, v16

    .line 127
    .line 128
    move-object/from16 v13, v17

    .line 129
    .line 130
    move/from16 v14, p5

    .line 131
    .line 132
    invoke-virtual/range {v1 .. v14}, Lcom/android/server/accessibility/UiAutomationManager;->registerUiTestAutomationServiceLocked(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    .line 133
    .line 134
    .line 135
    iget v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    const/4 v2, 0x0

    .line 142
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 143
    .line 144
    .line 145
    monitor-exit v15

    .line 146
    return-void

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    throw v0
.end method

.method public final removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 2
    .line 3
    const-wide/16 v1, 0x4

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 12
    .line 13
    const-string v3, "AccessibilityManagerService.removeAccessibilityInteractionConnection"

    .line 14
    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v5, "window="

    .line 18
    .line 19
    .line 20
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 39
    .line 40
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    .line 54
    .line 55
    invoke-static {p1, v1, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-ltz v1, :cond_1

    .line 60
    .line 61
    invoke-virtual {p0, v1, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->onAccessibilityInteractionConnectionRemovedLocked(ILandroid/os/IBinder;)V

    .line 62
    .line 63
    .line 64
    monitor-exit v0

    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_2

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    const/4 v2, 0x0

    .line 75
    :goto_0
    if-ge v2, v1, :cond_3

    .line 76
    .line 77
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    .line 78
    .line 79
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getInteractionConnectionsForUserLocked(I)Landroid/util/SparseArray;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-static {p1, v4, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-ltz v3, :cond_2

    .line 96
    .line 97
    invoke-virtual {p0, v3, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->onAccessibilityInteractionConnectionRemovedLocked(ILandroid/os/IBinder;)V

    .line 98
    .line 99
    .line 100
    monitor-exit v0

    .line 101
    goto :goto_1

    .line 102
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    monitor-exit v0

    .line 106
    :goto_1
    return-void

    .line 107
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    throw p0
.end method

.method public final removeClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 5
    .line 6
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->isCallerInteractingAcrossUsers(I)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    monitor-exit v0

    .line 32
    return p0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p0, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    monitor-exit v0

    .line 42
    return p0

    .line 43
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method public final requestImeLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    instance-of v0, p1, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    check-cast p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;

    .line 15
    .line 16
    const/4 v2, 0x3

    .line 17
    invoke-direct {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 28
    .line 29
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;

    .line 30
    .line 31
    const/4 v2, 0x4

    .line 32
    invoke-direct {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method public final resetClientsLocked(ILandroid/os/RemoteCallbackList;)V
    .locals 4

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_3

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter p0

    .line 13
    const/4 v0, 0x0

    .line 14
    move v1, v0

    .line 15
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ge v1, v2, :cond_2

    .line 20
    .line 21
    invoke-virtual {p2, v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 26
    .line 27
    iget v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    .line 28
    .line 29
    if-ne v3, p1, :cond_1

    .line 30
    .line 31
    iput v0, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p1

    .line 43
    :cond_3
    :goto_3
    return-void
.end method

.method public final restoreAccessibilityButtonTargetsLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedStringToSet(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/Set;Z)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedStringToSet(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/Set;Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Ljava/util/LinkedHashSet;

    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/util/LinkedHashSet;->clear()V

    .line 33
    .line 34
    .line 35
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Ljava/util/LinkedHashSet;

    .line 36
    .line 37
    invoke-virtual {p2, v0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 38
    .line 39
    .line 40
    iget-object v6, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Ljava/util/LinkedHashSet;

    .line 41
    .line 42
    new-instance v7, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 43
    .line 44
    const/4 p2, 0x0

    .line 45
    invoke-direct {v7, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 46
    .line 47
    .line 48
    const-string v4, "accessibility_button_targets"

    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v8, 0x0

    .line 52
    move-object v3, p0

    .line 53
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final restoreCurrentUserAfterTestAutomationIfNeededLocked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mVisibleBgUserIds:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    const-string v1, "AccessibilityManagerService"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo p0, "restoreCurrentUserForTestAutomationIfNeededLocked(): ignoring because device doesn\'t support visible background users"

    .line 8
    .line 9
    .line 10
    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRealCurrentUserId:I

    .line 15
    .line 16
    const/4 v2, -0x2

    .line 17
    if-ne v0, v2, :cond_1

    .line 18
    .line 19
    const-string/jumbo p0, "restoreCurrentUserForTestAutomationIfNeededLocked(): ignoring because mRealCurrentUserId is already USER_CURRENT"

    .line 20
    .line 21
    .line 22
    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 31
    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    filled-new-array {v0, v3}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string/jumbo v3, "restoreCurrentUserForTestAutomationIfNeededLocked(): restoring current user to %d after using %d for test automation purposes"

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v3, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRealCurrentUserId:I

    .line 47
    .line 48
    iput v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mRealCurrentUserId:I

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->switchUser(I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final restoreEnabledAccessibilityServicesLocked(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    invoke-direct {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, p2, v1, v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedStringToSet(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/Set;Z)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 14
    .line 15
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    .line 16
    .line 17
    const/4 v1, 0x5

    .line 18
    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {p0, p3, v0, p2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedStringToSet(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/Set;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iget-object p3, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 30
    .line 31
    check-cast p3, Ljava/util/HashSet;

    .line 32
    .line 33
    invoke-virtual {p3}, Ljava/util/HashSet;->clear()V

    .line 34
    .line 35
    .line 36
    iget-object p3, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 39
    .line 40
    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 41
    .line 42
    .line 43
    iget-object p3, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 44
    .line 45
    const-string/jumbo v0, "enabled_accessibility_services"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v2, v0, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(ILjava/lang/String;Ljava/util/Set;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p2, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 52
    .line 53
    .line 54
    const/4 p3, 0x0

    .line 55
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->migrateAccessibilityButtonSettingsIfNecessaryLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 7

    .line 1
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserNonInteractiveUiTimeout:I

    .line 2
    .line 3
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserInteractiveUiTimeout:I

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-nez v1, :cond_5

    .line 8
    .line 9
    :cond_0
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    move v5, v4

    .line 14
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    if-ge v3, v6, :cond_3

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    check-cast v6, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 25
    .line 26
    iget-object v6, v6, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 27
    .line 28
    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getInteractiveUiTimeoutMillis()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-ge v4, v6, :cond_1

    .line 33
    .line 34
    move v4, v6

    .line 35
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    check-cast v6, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 40
    .line 41
    iget-object v6, v6, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 42
    .line 43
    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getNonInteractiveUiTimeoutMillis()I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-ge v5, v6, :cond_2

    .line 48
    .line 49
    move v5, v6

    .line 50
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    if-nez v0, :cond_4

    .line 54
    .line 55
    move v0, v5

    .line 56
    :cond_4
    if-nez v1, :cond_5

    .line 57
    .line 58
    move v1, v4

    .line 59
    :cond_5
    iput v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mNonInteractiveUiTimeout:I

    .line 60
    .line 61
    iput v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInteractiveUiTimeout:I

    .line 62
    .line 63
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 64
    .line 65
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda12;

    .line 66
    .line 67
    const/4 v4, 0x4

    .line 68
    invoke-direct {v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda12;-><init>(I)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 72
    .line 73
    invoke-static {v1, v0}, Lcom/android/internal/util/IntPair;->of(II)J

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v3, p0, p1, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {v2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getClientStateLocked(Lcom/android/server/accessibility/AccessibilityUserState;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mLastSentClientState:I

    .line 6
    .line 7
    if-ne v1, v0, :cond_0

    .line 8
    .line 9
    if-eqz p2, :cond_2

    .line 10
    .line 11
    :cond_0
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-gtz p2, :cond_1

    .line 18
    .line 19
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-lez p2, :cond_2

    .line 26
    .line 27
    :cond_1
    iput v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mLastSentClientState:I

    .line 28
    .line 29
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 30
    .line 31
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda12;

    .line 32
    .line 33
    const/4 v2, 0x6

    .line 34
    invoke-direct {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda12;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 42
    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {v1, p0, v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method public final semCheckMdnieColorBlind([I)Z
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->cvdCalculator:Lcom/android/server/accessibility/CVDCalculator;

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    iput-object v2, v1, Lcom/android/server/accessibility/CVDCalculator;->mInputNums:[I

    .line 8
    .line 9
    iget-object v2, v1, Lcom/android/server/accessibility/CVDCalculator;->u:[D

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    aget-wide v4, v2, v3

    .line 13
    .line 14
    iget-object v6, v1, Lcom/android/server/accessibility/CVDCalculator;->SpotsU:[D

    .line 15
    .line 16
    aput-wide v4, v6, v3

    .line 17
    .line 18
    iget-object v4, v1, Lcom/android/server/accessibility/CVDCalculator;->v:[D

    .line 19
    .line 20
    aget-wide v7, v4, v3

    .line 21
    .line 22
    iget-object v5, v1, Lcom/android/server/accessibility/CVDCalculator;->SpotsV:[D

    .line 23
    .line 24
    aput-wide v7, v5, v3

    .line 25
    .line 26
    move v7, v3

    .line 27
    :goto_0
    const/16 v8, 0xf

    .line 28
    .line 29
    if-ge v7, v8, :cond_0

    .line 30
    .line 31
    :try_start_0
    iget-object v8, v1, Lcom/android/server/accessibility/CVDCalculator;->mInputNums:[I

    .line 32
    .line 33
    aget v8, v8, v7

    .line 34
    .line 35
    add-int/lit8 v7, v7, 0x1

    .line 36
    .line 37
    aget-wide v9, v2, v8

    .line 38
    .line 39
    aput-wide v9, v6, v7

    .line 40
    .line 41
    aget-wide v8, v4, v8

    .line 42
    .line 43
    aput-wide v8, v5, v7
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_0
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->cvdCalculator:Lcom/android/server/accessibility/CVDCalculator;

    .line 53
    .line 54
    new-array v2, v8, [D

    .line 55
    .line 56
    new-array v4, v8, [D

    .line 57
    .line 58
    move v5, v3

    .line 59
    :goto_1
    if-ge v5, v8, :cond_1

    .line 60
    .line 61
    add-int/lit8 v6, v5, 0x1

    .line 62
    .line 63
    iget-object v7, v1, Lcom/android/server/accessibility/CVDCalculator;->SpotsU:[D

    .line 64
    .line 65
    aget-wide v9, v7, v6

    .line 66
    .line 67
    aget-wide v11, v7, v5

    .line 68
    .line 69
    sub-double/2addr v9, v11

    .line 70
    aput-wide v9, v2, v5

    .line 71
    .line 72
    iget-object v7, v1, Lcom/android/server/accessibility/CVDCalculator;->SpotsV:[D

    .line 73
    .line 74
    aget-wide v9, v7, v6

    .line 75
    .line 76
    aget-wide v11, v7, v5

    .line 77
    .line 78
    sub-double/2addr v9, v11

    .line 79
    aput-wide v9, v4, v5

    .line 80
    .line 81
    move v5, v6

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    move v7, v3

    .line 87
    const-wide/16 v9, 0x0

    .line 88
    .line 89
    const-wide/16 v11, 0x0

    .line 90
    .line 91
    :goto_2
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    .line 92
    .line 93
    if-ge v7, v8, :cond_2

    .line 94
    .line 95
    aget-wide v5, v2, v7

    .line 96
    .line 97
    mul-double v17, v5, v13

    .line 98
    .line 99
    aget-wide v19, v4, v7

    .line 100
    .line 101
    mul-double v17, v17, v19

    .line 102
    .line 103
    add-double v9, v17, v9

    .line 104
    .line 105
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 106
    .line 107
    .line 108
    move-result-wide v5

    .line 109
    move-wide/from16 v17, v9

    .line 110
    .line 111
    aget-wide v8, v4, v7

    .line 112
    .line 113
    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 114
    .line 115
    .line 116
    move-result-wide v8

    .line 117
    sub-double/2addr v5, v8

    .line 118
    add-double/2addr v11, v5

    .line 119
    add-int/lit8 v7, v7, 0x1

    .line 120
    .line 121
    move-wide/from16 v9, v17

    .line 122
    .line 123
    const/16 v8, 0xf

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_2
    div-double/2addr v9, v11

    .line 127
    invoke-static {v9, v10}, Ljava/lang/Math;->atan(D)D

    .line 128
    .line 129
    .line 130
    move-result-wide v5

    .line 131
    div-double/2addr v5, v13

    .line 132
    const/4 v7, 0x2

    .line 133
    new-array v8, v7, [D

    .line 134
    .line 135
    const-wide/16 v9, 0x0

    .line 136
    .line 137
    aput-wide v9, v8, v3

    .line 138
    .line 139
    const/4 v11, 0x1

    .line 140
    aput-wide v9, v8, v11

    .line 141
    .line 142
    cmpg-double v9, v5, v9

    .line 143
    .line 144
    const-wide v15, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    if-gez v9, :cond_3

    .line 150
    .line 151
    add-double/2addr v15, v5

    .line 152
    goto :goto_3

    .line 153
    :cond_3
    sub-double v15, v5, v15

    .line 154
    .line 155
    :goto_3
    move v10, v3

    .line 156
    :goto_4
    const/16 v9, 0xf

    .line 157
    .line 158
    if-ge v10, v9, :cond_4

    .line 159
    .line 160
    aget-wide v17, v8, v3

    .line 161
    .line 162
    aget-wide v19, v4, v10

    .line 163
    .line 164
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    .line 165
    .line 166
    .line 167
    move-result-wide v21

    .line 168
    mul-double v21, v21, v19

    .line 169
    .line 170
    aget-wide v19, v2, v10

    .line 171
    .line 172
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    .line 173
    .line 174
    .line 175
    move-result-wide v23

    .line 176
    mul-double v23, v23, v19

    .line 177
    .line 178
    move v12, v10

    .line 179
    sub-double v9, v21, v23

    .line 180
    .line 181
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 182
    .line 183
    .line 184
    move-result-wide v9

    .line 185
    add-double v9, v9, v17

    .line 186
    .line 187
    aput-wide v9, v8, v3

    .line 188
    .line 189
    aget-wide v9, v8, v11

    .line 190
    .line 191
    aget-wide v17, v4, v12

    .line 192
    .line 193
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    .line 194
    .line 195
    .line 196
    move-result-wide v19

    .line 197
    mul-double v19, v19, v17

    .line 198
    .line 199
    aget-wide v17, v2, v12

    .line 200
    .line 201
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    .line 202
    .line 203
    .line 204
    move-result-wide v21

    .line 205
    mul-double v21, v21, v17

    .line 206
    .line 207
    move-object/from16 v18, v4

    .line 208
    .line 209
    sub-double v3, v19, v21

    .line 210
    .line 211
    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 212
    .line 213
    .line 214
    move-result-wide v3

    .line 215
    add-double/2addr v3, v9

    .line 216
    aput-wide v3, v8, v11

    .line 217
    .line 218
    add-int/lit8 v10, v12, 0x1

    .line 219
    .line 220
    move-object/from16 v4, v18

    .line 221
    .line 222
    const/4 v3, 0x0

    .line 223
    goto :goto_4

    .line 224
    :cond_4
    aget-wide v9, v8, v3

    .line 225
    .line 226
    const-wide/high16 v17, 0x402e000000000000L    # 15.0

    .line 227
    .line 228
    div-double v9, v9, v17

    .line 229
    .line 230
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    .line 231
    .line 232
    .line 233
    move-result-wide v9

    .line 234
    aput-wide v9, v8, v3

    .line 235
    .line 236
    aget-wide v9, v8, v11

    .line 237
    .line 238
    div-double v9, v9, v17

    .line 239
    .line 240
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    .line 241
    .line 242
    .line 243
    move-result-wide v9

    .line 244
    aput-wide v9, v8, v11

    .line 245
    .line 246
    aget-wide v11, v8, v3

    .line 247
    .line 248
    cmpl-double v2, v11, v9

    .line 249
    .line 250
    const-wide v3, 0x400921fb54442d18L    # Math.PI

    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    const-wide v18, 0x4066800000000000L    # 180.0

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    if-lez v2, :cond_5

    .line 261
    .line 262
    iput-wide v11, v1, Lcom/android/server/accessibility/CVDCalculator;->majorRadius:D

    .line 263
    .line 264
    iput-wide v9, v1, Lcom/android/server/accessibility/CVDCalculator;->minorRadius:D

    .line 265
    .line 266
    mul-double v15, v15, v18

    .line 267
    .line 268
    div-double v2, v15, v3

    .line 269
    .line 270
    iput-wide v2, v1, Lcom/android/server/accessibility/CVDCalculator;->majorAngle:D

    .line 271
    .line 272
    goto :goto_5

    .line 273
    :cond_5
    iput-wide v9, v1, Lcom/android/server/accessibility/CVDCalculator;->majorRadius:D

    .line 274
    .line 275
    iput-wide v11, v1, Lcom/android/server/accessibility/CVDCalculator;->minorRadius:D

    .line 276
    .line 277
    mul-double v5, v5, v18

    .line 278
    .line 279
    div-double/2addr v5, v3

    .line 280
    iput-wide v5, v1, Lcom/android/server/accessibility/CVDCalculator;->majorAngle:D

    .line 281
    .line 282
    :goto_5
    iget-wide v2, v1, Lcom/android/server/accessibility/CVDCalculator;->majorRadius:D

    .line 283
    .line 284
    const-wide v4, 0x4022795e9e1b089aL    # 9.23705

    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    div-double v4, v2, v4

    .line 290
    .line 291
    iput-wide v4, v1, Lcom/android/server/accessibility/CVDCalculator;->c_index:D

    .line 292
    .line 293
    invoke-static {v2, v3, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 294
    .line 295
    .line 296
    move-result-wide v2

    .line 297
    iget-wide v4, v1, Lcom/android/server/accessibility/CVDCalculator;->minorRadius:D

    .line 298
    .line 299
    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 300
    .line 301
    .line 302
    move-result-wide v4

    .line 303
    add-double/2addr v4, v2

    .line 304
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 305
    .line 306
    .line 307
    iget-wide v2, v1, Lcom/android/server/accessibility/CVDCalculator;->c_index:D

    .line 308
    .line 309
    const-wide v4, 0x3ff999999999999aL    # 1.6

    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    cmpg-double v6, v2, v4

    .line 315
    .line 316
    const/4 v8, 0x3

    .line 317
    if-gtz v6, :cond_6

    .line 318
    .line 319
    iput v8, v1, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    .line 320
    .line 321
    const/4 v11, 0x0

    .line 322
    goto :goto_6

    .line 323
    :cond_6
    iget-wide v9, v1, Lcom/android/server/accessibility/CVDCalculator;->majorAngle:D

    .line 324
    .line 325
    const-wide v11, 0x3fe6666666666666L    # 0.7

    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    cmpl-double v11, v9, v11

    .line 331
    .line 332
    if-ltz v11, :cond_7

    .line 333
    .line 334
    const/4 v11, 0x0

    .line 335
    iput v11, v1, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    .line 336
    .line 337
    goto :goto_6

    .line 338
    :cond_7
    const/4 v11, 0x0

    .line 339
    const-wide v12, -0x3fafc00000000000L    # -65.0

    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    cmpg-double v9, v9, v12

    .line 345
    .line 346
    if-gez v9, :cond_8

    .line 347
    .line 348
    iput v7, v1, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    .line 349
    .line 350
    goto :goto_6

    .line 351
    :cond_8
    const/4 v7, 0x1

    .line 352
    iput v7, v1, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    .line 353
    .line 354
    :goto_6
    if-gez v6, :cond_9

    .line 355
    .line 356
    move-wide v2, v4

    .line 357
    :cond_9
    const-wide v6, 0x4010cccccccccccdL    # 4.2

    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    cmpl-double v9, v2, v6

    .line 363
    .line 364
    if-lez v9, :cond_a

    .line 365
    .line 366
    move-wide v2, v6

    .line 367
    :cond_a
    sub-double/2addr v2, v4

    .line 368
    const-wide v4, 0x4004cccccccccccdL    # 2.6

    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    div-double/2addr v2, v4

    .line 374
    const-wide v4, 0x3fb999999999999aL    # 0.1

    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    cmpg-double v6, v2, v4

    .line 380
    .line 381
    const-wide/high16 v9, 0x4014000000000000L    # 5.0

    .line 382
    .line 383
    if-gez v6, :cond_b

    .line 384
    .line 385
    mul-double/2addr v2, v9

    .line 386
    goto :goto_7

    .line 387
    :cond_b
    sub-double/2addr v2, v4

    .line 388
    mul-double/2addr v2, v9

    .line 389
    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    .line 390
    .line 391
    div-double/2addr v2, v4

    .line 392
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 393
    .line 394
    add-double/2addr v2, v4

    .line 395
    :goto_7
    iput-wide v2, v1, Lcom/android/server/accessibility/CVDCalculator;->CVDSeverity:D

    .line 396
    .line 397
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->cvdCalculator:Lcom/android/server/accessibility/CVDCalculator;

    .line 398
    .line 399
    iget v2, v1, Lcom/android/server/accessibility/CVDCalculator;->CVDType:I

    .line 400
    .line 401
    iput v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCVDType:I

    .line 402
    .line 403
    iget-wide v1, v1, Lcom/android/server/accessibility/CVDCalculator;->CVDSeverity:D

    .line 404
    .line 405
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    .line 406
    .line 407
    mul-double/2addr v1, v3

    .line 408
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    .line 409
    .line 410
    .line 411
    move-result-wide v1

    .line 412
    long-to-int v1, v1

    .line 413
    int-to-double v1, v1

    .line 414
    div-double/2addr v1, v3

    .line 415
    double-to-float v1, v1

    .line 416
    iput v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCVDSeverity:F

    .line 417
    .line 418
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 419
    .line 420
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    iget v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCVDType:I

    .line 425
    .line 426
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 427
    .line 428
    .line 429
    move-result v3

    .line 430
    const-string/jumbo v4, "color_blind_cvdtype"

    .line 431
    .line 432
    .line 433
    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 434
    .line 435
    .line 436
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 437
    .line 438
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    iget v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCVDSeverity:F

    .line 443
    .line 444
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 445
    .line 446
    .line 447
    move-result v3

    .line 448
    const-string/jumbo v4, "color_blind_cvdseverity"

    .line 449
    .line 450
    .line 451
    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 452
    .line 453
    .line 454
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 455
    .line 456
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    const-string/jumbo v2, "color_blind_user_parameter"

    .line 461
    .line 462
    .line 463
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 464
    .line 465
    .line 466
    move-result v3

    .line 467
    const/high16 v4, 0x3f000000    # 0.5f

    .line 468
    .line 469
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 470
    .line 471
    .line 472
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 473
    .line 474
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    const-string/jumbo v2, "color_blind_test"

    .line 479
    .line 480
    .line 481
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 482
    .line 483
    .line 484
    move-result v3

    .line 485
    const/4 v4, 0x1

    .line 486
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 487
    .line 488
    .line 489
    move-result v1

    .line 490
    if-eqz v1, :cond_d

    .line 491
    .line 492
    iget v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCVDType:I

    .line 493
    .line 494
    if-eq v0, v8, :cond_c

    .line 495
    .line 496
    move v3, v4

    .line 497
    goto :goto_8

    .line 498
    :cond_c
    move v3, v11

    .line 499
    :goto_8
    return v3

    .line 500
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 501
    .line 502
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 503
    .line 504
    .line 505
    throw v0
.end method

.method public final semDisableMdnieColorFilter()Z
    .locals 2

    .line 1
    sget-boolean v0, Landroid/view/accessibility/A11yRune;->A11Y_COLOR_BOOL_SUPPORT_COLOR_FILTER_MDNIE_HW:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const-string/jumbo v0, "semDisableMdnieColorFilter "

    .line 8
    .line 9
    .line 10
    const-string v1, "AccessibilityManagerService"

    .line 11
    .line 12
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semDisableMdnieColorFilter_enforcePermission()V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-string/jumbo v0, "mDNIe"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    if-nez p0, :cond_1

    .line 31
    .line 32
    const-string p0, "SemMdnieManager is null."

    .line 33
    .line 34
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return v0

    .line 38
    :cond_1
    invoke-virtual {p0, v0, v0, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setColorVision(ZII)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0
.end method

.method public final semDisableWindowMagnification()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semDisableWindowMagnification_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getDisplayId()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZ)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getDisplayId()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, p0, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setCursorVisible(IZ)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final semDumpCallStack(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCallStack:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x14

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCallStack:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCallStack:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final semEnableMdnieColorFilter(II)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gez p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget-boolean v1, Landroid/view/accessibility/A11yRune;->A11Y_COLOR_BOOL_SUPPORT_COLOR_FILTER_MDNIE_HW:Z

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    const-string/jumbo v1, "semEnableMdnieColorFilter "

    .line 12
    .line 13
    .line 14
    const-string v3, ", "

    .line 15
    .line 16
    const-string v4, "AccessibilityManagerService"

    .line 17
    .line 18
    invoke-static {p1, p2, v1, v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semEnableMdnieColorFilter_enforcePermission()V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    const-string/jumbo v1, "mDNIe"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 34
    .line 35
    if-nez p0, :cond_2

    .line 36
    .line 37
    const-string p0, "SemMdnieManager is null."

    .line 38
    .line 39
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return v0

    .line 43
    :cond_2
    invoke-virtual {p0, v2, p1, p2}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setColorVision(ZII)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0
.end method

.method public final semEnableWindowMagnification(II)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semEnableWindowMagnification_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    .line 9
    .line 10
    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->connectionStateToString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "DISCONNECTED"

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->requestConnection(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v2, "accessibility_magnification_mode"

    .line 37
    .line 38
    const/4 v3, 0x2

    .line 39
    const/4 v4, -0x2

    .line 40
    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v2, "accessibility_am_magnification_mode"

    .line 50
    .line 51
    invoke-static {v0, v2, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v2, "accessibility_magnification_capability"

    .line 61
    .line 62
    const/4 v5, 0x3

    .line 63
    invoke-static {v0, v2, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-ne v0, v1, :cond_1

    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 76
    .line 77
    .line 78
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const-string v2, "accessibility_display_magnification_scale"

    .line 85
    .line 86
    const/high16 v3, 0x3f800000    # 1.0f

    .line 87
    .line 88
    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    cmpg-float v2, v0, v3

    .line 93
    .line 94
    if-gez v2, :cond_2

    .line 95
    .line 96
    move v6, v3

    .line 97
    goto :goto_0

    .line 98
    :cond_2
    move v6, v0

    .line 99
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getDisplayId()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    int-to-float v7, p1

    .line 108
    int-to-float v8, p2

    .line 109
    sget-object v9, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 110
    .line 111
    const/4 v10, 0x0

    .line 112
    const/4 v11, 0x0

    .line 113
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getDisplayId()I

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    invoke-virtual {p1, p0, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setCursorVisible(IZ)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public final semGetWindowMagnificationBounds()Landroid/graphics/Rect;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semGetWindowMagnificationBounds_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getDisplayId()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 22
    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    monitor-exit v1

    .line 26
    const/4 p0, 0x0

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mBounds:Landroid/graphics/Rect;

    .line 31
    .line 32
    monitor-exit v1

    .line 33
    :goto_0
    return-object p0

    .line 34
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method public final semGetWindowMagnificationScale()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semGetWindowMagnificationScale_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getDisplayId()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final semInjectInputEventToInputFilter(Landroid/view/InputEvent;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semInjectInputEventToInputFilter_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final semIsAccessibilityButtonShown()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    :goto_0
    if-ltz v0, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 24
    .line 25
    iget-boolean v2, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v1, 0x0

    .line 34
    :goto_1
    return v1
.end method

.method public final semIsAccessibilityServiceEnabled(I)Z
    .locals 10

    .line 1
    const-string/jumbo v0, "semIsAccessibilityServiceEnabled()"

    .line 2
    .line 3
    .line 4
    const-string v1, "AccessibilityManagerService"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p1, 0x10

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    move v0, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    and-int/lit8 v4, p1, 0x20

    .line 19
    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    move v4, v3

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v4, v2

    .line 25
    :goto_1
    and-int/lit8 v5, p1, 0x40

    .line 26
    .line 27
    if-eqz v5, :cond_2

    .line 28
    .line 29
    move v5, v3

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    move v5, v2

    .line 32
    :goto_2
    and-int/lit16 v6, p1, 0x800

    .line 33
    .line 34
    if-eqz v6, :cond_3

    .line 35
    .line 36
    move v6, v3

    .line 37
    goto :goto_3

    .line 38
    :cond_3
    move v6, v2

    .line 39
    :goto_3
    and-int/lit16 v7, p1, 0x1000

    .line 40
    .line 41
    if-eqz v7, :cond_4

    .line 42
    .line 43
    move v7, v3

    .line 44
    goto :goto_4

    .line 45
    :cond_4
    move v7, v2

    .line 46
    :goto_4
    and-int/lit16 p1, p1, 0x2000

    .line 47
    .line 48
    if-eqz p1, :cond_5

    .line 49
    .line 50
    move p1, v3

    .line 51
    goto :goto_5

    .line 52
    :cond_5
    move p1, v2

    .line 53
    :goto_5
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    const-string/jumbo v9, "enabled_accessibility_services"

    .line 60
    .line 61
    .line 62
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 63
    .line 64
    invoke-static {v8, v9, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    if-nez p0, :cond_6

    .line 69
    .line 70
    const-string p0, "accesibilityService is null"

    .line 71
    .line 72
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    return v2

    .line 76
    :cond_6
    if-eqz v0, :cond_7

    .line 77
    .line 78
    const-string v0, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_7

    .line 85
    .line 86
    return v3

    .line 87
    :cond_7
    if-eqz v4, :cond_8

    .line 88
    .line 89
    const-string v0, "(?i).*com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService.*"

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_8

    .line 96
    .line 97
    return v3

    .line 98
    :cond_8
    if-eqz v5, :cond_9

    .line 99
    .line 100
    const-string v0, "(?i).*com.samsung.accessibility/com.samsung.accessibility.universalswitch.UniversalSwitchService.*"

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_9

    .line 107
    .line 108
    return v3

    .line 109
    :cond_9
    if-eqz v6, :cond_a

    .line 110
    .line 111
    const-string v0, "(?i).*com.google.android.accessibility.accessibilitymenu.AccessibilityMenuService.*"

    .line 112
    .line 113
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_a

    .line 118
    .line 119
    return v3

    .line 120
    :cond_a
    if-eqz v7, :cond_b

    .line 121
    .line 122
    const-string v0, "(?i).*com.google.android.accessibility.selecttospeak.SelectToSpeakService.*"

    .line 123
    .line 124
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_b

    .line 129
    .line 130
    return v3

    .line 131
    :cond_b
    if-eqz p1, :cond_c

    .line 132
    .line 133
    const-string p1, "(?i).*com.samsung.accessibility/com.samsung.accessibility.assistantmenu.serviceframework.AssistantMenuService.*"

    .line 134
    .line 135
    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    if-eqz p0, :cond_c

    .line 140
    .line 141
    return v3

    .line 142
    :cond_c
    return v2
.end method

.method public final semIsDarkScreenMode()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semIsDarkScreenMode_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->isScreenReaderEnabled()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z

    .line 13
    .line 14
    return p0
.end method

.method public final semIsWindowMagnificationEnabled()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semIsWindowMagnificationEnabled_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getDisplayId()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final semLockNow()V
    .locals 2

    .line 1
    const-string/jumbo v0, "window"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, -0x1

    .line 29
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final semMoveWindowMagnification(FF)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semMoveWindowMagnification_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getDisplayId()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->moveWindowMagnification(IFF)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final semOpenDeviceOptions()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerInternal;->showGlobalActions()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final semPerformAccessibilityButtonClick(IILjava/lang/String;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "com.android.server.accessibility.MagnificationController"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 11
    .line 12
    invoke-virtual {p3}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    invoke-virtual {p3, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    xor-int/lit8 p3, p3, 0x1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->MAGNIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 25
    .line 26
    invoke-static {v0, v1, p2, p3}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityButtonToInputFilter(I)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    const-string p0, "Perform shortcut failed, invalid target name:"

    .line 40
    .line 41
    invoke-virtual {p0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string p1, "AccessibilityManagerService"

    .line 46
    .line 47
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    invoke-virtual {p0, p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->performAccessibilityFrameworkFeature(ILandroid/content/ComponentName;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-static {p0, p3}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->updateProfile(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->performAccessibilityShortcutTargetActivity(ILandroid/content/ComponentName;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    invoke-static {p1, v0, p2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 72
    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    invoke-static {p0, p3}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->updateProfile(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_3
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->performAccessibilityShortcutTargetService(IILandroid/content/ComponentName;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    invoke-static {p0, p3}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->updateProfile(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    return-void
.end method

.method public final semRegisterAssistantMenu(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    const-string v0, "AccessibilityManagerService"

    .line 2
    .line 3
    const-string/jumbo v1, "semRegisterAssistantMenu Set the listener from AMS"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/os/Messenger;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAssistantMenuMsgnr:Landroid/os/Messenger;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAssistantMenuMsgnr:Landroid/os/Messenger;

    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public final semSetColorBlind(ZF)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "mDNIe"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 11
    .line 12
    const-string v1, "AccessibilityManagerService"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string p0, "SemMdnieManager is null."

    .line 18
    .line 19
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return v2

    .line 23
    :cond_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string/jumbo v4, "color_adjustment_type"

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    const/4 v6, 0x2

    .line 37
    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    const-string/jumbo v5, "color_blind_test"

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    invoke-static {v4, v5, v2, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string/jumbo v7, "semSetColorBlind "

    .line 61
    .line 62
    .line 63
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v7, ", userParameter : "

    .line 70
    .line 71
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v7, ", colorAdjustmentType : "

    .line 78
    .line 79
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-static {v5, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const/4 v5, 0x4

    .line 86
    const/4 v7, 0x3

    .line 87
    const/4 v8, -0x1

    .line 88
    const/4 v9, 0x1

    .line 89
    if-eq v3, v5, :cond_1

    .line 90
    .line 91
    if-ne v3, v8, :cond_3

    .line 92
    .line 93
    :cond_1
    if-ne v4, v9, :cond_3

    .line 94
    .line 95
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 96
    .line 97
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const-string/jumbo v2, "color_blind_cvdtype"

    .line 102
    .line 103
    .line 104
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    invoke-static {v1, v2, v7, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCVDType:I

    .line 113
    .line 114
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const/4 v2, 0x0

    .line 121
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    const-string/jumbo v4, "color_blind_cvdseverity"

    .line 126
    .line 127
    .line 128
    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCVDSeverity:F

    .line 133
    .line 134
    sget-boolean v2, Landroid/view/accessibility/A11yRune;->A11Y_COLOR_BOOL_SUPPORT_DMC_COLORWEAKNESS:Z

    .line 135
    .line 136
    if-eqz v2, :cond_2

    .line 137
    .line 138
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->cvdCalculator:Lcom/android/server/accessibility/CVDCalculator;

    .line 139
    .line 140
    iget v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCVDType:I

    .line 141
    .line 142
    float-to-double v6, v1

    .line 143
    float-to-double v8, p2

    .line 144
    const/4 v4, 0x0

    .line 145
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/accessibility/CVDCalculator;->getRGBCMY(IIDD)[I

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setmDNIeColorBlind(Z[I)Z

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    return p0

    .line 154
    :cond_2
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->cvdCalculator:Lcom/android/server/accessibility/CVDCalculator;

    .line 155
    .line 156
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCVDType:I

    .line 157
    .line 158
    float-to-double v4, v1

    .line 159
    float-to-double v6, p2

    .line 160
    const/4 p0, 0x1

    .line 161
    move-object v1, v2

    .line 162
    move v2, p0

    .line 163
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/CVDCalculator;->getRGBCMY(IIDD)[I

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setmDNIeColorBlind(Z[I)Z

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    return p0

    .line 172
    :cond_3
    if-eqz v3, :cond_d

    .line 173
    .line 174
    if-ne v3, v8, :cond_4

    .line 175
    .line 176
    goto/16 :goto_3

    .line 177
    .line 178
    :cond_4
    sub-int/2addr v3, v9

    .line 179
    if-ltz v3, :cond_6

    .line 180
    .line 181
    if-le v3, v6, :cond_5

    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_5
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 185
    .line 186
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    const-string/jumbo v4, "predefined_color_blind_intensity"

    .line 191
    .line 192
    .line 193
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    invoke-static {p2, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    if-nez v4, :cond_6

    .line 206
    .line 207
    const-string v4, ","

    .line 208
    .line 209
    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    :try_start_0
    array-length v4, p2

    .line 214
    if-ne v4, v7, :cond_6

    .line 215
    .line 216
    aget-object p2, p2, v3

    .line 217
    .line 218
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    move-result p2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    goto :goto_1

    .line 223
    :catch_0
    :cond_6
    :goto_0
    move p2, v2

    .line 224
    :goto_1
    const-string/jumbo v4, "semSetColorBlind custom intensity "

    .line 225
    .line 226
    .line 227
    invoke-static {p2, v4, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->cvdCalculator:Lcom/android/server/accessibility/CVDCalculator;

    .line 231
    .line 232
    iget-object v1, v1, Lcom/android/server/accessibility/CVDCalculator;->mColorTransferTable:Lcom/android/server/accessibility/ColorTransferTable;

    .line 233
    .line 234
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    new-array v1, v6, [D

    .line 238
    .line 239
    const/4 v4, 0x0

    .line 240
    if-eqz v3, :cond_9

    .line 241
    .line 242
    if-eq v3, v9, :cond_8

    .line 243
    .line 244
    if-eq v3, v6, :cond_7

    .line 245
    .line 246
    move-object v1, v4

    .line 247
    goto :goto_2

    .line 248
    :cond_7
    sget-object v5, Lcom/android/server/accessibility/ColorTransferTable;->Tritan_severity:[D

    .line 249
    .line 250
    aget-wide v5, v5, p2

    .line 251
    .line 252
    aput-wide v5, v1, v2

    .line 253
    .line 254
    sget-object v5, Lcom/android/server/accessibility/ColorTransferTable;->Tritan_userParameter:[D

    .line 255
    .line 256
    aget-wide v5, v5, p2

    .line 257
    .line 258
    aput-wide v5, v1, v9

    .line 259
    .line 260
    goto :goto_2

    .line 261
    :cond_8
    sget-object v5, Lcom/android/server/accessibility/ColorTransferTable;->Deutan_severity:[D

    .line 262
    .line 263
    aget-wide v5, v5, p2

    .line 264
    .line 265
    aput-wide v5, v1, v2

    .line 266
    .line 267
    sget-object v5, Lcom/android/server/accessibility/ColorTransferTable;->Deutan_userParameter:[D

    .line 268
    .line 269
    aget-wide v5, v5, p2

    .line 270
    .line 271
    aput-wide v5, v1, v9

    .line 272
    .line 273
    goto :goto_2

    .line 274
    :cond_9
    sget-object v5, Lcom/android/server/accessibility/ColorTransferTable;->Protan_severity:[D

    .line 275
    .line 276
    aget-wide v5, v5, p2

    .line 277
    .line 278
    aput-wide v5, v1, v2

    .line 279
    .line 280
    sget-object v5, Lcom/android/server/accessibility/ColorTransferTable;->Protan_userParameter:[D

    .line 281
    .line 282
    aget-wide v5, v5, p2

    .line 283
    .line 284
    aput-wide v5, v1, v9

    .line 285
    .line 286
    :goto_2
    if-eqz v1, :cond_a

    .line 287
    .line 288
    move-object v4, v1

    .line 289
    :cond_a
    if-nez v4, :cond_b

    .line 290
    .line 291
    return v2

    .line 292
    :cond_b
    sget-boolean p2, Landroid/view/accessibility/A11yRune;->A11Y_COLOR_BOOL_SUPPORT_DMC_COLORWEAKNESS:Z

    .line 293
    .line 294
    if-eqz p2, :cond_c

    .line 295
    .line 296
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->cvdCalculator:Lcom/android/server/accessibility/CVDCalculator;

    .line 297
    .line 298
    aget-wide v5, v4, v2

    .line 299
    .line 300
    aget-wide v7, v4, v9

    .line 301
    .line 302
    const/4 v2, 0x0

    .line 303
    move-wide v4, v5

    .line 304
    move-wide v6, v7

    .line 305
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/CVDCalculator;->getRGBCMY(IIDD)[I

    .line 306
    .line 307
    .line 308
    move-result-object p0

    .line 309
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setmDNIeColorBlind(Z[I)Z

    .line 310
    .line 311
    .line 312
    move-result p0

    .line 313
    return p0

    .line 314
    :cond_c
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->cvdCalculator:Lcom/android/server/accessibility/CVDCalculator;

    .line 315
    .line 316
    aget-wide v5, v4, v2

    .line 317
    .line 318
    aget-wide v7, v4, v9

    .line 319
    .line 320
    const/4 v2, 0x1

    .line 321
    move-wide v4, v5

    .line 322
    move-wide v6, v7

    .line 323
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/CVDCalculator;->getRGBCMY(IIDD)[I

    .line 324
    .line 325
    .line 326
    move-result-object p0

    .line 327
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setmDNIeColorBlind(Z[I)Z

    .line 328
    .line 329
    .line 330
    move-result p0

    .line 331
    return p0

    .line 332
    :cond_d
    :goto_3
    const-string/jumbo p0, "semSetColorBlind do nothing "

    .line 333
    .line 334
    .line 335
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .line 337
    .line 338
    return v2
.end method

.method public final semSetMdnieAccessibilityMode(IZ)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "semSetMdnieAccessibilityMode "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ", "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "AccessibilityManagerService"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    const-string/jumbo v0, "mDNIe"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 39
    .line 40
    if-nez p0, :cond_0

    .line 41
    .line 42
    const-string p0, "SemMdnieManager is null."

    .line 43
    .line 44
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return p0

    .line 49
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    return p0
.end method

.method public final semSetTwoFingerGestureRecognitionEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->shouldRecogniseTwoFingerGestures:Z

    .line 2
    .line 3
    return-void
.end method

.method public final semToggleDarkScreenMode()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semToggleDarkScreenMode_enforcePermission()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "semToggleDarkScreenMode()"

    .line 5
    .line 6
    .line 7
    const-string v1, "AccessibilityManagerService"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->isScreenReaderEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    xor-int/2addr v0, v2

    .line 27
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    const v3, 0x1040d20

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    const v4, 0x1040d1f

    .line 45
    .line 46
    .line 47
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    const v4, 0x1040d1e

    .line 59
    .line 60
    .line 61
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :goto_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    const/16 v4, 0x20

    .line 76
    .line 77
    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    if-eqz v3, :cond_2

    .line 89
    .line 90
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 94
    .line 95
    const-string/jumbo v3, "mDNIe"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 103
    .line 104
    if-nez v0, :cond_3

    .line 105
    .line 106
    const-string p0, "SemMdnieManager is null."

    .line 107
    .line 108
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setmDNIeScreenCurtain(Z)Z

    .line 115
    .line 116
    .line 117
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z

    .line 118
    .line 119
    if-nez v1, :cond_8

    .line 120
    .line 121
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 122
    .line 123
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    const-string/jumbo v3, "color_blind"

    .line 128
    .line 129
    .line 130
    const/4 v4, 0x0

    .line 131
    const/4 v5, -0x2

    .line 132
    invoke-static {v1, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-ne v1, v2, :cond_4

    .line 137
    .line 138
    move v1, v2

    .line 139
    goto :goto_1

    .line 140
    :cond_4
    move v1, v4

    .line 141
    :goto_1
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 142
    .line 143
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    const-string/jumbo v6, "greyscale_mode"

    .line 148
    .line 149
    .line 150
    invoke-static {v3, v6, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    if-ne v3, v2, :cond_5

    .line 155
    .line 156
    move v4, v2

    .line 157
    :cond_5
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 158
    .line 159
    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-eqz v3, :cond_6

    .line 164
    .line 165
    return-void

    .line 166
    :cond_6
    if-eqz v4, :cond_7

    .line 167
    .line 168
    const/4 p0, 0x4

    .line 169
    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_7
    if-eqz v1, :cond_8

    .line 174
    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 176
    .line 177
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    const-string/jumbo v1, "color_blind_user_parameter"

    .line 182
    .line 183
    .line 184
    const/4 v3, 0x0

    .line 185
    invoke-static {v0, v1, v3, v5}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    invoke-virtual {p0, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->semSetColorBlind(ZF)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :catch_0
    move-exception p0

    .line 194
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    .line 196
    .line 197
    :cond_8
    :goto_2
    return-void
.end method

.method public final semTurnOffAccessibilityService(I)V
    .locals 10

    .line 1
    const-string/jumbo v0, "semTurnOffAccessibilityService()"

    .line 2
    .line 3
    .line 4
    const-string v1, "AccessibilityManagerService"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    .line 10
    .line 11
    const/16 v2, 0x3a

    .line 12
    .line 13
    invoke-direct {v0, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 23
    .line 24
    const-string/jumbo v5, "enabled_accessibility_services"

    .line 25
    .line 26
    .line 27
    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    const-string/jumbo p0, "enabledServicesSetting is null"

    .line 34
    .line 35
    .line 36
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    and-int/lit8 v0, p1, 0x10

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    const/4 v4, 0x1

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    move v0, v4

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    move v0, v3

    .line 77
    :goto_1
    and-int/lit8 v6, p1, 0x20

    .line 78
    .line 79
    if-eqz v6, :cond_4

    .line 80
    .line 81
    move v6, v4

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    move v6, v3

    .line 84
    :goto_2
    and-int/lit8 v7, p1, 0x40

    .line 85
    .line 86
    if-eqz v7, :cond_5

    .line 87
    .line 88
    move v7, v4

    .line 89
    goto :goto_3

    .line 90
    :cond_5
    move v7, v3

    .line 91
    :goto_3
    and-int/lit16 v8, p1, 0x800

    .line 92
    .line 93
    if-eqz v8, :cond_6

    .line 94
    .line 95
    move v8, v4

    .line 96
    goto :goto_4

    .line 97
    :cond_6
    move v8, v3

    .line 98
    :goto_4
    and-int/lit16 v9, p1, 0x1000

    .line 99
    .line 100
    if-eqz v9, :cond_7

    .line 101
    .line 102
    move v9, v4

    .line 103
    goto :goto_5

    .line 104
    :cond_7
    move v9, v3

    .line 105
    :goto_5
    and-int/lit16 p1, p1, 0x2000

    .line 106
    .line 107
    if-eqz p1, :cond_8

    .line 108
    .line 109
    move p1, v4

    .line 110
    goto :goto_6

    .line 111
    :cond_8
    move p1, v3

    .line 112
    :goto_6
    if-eqz v0, :cond_9

    .line 113
    .line 114
    const-string/jumbo v0, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    .line 115
    .line 116
    .line 117
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    :cond_9
    if-eqz v6, :cond_a

    .line 125
    .line 126
    const-string/jumbo v0, "com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"

    .line 127
    .line 128
    .line 129
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    :cond_a
    if-eqz v7, :cond_b

    .line 137
    .line 138
    const-string/jumbo v0, "com.samsung.accessibility/com.samsung.accessibility.universalswitch.UniversalSwitchService"

    .line 139
    .line 140
    .line 141
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    :cond_b
    if-eqz v8, :cond_c

    .line 149
    .line 150
    const-string/jumbo v0, "com.google.android.marvin.talkback/com.google.android.accessibility.accessibilitymenu.AccessibilityMenuService"

    .line 151
    .line 152
    .line 153
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    :cond_c
    if-eqz v9, :cond_d

    .line 161
    .line 162
    const-string/jumbo v0, "com.google.android.marvin.talkback/com.google.android.accessibility.selecttospeak.SelectToSpeakService"

    .line 163
    .line 164
    .line 165
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    :cond_d
    if-eqz p1, :cond_e

    .line 173
    .line 174
    const-string/jumbo p1, "com.samsung.accessibility/com.samsung.accessibility.assistantmenu.serviceframework.AssistantMenuService"

    .line 175
    .line 176
    .line 177
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    if-eqz v6, :cond_f

    .line 198
    .line 199
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    check-cast v6, Landroid/content/ComponentName;

    .line 204
    .line 205
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    goto :goto_7

    .line 216
    :cond_f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-lez v0, :cond_10

    .line 221
    .line 222
    sub-int/2addr v0, v4

    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    :cond_10
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 231
    .line 232
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 237
    .line 238
    invoke-static {v0, v5, p1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    if-eqz p1, :cond_11

    .line 246
    .line 247
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 248
    .line 249
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    const-string v0, "accessibility_enabled"

    .line 254
    .line 255
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 256
    .line 257
    invoke-static {p1, v0, v3, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 258
    .line 259
    .line 260
    :cond_11
    return-void
.end method

.method public final semTurnOnAccessibilityService(I)V
    .locals 7

    .line 1
    const-string/jumbo v0, "semTurnOnAccessibilityService()"

    .line 2
    .line 3
    .line 4
    const-string v1, "AccessibilityManagerService"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    .line 10
    .line 11
    const/16 v2, 0x3a

    .line 12
    .line 13
    invoke-direct {v0, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 23
    .line 24
    const-string/jumbo v5, "enabled_accessibility_services"

    .line 25
    .line 26
    .line 27
    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    const-string/jumbo v3, "enabledServicesSetting == null"

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string v4, ""

    .line 46
    .line 47
    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 48
    .line 49
    invoke-static {v3, v5, v4, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 50
    .line 51
    .line 52
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 59
    .line 60
    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->semIsAccessibilityServiceEnabled(I)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    const-string p0, "The service is already enabled"

    .line 71
    .line 72
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_1
    new-instance v4, Ljava/util/HashSet;

    .line 77
    .line 78
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 79
    .line 80
    .line 81
    if-eqz v3, :cond_3

    .line 82
    .line 83
    invoke-virtual {v0, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_3

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    if-eqz v3, :cond_2

    .line 101
    .line 102
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    const/16 v0, 0x10

    .line 107
    .line 108
    if-eq p1, v0, :cond_9

    .line 109
    .line 110
    const/16 v0, 0x20

    .line 111
    .line 112
    if-eq p1, v0, :cond_8

    .line 113
    .line 114
    const/16 v0, 0x40

    .line 115
    .line 116
    if-eq p1, v0, :cond_7

    .line 117
    .line 118
    const/16 v0, 0x800

    .line 119
    .line 120
    if-eq p1, v0, :cond_6

    .line 121
    .line 122
    const/16 v0, 0x1000

    .line 123
    .line 124
    if-eq p1, v0, :cond_5

    .line 125
    .line 126
    const/16 v0, 0x2000

    .line 127
    .line 128
    if-eq p1, v0, :cond_4

    .line 129
    .line 130
    return-void

    .line 131
    :cond_4
    const-string p1, "SEM_STATE_FLAG_ASSISTANT_MENU"

    .line 132
    .line 133
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    const-string/jumbo p1, "com.samsung.accessibility/com.samsung.accessibility.assistantmenu.serviceframework.AssistantMenuService"

    .line 137
    .line 138
    .line 139
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    goto :goto_1

    .line 144
    :cond_5
    const-string p1, "SEM_STATE_FLAG_SELECT_TO_SPEAK"

    .line 145
    .line 146
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    const-string/jumbo p1, "com.google.android.marvin.talkback/com.google.android.accessibility.selecttospeak.SelectToSpeakService"

    .line 150
    .line 151
    .line 152
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    goto :goto_1

    .line 157
    :cond_6
    const-string p1, "SEM_STATE_FLAG_ACCESSIBILITY_MENU"

    .line 158
    .line 159
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    const-string/jumbo p1, "com.google.android.marvin.talkback/com.google.android.accessibility.accessibilitymenu.AccessibilityMenuService"

    .line 163
    .line 164
    .line 165
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    goto :goto_1

    .line 170
    :cond_7
    const-string p1, "SEM_STATE_FLAG_UNIVERSAL_SWITCH"

    .line 171
    .line 172
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    const-string/jumbo p1, "com.samsung.accessibility/com.samsung.accessibility.universalswitch.UniversalSwitchService"

    .line 176
    .line 177
    .line 178
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    goto :goto_1

    .line 183
    :cond_8
    const-string p1, "SEM_STATE_FLAG_VOICE_ASSISTANT"

    .line 184
    .line 185
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    const-string/jumbo p1, "com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"

    .line 189
    .line 190
    .line 191
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    goto :goto_1

    .line 196
    :cond_9
    const-string p1, "SEM_STATE_FLAG_GOOGLE_TALKBACK"

    .line 197
    .line 198
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    const-string/jumbo p1, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    .line 202
    .line 203
    .line 204
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    :goto_1
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    new-instance p1, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_a

    .line 225
    .line 226
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    check-cast v1, Landroid/content/ComponentName;

    .line 231
    .line 232
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    const/4 v1, 0x1

    .line 248
    if-lez v0, :cond_b

    .line 249
    .line 250
    sub-int/2addr v0, v1

    .line 251
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    :cond_b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 259
    .line 260
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 265
    .line 266
    invoke-static {v0, v5, p1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 267
    .line 268
    .line 269
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 270
    .line 271
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    const-string v0, "accessibility_enabled"

    .line 276
    .line 277
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 278
    .line 279
    invoke-static {p1, v0, v1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 280
    .line 281
    .line 282
    return-void
.end method

.method public final semUpdateAssitantMenu(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    const-string v0, "AccessibilityManagerService"

    .line 2
    .line 3
    const-string v1, "Thread name:"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAssistantMenuMsgnr:Landroid/os/Messenger;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    new-instance v6, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, "Thread ID:"

    .line 43
    .line 44
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v3, "ActivityName"

    .line 63
    .line 64
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string/jumbo p1, "process ID:"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAssistantMenuMsgnr:Landroid/os/Messenger;

    .line 92
    .line 93
    invoke-virtual {p0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catch_0
    const-string/jumbo p0, "semUpdateAssitantMenu: err during get currentThread"

    .line 98
    .line 99
    .line 100
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    :cond_0
    :goto_0
    return-void
.end method

.method public final sendAccessibilityButtonToInputFilter(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    sget-boolean p1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->DEBUG_ALL:Z

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    .line 35
    .line 36
    const-string/jumbo v1, "notifyShortcutTriggered():"

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDetectShortcutTrigger:Z

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->handleShortcutTriggered()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method

.method public final sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 2
    .line 3
    const-wide/16 v1, 0x4

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 12
    .line 13
    const-string v3, "AccessibilityManagerService.sendAccessibilityEvent"

    .line 14
    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v5, "event="

    .line 18
    .line 19
    .line 20
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v5, ";userId="

    .line 27
    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->SEC_DEBUG:Z

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    const-string v0, "AccessibilityManagerService"

    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string/jumbo v2, "sendAccessibilityEvent "

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 70
    .line 71
    monitor-enter v0

    .line 72
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    const/4 v2, 0x0

    .line 77
    const/4 v3, -0x3

    .line 78
    const/4 v4, 0x0

    .line 79
    if-ne v1, v3, :cond_6

    .line 80
    .line 81
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 82
    .line 83
    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 84
    .line 85
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    move-object v6, v2

    .line 90
    move v5, v4

    .line 91
    :goto_0
    if-ge v5, v3, :cond_5

    .line 92
    .line 93
    iget-object v7, v1, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 94
    .line 95
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    check-cast v7, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 100
    .line 101
    if-eqz v7, :cond_4

    .line 102
    .line 103
    iget-object v6, v7, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 104
    .line 105
    if-eqz v6, :cond_3

    .line 106
    .line 107
    check-cast v6, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    move v8, v4

    .line 114
    :goto_1
    if-ge v8, v6, :cond_3

    .line 115
    .line 116
    iget-object v9, v7, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 117
    .line 118
    check-cast v9, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    check-cast v9, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 125
    .line 126
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    .line 127
    .line 128
    .line 129
    move-result v10

    .line 130
    if-eqz v10, :cond_2

    .line 131
    .line 132
    move-object v6, v9

    .line 133
    goto :goto_2

    .line 134
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_3
    move-object v6, v2

    .line 138
    :goto_2
    if-eqz v6, :cond_4

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_5
    :goto_3
    if-eqz v6, :cond_6

    .line 145
    .line 146
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    .line 151
    .line 152
    .line 153
    goto :goto_4

    .line 154
    :catchall_0
    move-exception p0

    .line 155
    goto/16 :goto_d

    .line 156
    .line 157
    :cond_6
    :goto_4
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 158
    .line 159
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 164
    .line 165
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    invoke-static {}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getCallingPid()I

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    invoke-virtual {v1, v3, v5, p2, v6}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveValidReportedPackageLocked(Ljava/lang/CharSequence;III)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 182
    .line 183
    .line 184
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 185
    .line 186
    const/4 v3, 0x1

    .line 187
    if-ne p2, v1, :cond_a

    .line 188
    .line 189
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 190
    .line 191
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    sparse-switch v6, :sswitch_data_0

    .line 199
    .line 200
    .line 201
    const/16 v7, 0x10

    .line 202
    .line 203
    if-eq v6, v7, :cond_7

    .line 204
    .line 205
    const/16 v7, 0x1000

    .line 206
    .line 207
    if-eq v6, v7, :cond_7

    .line 208
    .line 209
    const/16 v7, 0x2000

    .line 210
    .line 211
    if-eq v6, v7, :cond_7

    .line 212
    .line 213
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    .line 214
    .line 215
    .line 216
    move-result v6

    .line 217
    invoke-virtual {v5, v1, v6}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->isRetrievalAllowingWindowLocked(II)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    goto :goto_5

    .line 222
    :cond_7
    :sswitch_0
    move v1, v3

    .line 223
    :goto_5
    if-eqz v1, :cond_9

    .line 224
    .line 225
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 226
    .line 227
    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 228
    .line 229
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    .line 234
    .line 235
    .line 236
    move-result-wide v10

    .line 237
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 238
    .line 239
    .line 240
    move-result v8

    .line 241
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getAction()I

    .line 242
    .line 243
    .line 244
    move-result v9

    .line 245
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/accessibility/AccessibilityWindowManager;->updateActiveAndAccessibilityFocusedWindowLocked(IIIIJ)V

    .line 246
    .line 247
    .line 248
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 249
    .line 250
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    const v5, 0x443b9bf

    .line 258
    .line 259
    .line 260
    and-int/2addr v1, v5

    .line 261
    if-nez v1, :cond_8

    .line 262
    .line 263
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 264
    .line 265
    .line 266
    :cond_8
    move v1, v3

    .line 267
    goto :goto_6

    .line 268
    :cond_9
    move v1, v4

    .line 269
    :goto_6
    iget-boolean v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 270
    .line 271
    if-eqz v5, :cond_b

    .line 272
    .line 273
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 274
    .line 275
    if-eqz v5, :cond_b

    .line 276
    .line 277
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 278
    .line 279
    new-instance v6, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;

    .line 280
    .line 281
    const/4 v7, 0x0

    .line 282
    invoke-direct {v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;-><init>(I)V

    .line 283
    .line 284
    .line 285
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    .line 286
    .line 287
    .line 288
    move-result-object v7

    .line 289
    invoke-static {v6, p0, v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 294
    .line 295
    .line 296
    goto :goto_7

    .line 297
    :cond_a
    move v1, v4

    .line 298
    :cond_b
    :goto_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    if-eqz v1, :cond_12

    .line 300
    .line 301
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getDisplayId()I

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    const/4 v5, -0x1

    .line 310
    if-eq v1, v5, :cond_c

    .line 311
    .line 312
    if-ne v0, v5, :cond_c

    .line 313
    .line 314
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 315
    .line 316
    invoke-virtual {v0, p2, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayIdByUserIdAndWindowId(II)I

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setDisplayId(I)V

    .line 321
    .line 322
    .line 323
    :cond_c
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 324
    .line 325
    monitor-enter p2

    .line 326
    :try_start_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    const/16 v6, 0x20

    .line 331
    .line 332
    if-ne v1, v6, :cond_d

    .line 333
    .line 334
    if-eq v0, v5, :cond_d

    .line 335
    .line 336
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 337
    .line 338
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked(I)Z

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    if-eqz v1, :cond_d

    .line 343
    .line 344
    move v1, v3

    .line 345
    goto :goto_8

    .line 346
    :catchall_1
    move-exception p0

    .line 347
    goto/16 :goto_b

    .line 348
    .line 349
    :cond_d
    move v1, v4

    .line 350
    :goto_8
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 351
    if-eqz v1, :cond_11

    .line 352
    .line 353
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 354
    .line 355
    const-wide/16 v5, 0x200

    .line 356
    .line 357
    invoke-virtual {p2, v5, v6}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 358
    .line 359
    .line 360
    move-result p2

    .line 361
    if-eqz p2, :cond_e

    .line 362
    .line 363
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 364
    .line 365
    const-string v1, "WindowManagerInternal.computeWindowsForAccessibility"

    .line 366
    .line 367
    const-string/jumbo v7, "display="

    .line 368
    .line 369
    .line 370
    invoke-static {v0, v7}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v7

    .line 374
    invoke-virtual {p2, v1, v5, v6, v7}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 375
    .line 376
    .line 377
    :cond_e
    const-class p2, Lcom/android/server/wm/WindowManagerInternal;

    .line 378
    .line 379
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object p2

    .line 383
    check-cast p2, Lcom/android/server/wm/WindowManagerInternal;

    .line 384
    .line 385
    invoke-virtual {p2, v0}, Lcom/android/server/wm/WindowManagerInternal;->computeWindowsForAccessibility(I)V

    .line 386
    .line 387
    .line 388
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 389
    .line 390
    monitor-enter p2

    .line 391
    :try_start_2
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 392
    .line 393
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveParentWindowIdLocked(I)I

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 402
    .line 403
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveParentWindowIdLocked(I)I

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayWindowObserverByWindowIdLocked(I)Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    if-eqz v1, :cond_f

    .line 412
    .line 413
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    .line 414
    .line 415
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    move-object v2, v0

    .line 420
    check-cast v2, Landroid/view/WindowInfo;

    .line 421
    .line 422
    :cond_f
    if-eqz v2, :cond_10

    .line 423
    .line 424
    monitor-exit p2

    .line 425
    goto :goto_9

    .line 426
    :catchall_2
    move-exception p0

    .line 427
    goto :goto_a

    .line 428
    :cond_10
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;

    .line 429
    .line 430
    new-instance v1, Landroid/view/accessibility/AccessibilityEvent;

    .line 431
    .line 432
    invoke-direct {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;-><init>(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 433
    .line 434
    .line 435
    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 436
    .line 437
    .line 438
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 439
    .line 440
    const-wide/16 v4, 0x1f4

    .line 441
    .line 442
    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 443
    .line 444
    .line 445
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSendWindowStateChangedEventRunnables:Ljava/util/List;

    .line 446
    .line 447
    check-cast v1, Ljava/util/ArrayList;

    .line 448
    .line 449
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    monitor-exit p2

    .line 453
    move v4, v3

    .line 454
    :goto_9
    if-eqz v4, :cond_11

    .line 455
    .line 456
    return-void

    .line 457
    :goto_a
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 458
    throw p0

    .line 459
    :cond_11
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 460
    .line 461
    monitor-enter v0

    .line 462
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->dispatchAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 463
    .line 464
    .line 465
    monitor-exit v0

    .line 466
    goto :goto_c

    .line 467
    :catchall_3
    move-exception p0

    .line 468
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 469
    throw p0

    .line 470
    :goto_b
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 471
    throw p0

    .line 472
    :cond_12
    :goto_c
    sget p0, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    .line 473
    .line 474
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 475
    .line 476
    .line 477
    move-result p2

    .line 478
    if-eq p0, p2, :cond_13

    .line 479
    .line 480
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 481
    .line 482
    .line 483
    :cond_13
    return-void

    .line 484
    :goto_d
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 485
    throw p0

    .line 486
    nop

    .line 487
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x40 -> :sswitch_0
        0x80 -> :sswitch_0
        0x100 -> :sswitch_0
        0x200 -> :sswitch_0
        0x400 -> :sswitch_0
        0x4000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x80000 -> :sswitch_0
        0x100000 -> :sswitch_0
        0x200000 -> :sswitch_0
        0x400000 -> :sswitch_0
        0x1000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public final sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowChanges()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSendWindowStateChangedEventRunnables:Ljava/util/List;

    .line 13
    .line 14
    check-cast v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    sub-int/2addr v2, v1

    .line 21
    :goto_0
    if-ltz v2, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSendWindowStateChangedEventRunnables:Ljava/util/List;

    .line 24
    .line 25
    check-cast v1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;

    .line 32
    .line 33
    iget v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;->mWindowId:I

    .line 34
    .line 35
    if-ne v3, v0, :cond_0

    .line 36
    .line 37
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 38
    .line 39
    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 43
    .line 44
    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mSendWindowStateChangedEventRunnables:Ljava/util/List;

    .line 45
    .line 46
    check-cast v3, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;->mPendingEvent:Landroid/view/accessibility/AccessibilityEvent;

    .line 54
    .line 55
    invoke-virtual {v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->dispatchAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 62
    .line 63
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    invoke-virtual {p1, v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 71
    .line 72
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda12;

    .line 73
    .line 74
    const/4 v3, 0x5

    .line 75
    invoke-direct {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda12;-><init>(I)V

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v2, p0, p1, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final sendFingerprintGesture(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 2
    .line 3
    const-wide/32 v1, 0x20004

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 13
    .line 14
    const-string v3, "AccessibilityManagerService.sendFingerprintGesture"

    .line 15
    .line 16
    const-string/jumbo v4, "gestureKeyCode="

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v0

    .line 29
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/16 v2, 0x3e8

    .line 38
    .line 39
    if-ne v1, v2, :cond_4

    .line 40
    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    if-nez p0, :cond_1

    .line 46
    .line 47
    return v0

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mLock:Ljava/lang/Object;

    .line 49
    .line 50
    monitor-enter v1

    .line 51
    :try_start_1
    iget-object v2, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    .line 52
    .line 53
    check-cast v2, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    monitor-exit v1

    .line 62
    goto :goto_2

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_3

    .line 65
    :cond_2
    const/4 v2, 0x1

    .line 66
    packed-switch p1, :pswitch_data_0

    .line 67
    .line 68
    .line 69
    monitor-exit v1

    .line 70
    goto :goto_2

    .line 71
    :pswitch_0
    move p1, v2

    .line 72
    goto :goto_0

    .line 73
    :pswitch_1
    const/4 p1, 0x2

    .line 74
    goto :goto_0

    .line 75
    :pswitch_2
    const/16 p1, 0x8

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :pswitch_3
    const/4 p1, 0x4

    .line 79
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    .line 82
    .line 83
    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 84
    .line 85
    .line 86
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-ge v0, p0, :cond_3

    .line 92
    .line 93
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    check-cast p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;

    .line 98
    .line 99
    invoke-interface {p0, p1}, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;->onFingerprintGesture(I)V

    .line 100
    .line 101
    .line 102
    add-int/lit8 v0, v0, 0x1

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    move v0, v2

    .line 106
    :goto_2
    return v0

    .line 107
    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    throw p0

    .line 109
    :catchall_1
    move-exception p0

    .line 110
    goto :goto_4

    .line 111
    :cond_4
    :try_start_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 112
    .line 113
    const-string p1, "Only SYSTEM can call sendFingerprintGesture"

    .line 114
    .line 115
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p0

    .line 119
    :goto_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    throw p0

    .line 121
    :pswitch_data_0
    .packed-switch 0x118
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x1

    .line 25
    sub-int/2addr v2, v3

    .line 26
    const/4 v4, 0x0

    .line 27
    :goto_0
    if-ltz v2, :cond_2

    .line 28
    .line 29
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    check-cast v5, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    and-int/lit16 v6, v6, -0x100

    .line 45
    .line 46
    iget v7, v5, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mGenericMotionEventSources:I

    .line 47
    .line 48
    and-int/2addr v6, v7

    .line 49
    if-eqz v6, :cond_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    const/16 v6, 0x1002

    .line 53
    .line 54
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->isFromSource(I)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_1

    .line 59
    .line 60
    invoke-virtual {v5, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isServiceDetectsGesturesEnabled(I)Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_1

    .line 65
    .line 66
    :goto_1
    new-instance v4, Lcom/android/server/accessibility/AccessibilityServiceConnection$$ExternalSyntheticLambda0;

    .line 67
    .line 68
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-static {v4, v5, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    iget-object v5, v5, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    .line 76
    .line 77
    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 78
    .line 79
    .line 80
    move v4, v3

    .line 81
    goto :goto_2

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    goto :goto_3

    .line 84
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    monitor-exit v1

    .line 88
    return v4

    .line 89
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    throw p0
.end method

.method public final sendRestrictedDialogIntent(Ljava/lang/String;II)Z
    .locals 7

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->isAccessibilityTargetAllowed(Ljava/lang/String;II)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto :goto_4

    .line 24
    :cond_1
    const/16 v4, -0x2710

    .line 25
    .line 26
    if-ne p3, v4, :cond_2

    .line 27
    .line 28
    move-object v5, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    :goto_0
    invoke-static {v0, v5}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    if-eqz v5, :cond_3

    .line 39
    .line 40
    iget-object v6, v5, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 41
    .line 42
    invoke-virtual {v1, v6, p1, p3}, Landroid/app/admin/DevicePolicyManager;->isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    move v6, v3

    .line 48
    :goto_1
    invoke-static {v0, p3}, Lcom/android/server/accessibility/RestrictedLockUtilsInternal;->getManagedProfileId(Landroid/content/Context;I)I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    if-ne p3, v4, :cond_4

    .line 53
    .line 54
    move-object v4, v2

    .line 55
    goto :goto_2

    .line 56
    :cond_4
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    :goto_2
    invoke-static {v0, v4}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    iget-object v4, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 67
    .line 68
    invoke-virtual {v1, v4, p1, p3}, Landroid/app/admin/DevicePolicyManager;->isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    goto :goto_3

    .line 73
    :cond_5
    move p3, v3

    .line 74
    :goto_3
    if-nez v6, :cond_6

    .line 75
    .line 76
    if-nez p3, :cond_6

    .line 77
    .line 78
    sget-object v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_6
    if-nez v6, :cond_7

    .line 82
    .line 83
    move-object v2, v5

    .line 84
    goto :goto_4

    .line 85
    :cond_7
    if-nez p3, :cond_8

    .line 86
    .line 87
    move-object v2, v0

    .line 88
    :cond_8
    :goto_4
    if-eqz v2, :cond_b

    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    new-instance p1, Landroid/content/Intent;

    .line 93
    .line 94
    const-string p2, "android.settings.SHOW_ADMIN_SUPPORT_DETAILS"

    .line 95
    .line 96
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object p2, v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 100
    .line 101
    if-eqz p2, :cond_9

    .line 102
    .line 103
    const-string p3, "android.app.extra.DEVICE_ADMIN"

    .line 104
    .line 105
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 106
    .line 107
    .line 108
    :cond_9
    const-string p2, "android.intent.extra.USER"

    .line 109
    .line 110
    iget-object p3, v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    .line 111
    .line 112
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 113
    .line 114
    .line 115
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    iget-object p3, v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    .line 120
    .line 121
    if-eqz p3, :cond_a

    .line 122
    .line 123
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 124
    .line 125
    .line 126
    move-result p3

    .line 127
    const-class v0, Landroid/os/UserManager;

    .line 128
    .line 129
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Landroid/os/UserManager;

    .line 134
    .line 135
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 140
    .line 141
    .line 142
    move-result-object p3

    .line 143
    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p3

    .line 147
    if-eqz p3, :cond_a

    .line 148
    .line 149
    iget-object p2, v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    .line 150
    .line 151
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    :cond_a
    const-string p3, "android.app.extra.RESTRICTION"

    .line 156
    .line 157
    iget-object v0, v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->enforcedRestriction:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    .line 161
    .line 162
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 167
    .line 168
    .line 169
    return v3

    .line 170
    :cond_b
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->enhancedConfirmationModeApisEnabled()Z

    .line 171
    .line 172
    .line 173
    move-result p3

    .line 174
    if-eqz p3, :cond_c

    .line 175
    .line 176
    invoke-static {}, Landroid/security/Flags;->extendEcmToAllSettings()Z

    .line 177
    .line 178
    .line 179
    move-result p3

    .line 180
    if-eqz p3, :cond_c

    .line 181
    .line 182
    :try_start_0
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 183
    .line 184
    const-class p3, Landroid/app/ecm/EnhancedConfirmationManager;

    .line 185
    .line 186
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    check-cast p2, Landroid/app/ecm/EnhancedConfirmationManager;

    .line 191
    .line 192
    const-string p3, "android:bind_accessibility_service"

    .line 193
    .line 194
    invoke-virtual {p2, p1, p3}, Landroid/app/ecm/EnhancedConfirmationManager;->createRestrictedSettingDialogIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 199
    .line 200
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .line 202
    .line 203
    goto :goto_5

    .line 204
    :catch_0
    move-exception p0

    .line 205
    new-instance p2, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string p3, "Exception when retrieving package:"

    .line 208
    .line 209
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    const-string p2, "AccessibilityManagerService"

    .line 220
    .line 221
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_c
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 226
    .line 227
    new-instance p3, Landroid/content/Intent;

    .line 228
    .line 229
    const-string v0, "android.settings.SHOW_RESTRICTED_SETTING_DIALOG"

    .line 230
    .line 231
    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    const-string v0, "android.intent.extra.PACKAGE_NAME"

    .line 235
    .line 236
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    .line 238
    .line 239
    const-string p1, "android.intent.extra.UID"

    .line 240
    .line 241
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 245
    .line 246
    .line 247
    :goto_5
    return v3
.end method

.method public final sendStateToClients(ILandroid/os/RemoteCallbackList;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 2
    .line 3
    const-wide/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 12
    .line 13
    const-string/jumbo v3, "clientState="

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string v4, "AccessibilityManagerService.sendStateToClients"

    .line 21
    .line 22
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda51;

    .line 26
    .line 27
    invoke-direct {v0, p1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda51;-><init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p2, p0}, Landroid/os/RemoteCallbackList;->broadcastForEachCookie(Ljava/util/function/Consumer;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final setAccessibilityWindowAttributes(IIILandroid/view/accessibility/AccessibilityWindowAttributes;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 2
    .line 3
    const-wide/16 v1, 0x4

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 12
    .line 13
    const-string v3, "AccessibilityManagerService.setAccessibilityWindowAttributes"

    .line 14
    .line 15
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 24
    .line 25
    invoke-virtual {v1, p3}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    invoke-virtual {p0, p3, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokenForUserAndWindowIdLocked(II)Landroid/os/IBinder;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    if-nez p3, :cond_1

    .line 34
    .line 35
    monitor-exit v0

    .line 36
    goto :goto_2

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_3

    .line 39
    :cond_1
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowAttributes:Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-virtual {p3, p2, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveParentWindowIdLocked(I)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayWindowObserverByWindowIdLocked(I)Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    if-eqz p3, :cond_2

    .line 53
    .line 54
    iget-object p3, p3, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    .line 55
    .line 56
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    check-cast p2, Landroid/view/WindowInfo;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const/4 p2, 0x0

    .line 64
    :goto_0
    if-eqz p2, :cond_3

    .line 65
    .line 66
    const/4 p2, 0x1

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const/4 p2, 0x0

    .line 69
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    if-eqz p2, :cond_4

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->computeWindowsForAccessibility(I)V

    .line 75
    .line 76
    .line 77
    :cond_4
    :goto_2
    return-void

    .line 78
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    throw p0
.end method

.method public final setMagnificationConnection(Landroid/view/accessibility/IMagnificationConnection;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setMagnificationConnection_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 5
    .line 6
    const-wide/16 v1, 0x84

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string/jumbo v4, "connection="

    .line 19
    .line 20
    .line 21
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v4, "AccessibilityManagerService.setMagnificationConnection"

    .line 32
    .line 33
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setConnection(Landroid/view/accessibility/IMagnificationConnection;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/android/window/flags/Flags;->alwaysDrawMagnificationFullscreenBorder()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->isFullScreenMagnificationControllerInitialized()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const/4 v0, 0x0

    .line 64
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-ge v0, v1, :cond_1

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Landroid/view/Display;

    .line 75
    .line 76
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    const/4 v3, 0x0

    .line 90
    invoke-virtual {v2, v1, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 91
    .line 92
    .line 93
    add-int/lit8 v0, v0, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    return-void
.end method

.method public final setMagnificationDisactivate()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setMagnificationDisactivate_enforcePermission()V

    .line 2
    .line 3
    .line 4
    const-string v0, "AccessibilityManagerService"

    .line 5
    .line 6
    const-string/jumbo v1, "setMagnificationDisactivate"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getDisplayId()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    .line 42
    .line 43
    if-eqz p0, :cond_0

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->magnificationDisactivate$1()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    :goto_0
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public final setNonA11yToolNotificationToMatchSafetyCenter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/safetycenter/SafetyCenterManager;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/safetycenter/SafetyCenterManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/safetycenter/SafetyCenterManager;->isSafetyCenterEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    xor-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->setSendingNonA11yToolNotificationLocked(Z)V

    .line 23
    .line 24
    .line 25
    monitor-exit v1

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public setPackageMonitor(Lcom/android/internal/content/PackageMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 2
    .line 3
    return-void
.end method

.method public final setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setPictureInPictureActionReplacingConnection_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 5
    .line 6
    const-wide/16 v1, 0x4

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 15
    .line 16
    const-string v3, "AccessibilityManagerService.setPictureInPictureActionReplacingConnection"

    .line 17
    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string/jumbo v5, "connection="

    .line 21
    .line 22
    .line 23
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 47
    .line 48
    invoke-interface {v3}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->asBinder()Landroid/os/IBinder;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-interface {v3, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 53
    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 62
    .line 63
    new-instance v1, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 64
    .line 65
    const-string/jumbo v9, "foo.bar.baz"

    .line 66
    .line 67
    .line 68
    const/4 v7, -0x3

    .line 69
    const/16 v10, 0x3e8

    .line 70
    .line 71
    const/4 v11, -0x1

    .line 72
    move-object v5, v1

    .line 73
    move-object v6, p0

    .line 74
    move-object v8, p1

    .line 75
    invoke-direct/range {v5 .. v11}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;-><init>(Lcom/android/server/accessibility/AccessibilityWindowManager;ILandroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;II)V

    .line 76
    .line 77
    .line 78
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 79
    .line 80
    invoke-interface {p1}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->asBinder()Landroid/os/IBinder;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-interface {p0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 85
    .line 86
    .line 87
    :cond_2
    monitor-exit v0

    .line 88
    return-void

    .line 89
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    throw p0
.end method

.method public final setScreenReaderEnabled(Z)V
    .locals 4

    .line 1
    const-string v0, "Called AccessibilityManagerService setScreenReaderEnabled enable : "

    .line 2
    .line 3
    const-string v1, "AccessibilityManagerService"

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setScreenReaderEnabled_enforcePermission()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-string/jumbo v2, "com.samsung.android.accessibility.talkback"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/16 v3, 0x80

    .line 21
    .line 22
    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    const/16 v0, 0x20

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->semTurnOnAccessibilityService(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->semTurnOffAccessibilityService(I)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void

    .line 37
    :catch_0
    const-string/jumbo p0, "talkback package not installed"

    .line 38
    .line 39
    .line 40
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final setSystemAudioCaptioningEnabled(ZI)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setSystemAudioCaptioningEnabled_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCaptioningManagerImpl:Lcom/android/server/accessibility/CaptioningManagerImpl;

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/CaptioningManagerImpl;->setSystemAudioCaptioningEnabled(ZI)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setSystemAudioCaptioningUiEnabled(ZI)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setSystemAudioCaptioningUiEnabled_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCaptioningManagerImpl:Lcom/android/server/accessibility/CaptioningManagerImpl;

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/CaptioningManagerImpl;->setSystemAudioCaptioningUiEnabled(ZI)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setTalkbackMode()V
    .locals 2

    .line 1
    const-string v0, "AccessibilityManagerService"

    .line 2
    .line 3
    const-string v1, "Called AccessibilityManagerService setTalkbackMode()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->performAccessibilityDirectAccess()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final showAccessibilityTargetsSelection(II)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string/jumbo v1, "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-class v1, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "android"

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    const-string/jumbo v1, "shortcutType"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    const/high16 p2, 0x30000000

    .line 27
    .line 28
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    const/4 p2, 0x1

    .line 32
    invoke-static {p2}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->setVisibilityShortcutDialog(Z)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p2, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    iget p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 50
    .line 51
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p2, v0, p1, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final startFlashNotificationEvent(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFlashNotificationsController:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 6
    .line 7
    new-instance p2, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->getScreenFlashColorPreference$2()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const/4 v3, 0x1

    .line 16
    move-object v2, p2

    .line 17
    move-object v6, p1

    .line 18
    move-object v7, p3

    .line 19
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;-><init>(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/FlashNotificationsController;->requestStartFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method public final startFlashNotificationSequence(Ljava/lang/String;ILandroid/os/IBinder;)Z
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFlashNotificationsController:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 6
    .line 7
    new-instance p2, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->getScreenFlashColorPreference$2()I

    .line 12
    .line 13
    .line 14
    move-result v7

    .line 15
    new-instance v10, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda1;

    .line 16
    .line 17
    invoke-direct {v10, p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/FlashNotificationsController;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v6, 0x2

    .line 21
    move-object v2, p2

    .line 22
    move-object v4, p1

    .line 23
    move-object v5, p1

    .line 24
    move-object v8, p3

    .line 25
    move-object v9, v10

    .line 26
    invoke-direct/range {v2 .. v9}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    if-eqz p3, :cond_0

    .line 31
    .line 32
    :try_start_1
    invoke-interface {p3, v10, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/FlashNotificationsController;->requestStartFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    const-string p2, "FlashNotifController"

    .line 42
    .line 43
    const-string p3, "RemoteException"

    .line 44
    .line 45
    invoke-static {p2, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    .line 47
    .line 48
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    return p1

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    .line 55
    .line 56
    throw p0
.end method

.method public final stopFlashNotificationSequence(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFlashNotificationsController:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FlashNotificationsController;->stopFlashNotification(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public switchUser(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/accessibility/magnification/MagnificationController;->mUserId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v1, p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iput p1, v0, Lcom/android/server/accessibility/magnification/MagnificationController;->mUserId:I

    .line 10
    .line 11
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v3, v0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 15
    .line 16
    iget-object v4, v0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 17
    .line 18
    iget-object v5, v0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 21
    .line 22
    .line 23
    iget-object v5, v0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    .line 26
    .line 27
    .line 28
    iget-object v5, v0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    .line 29
    .line 30
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    .line 31
    .line 32
    .line 33
    iget-object v5, v0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    .line 34
    .line 35
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    .line 36
    .line 37
    .line 38
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 39
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    .line 40
    .line 41
    iget-object v5, v0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v5

    .line 44
    :try_start_1
    iput p1, v0, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->mCurrentUserId:I

    .line 45
    .line 46
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    invoke-virtual {v3, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->resetAllIfNeeded(Z)V

    .line 50
    .line 51
    .line 52
    :cond_1
    if-eqz v4, :cond_2

    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableAllWindowMagnifiers()V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->parseAccessibilityServiceInfos(I)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {v1, v3, p1}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityShortcutListAsUser(Landroid/content/Context;I)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 74
    .line 75
    monitor-enter v3

    .line 76
    :try_start_2
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 77
    .line 78
    if-ne v4, p1, :cond_3

    .line 79
    .line 80
    iget-boolean v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInitialized:Z

    .line 81
    .line 82
    if-eqz v5, :cond_3

    .line 83
    .line 84
    monitor-exit v3

    .line 85
    return-void

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    goto :goto_2

    .line 88
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityUserState;->onSwitchToAnotherUserLocked()V

    .line 93
    .line 94
    .line 95
    iget-object v5, v4, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 96
    .line 97
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-lez v5, :cond_4

    .line 102
    .line 103
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 104
    .line 105
    new-instance v6, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda12;

    .line 106
    .line 107
    const/4 v7, 0x7

    .line 108
    invoke-direct {v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda12;-><init>(I)V

    .line 109
    .line 110
    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    iget v4, v4, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 116
    .line 117
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-static {v6, p0, v7, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 126
    .line 127
    .line 128
    :cond_4
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 129
    .line 130
    const-string/jumbo v5, "user"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    check-cast v4, Landroid/os/UserManager;

    .line 138
    .line 139
    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    const/4 v5, 0x1

    .line 148
    if-le v4, v5, :cond_5

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_5
    move v5, v2

    .line 152
    :goto_1
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 153
    .line 154
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/List;Ljava/util/List;)Z

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 162
    .line 163
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 164
    .line 165
    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 166
    .line 167
    invoke-virtual {v0, v1, v4}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->onSwitchUserLocked(ILjava/util/Set;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 171
    .line 172
    .line 173
    const/4 v0, 0x0

    .line 174
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->migrateAccessibilityButtonSettingsIfNecessaryLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->disableAccessibilityMenuToMigrateIfNeeded()V

    .line 178
    .line 179
    .line 180
    if-eqz v5, :cond_6

    .line 181
    .line 182
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 183
    .line 184
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda38;

    .line 185
    .line 186
    const/4 v1, 0x0

    .line 187
    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda38;-><init>(I)V

    .line 188
    .line 189
    .line 190
    invoke-static {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    const-wide/16 v0, 0xbb8

    .line 195
    .line 196
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 197
    .line 198
    .line 199
    :cond_6
    monitor-exit v3

    .line 200
    return-void

    .line 201
    :goto_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    throw p0

    .line 203
    :catchall_1
    move-exception p0

    .line 204
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 205
    throw p0

    .line 206
    :catchall_2
    move-exception p0

    .line 207
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 208
    throw p0
.end method

.method public final unbindImeLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    instance-of v0, p1, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    check-cast p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;

    .line 15
    .line 16
    const/4 v2, 0x6

    .line 17
    invoke-direct {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public final unregisterProxyForDisplay(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->unregisterProxyForDisplay_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkForAccessibilityPermissionOrRole()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->clearConnectionAndUpdateState(I)Z

    .line 16
    .line 17
    .line 18
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    return p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method public final unregisterSystemAction(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->unregisterSystemAction_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 5
    .line 6
    const-wide/16 v1, 0x4

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 15
    .line 16
    const-string v3, "actionId="

    .line 17
    .line 18
    invoke-static {p1, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const-string v4, "AccessibilityManagerService.unregisterSystemAction"

    .line 23
    .line 24
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getSystemActionPerformer()Lcom/android/server/accessibility/SystemActionPerformer;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SystemActionPerformer;->unregisterSystemAction(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 2
    .line 3
    const-wide/16 v1, 0x4

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 12
    .line 13
    const-string v3, "AccessibilityManagerService.unregisterUiTestAutomationService"

    .line 14
    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v5, "serviceClient="

    .line 18
    .line 19
    .line 20
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/UiAutomationManager;->unregisterUiTestAutomationServiceLocked(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->restoreCurrentUserAfterTestAutomationIfNeededLocked()V

    .line 42
    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0
.end method

.method public unsafeIsLockHeld()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final updateColorLensValue()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string/jumbo v3, "color_lens_type"

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, -0x2

    .line 16
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const-string/jumbo v4, "color_lens_opacity"

    .line 27
    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const-string/jumbo v4, "updateColorLensValue colorLensType : "

    .line 35
    .line 36
    .line 37
    const-string v5, " colorLensOpacity : "

    .line 38
    .line 39
    const-string v7, "AccessibilityManagerService"

    .line 40
    .line 41
    invoke-static {v2, v3, v4, v5, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    const v5, 0x107003d

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mColorLensView:Landroid/view/View;

    .line 58
    .line 59
    if-eqz v5, :cond_0

    .line 60
    .line 61
    new-array v7, v1, [I

    .line 62
    .line 63
    fill-array-data v7, :array_0

    .line 64
    .line 65
    .line 66
    new-array v8, v1, [I

    .line 67
    .line 68
    fill-array-data v8, :array_1

    .line 69
    .line 70
    .line 71
    new-array v9, v1, [I

    .line 72
    .line 73
    fill-array-data v9, :array_2

    .line 74
    .line 75
    .line 76
    new-array v10, v1, [I

    .line 77
    .line 78
    fill-array-data v10, :array_3

    .line 79
    .line 80
    .line 81
    new-array v11, v1, [I

    .line 82
    .line 83
    fill-array-data v11, :array_4

    .line 84
    .line 85
    .line 86
    new-array v12, v1, [I

    .line 87
    .line 88
    fill-array-data v12, :array_5

    .line 89
    .line 90
    .line 91
    new-array v13, v1, [I

    .line 92
    .line 93
    fill-array-data v13, :array_6

    .line 94
    .line 95
    .line 96
    new-array v14, v1, [I

    .line 97
    .line 98
    fill-array-data v14, :array_7

    .line 99
    .line 100
    .line 101
    new-array v15, v1, [I

    .line 102
    .line 103
    fill-array-data v15, :array_8

    .line 104
    .line 105
    .line 106
    new-array v5, v1, [I

    .line 107
    .line 108
    fill-array-data v5, :array_9

    .line 109
    .line 110
    .line 111
    new-array v6, v1, [I

    .line 112
    .line 113
    fill-array-data v6, :array_a

    .line 114
    .line 115
    .line 116
    new-array v1, v1, [I

    .line 117
    .line 118
    fill-array-data v1, :array_b

    .line 119
    .line 120
    .line 121
    move-object/from16 v16, v5

    .line 122
    .line 123
    move-object/from16 v17, v6

    .line 124
    .line 125
    move-object/from16 v18, v1

    .line 126
    .line 127
    filled-new-array/range {v7 .. v18}, [[I

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    aget-object v1, v1, v2

    .line 132
    .line 133
    aget v1, v1, v3

    .line 134
    .line 135
    mul-int/lit8 v1, v1, 0x5

    .line 136
    .line 137
    add-int/lit8 v1, v1, 0x14

    .line 138
    .line 139
    const/4 v3, 0x2

    .line 140
    mul-int/2addr v1, v3

    .line 141
    aget v2, v4, v2

    .line 142
    .line 143
    invoke-static {v2, v1}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mColorLensView:Landroid/view/View;

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 150
    .line 151
    .line 152
    :cond_0
    return-void

    .line 153
    :array_0
    .array-data 4
        0x2
        0x3
        0x5
        0x6
        0x8
        0x9
        0xb
        0xc
        0xd
    .end array-data

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :array_1
    .array-data 4
        0x1
        0x3
        0x4
        0x6
        0x7
        0x8
        0x9
        0xb
        0xc
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_2
    .array-data 4
        0x1
        0x3
        0x4
        0x5
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x3
        0x5
        0x6
        0x7
        0x8
        0x9
        0xb
        0xc
    .end array-data

    :array_4
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x7
        0x8
        0x9
        0xa
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x3
        0x4
        0x6
        0x7
        0x8
        0xa
        0xb
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x2
        0x3
        0x4
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    :array_7
    .array-data 4
        0x2
        0x4
        0x5
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    :array_8
    .array-data 4
        0x2
        0x4
        0x5
        0x6
        0x7
        0x9
        0xa
        0xb
        0xc
    .end array-data

    :array_9
    .array-data 4
        0x2
        0x3
        0x4
        0x6
        0x7
        0x9
        0xa
        0xb
        0xc
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x3
        0x4
        0x5
        0x6
        0x7
        0x9
        0xa
        0xb
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x2
        0x4
        0x5
        0x7
        0x8
        0x9
        0xa
        0xc
    .end array-data
.end method

.method public final updateMagnificationCapabilitiesSettingsChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-ge v2, v3, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroid/view/Display;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {p0, p1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->fallBackMagnificationModeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, p1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationModeChangeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 36
    .line 37
    iget-boolean v2, v2, Lcom/android/server/accessibility/magnification/MagnificationController;->mSupportWindowMagnification:Z

    .line 38
    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    goto :goto_6

    .line 42
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isShortcutMagnificationEnabledLocked()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/4 v3, 0x1

    .line 47
    if-nez v2, :cond_3

    .line 48
    .line 49
    iget-boolean v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsMagnificationSingleFingerTripleTapEnabled:Z

    .line 50
    .line 51
    if-nez v2, :cond_3

    .line 52
    .line 53
    iget-boolean v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAMEnabled:Z

    .line 54
    .line 55
    if-nez v2, :cond_3

    .line 56
    .line 57
    invoke-static {}, Lcom/android/server/accessibility/Flags;->enableMagnificationMultipleFingerMultipleTapGesture()Z

    .line 58
    .line 59
    .line 60
    move v2, v1

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    move v2, v3

    .line 63
    :goto_1
    invoke-static {}, Lcom/android/window/flags/Flags;->alwaysDrawMagnificationFullscreenBorder()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_5

    .line 68
    .line 69
    iget v4, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCapabilities:I

    .line 70
    .line 71
    if-eq v4, v3, :cond_4

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    move v4, v1

    .line 75
    goto :goto_3

    .line 76
    :cond_5
    :goto_2
    move v4, v3

    .line 77
    :goto_3
    if-eqz v2, :cond_6

    .line 78
    .line 79
    if-nez v4, :cond_9

    .line 80
    .line 81
    :cond_6
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    move v5, v1

    .line 88
    :goto_4
    if-ge v5, v4, :cond_8

    .line 89
    .line 90
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    check-cast v6, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 95
    .line 96
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 97
    .line 98
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-eqz v6, :cond_7

    .line 106
    .line 107
    goto :goto_5

    .line 108
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_8
    move v3, v1

    .line 112
    :cond_9
    :goto_5
    sget-boolean v2, Lcom/android/server/accessibility/AccessibilityManagerService;->SEC_DEBUG:Z

    .line 113
    .line 114
    if-eqz v2, :cond_a

    .line 115
    .line 116
    const-string/jumbo v2, "updateWindowMagnificationConnectionIfNeeded connect : "

    .line 117
    .line 118
    .line 119
    const-string v4, "AccessibilityManagerService"

    .line 120
    .line 121
    invoke-static {v2, v4, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 122
    .line 123
    .line 124
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->requestConnection(Z)V

    .line 129
    .line 130
    .line 131
    :goto_6
    iget-boolean v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsMagnificationSingleFingerTripleTapEnabled:Z

    .line 132
    .line 133
    if-nez v2, :cond_b

    .line 134
    .line 135
    invoke-static {}, Lcom/android/server/accessibility/Flags;->enableMagnificationMultipleFingerMultipleTapGesture()Z

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isShortcutMagnificationEnabledLocked()Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-nez v2, :cond_b

    .line 143
    .line 144
    iget-boolean v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAMEnabled:Z

    .line 145
    .line 146
    if-eqz v2, :cond_c

    .line 147
    .line 148
    :cond_b
    iget p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCapabilities:I

    .line 149
    .line 150
    const/4 v2, 0x3

    .line 151
    if-eq p1, v2, :cond_d

    .line 152
    .line 153
    :cond_c
    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-ge v1, p1, :cond_d

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    check-cast p1, Landroid/view/Display;

    .line 164
    .line 165
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->removeMagnificationButton(I)V

    .line 174
    .line 175
    .line 176
    add-int/lit8 v1, v1, 0x1

    .line 177
    .line 178
    goto :goto_7

    .line 179
    :cond_d
    return-void
.end method

.method public final updateMagnificationLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 9

    .line 1
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->suppressingAccessibilityServicesLocked()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->isFullScreenMagnificationControllerInitialized()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v0

    .line 34
    :try_start_0
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    move v2, v1

    .line 41
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-ge v2, v3, :cond_1

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-virtual {p0, v3, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregisterLocked(IZ)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p0

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-boolean v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsMagnificationSingleFingerTripleTapEnabled:Z

    .line 68
    .line 69
    if-nez v2, :cond_8

    .line 70
    .line 71
    invoke-static {}, Lcom/android/server/accessibility/Flags;->enableMagnificationMultipleFingerMultipleTapGesture()Z

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isShortcutMagnificationEnabledLocked()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    goto :goto_5

    .line 81
    :cond_3
    move v2, v1

    .line 82
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-ge v2, v3, :cond_7

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Landroid/view/Display;

    .line 93
    .line 94
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    move v6, v1

    .line 105
    :goto_3
    if-ge v6, v5, :cond_5

    .line 106
    .line 107
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    check-cast v7, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 112
    .line 113
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 114
    .line 115
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    if-eqz v8, :cond_4

    .line 123
    .line 124
    invoke-virtual {v7, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isMagnificationCallbackEnabled(I)Z

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    if-eqz v7, :cond_4

    .line 129
    .line 130
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 131
    .line 132
    invoke-virtual {v4}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->register(I)V

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_5
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 144
    .line 145
    invoke-virtual {v4}, Lcom/android/server/accessibility/magnification/MagnificationController;->isFullScreenMagnificationControllerInitialized()Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_6

    .line 150
    .line 151
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 152
    .line 153
    invoke-virtual {v4}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    iget-object v5, v4, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 158
    .line 159
    monitor-enter v5

    .line 160
    :try_start_1
    invoke-virtual {v4, v3, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregisterLocked(IZ)V

    .line 161
    .line 162
    .line 163
    monitor-exit v5

    .line 164
    goto :goto_4

    .line 165
    :catchall_1
    move-exception p0

    .line 166
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 167
    throw p0

    .line 168
    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_7
    return-void

    .line 172
    :cond_8
    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-ge v1, p1, :cond_9

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    check-cast p1, Landroid/view/Display;

    .line 183
    .line 184
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 185
    .line 186
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->register(I)V

    .line 195
    .line 196
    .line 197
    add-int/lit8 v1, v1, 0x1

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_9
    return-void
.end method

.method public final updateMagnificationModeChangeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)V
    .locals 11

    .line 1
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->fallBackMagnificationModeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->getMagnificationModeLocked(I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda27;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    const/4 v1, 0x1

    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v3, p2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda27;->onResult(IZ)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :cond_2
    invoke-virtual {v0, p2, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getCurrentMagnificationCenterLocked(II)Landroid/graphics/PointF;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    iget-object p0, v0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    .line 49
    .line 50
    if-nez v7, :cond_3

    .line 51
    .line 52
    if-nez p0, :cond_3

    .line 53
    .line 54
    invoke-virtual {v3, p2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda27;->onResult(IZ)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :cond_3
    if-eqz p0, :cond_7

    .line 60
    .line 61
    iget p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentMode:I

    .line 62
    .line 63
    if-ne p2, p1, :cond_6

    .line 64
    .line 65
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 68
    .line 69
    monitor-enter p1

    .line 70
    :try_start_0
    iget-boolean p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mExpired:Z

    .line 71
    .line 72
    if-eqz p2, :cond_4

    .line 73
    .line 74
    monitor-exit p1

    .line 75
    goto/16 :goto_3

    .line 76
    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_0

    .line 79
    :cond_4
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mExpired:Z

    .line 80
    .line 81
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 82
    .line 83
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 84
    .line 85
    const/4 v2, 0x0

    .line 86
    invoke-virtual {p2, v0, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->setDisableMagnificationCallbackLocked(ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V

    .line 87
    .line 88
    .line 89
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 90
    .line 91
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 92
    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p2, v0, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 98
    .line 99
    .line 100
    iget p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentMode:I

    .line 101
    .line 102
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->applyMagnificationModeLocked(I)V

    .line 103
    .line 104
    .line 105
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 106
    .line 107
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 108
    .line 109
    iget v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mCurrentMode:I

    .line 110
    .line 111
    invoke-virtual {p2, v0, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationUIControls(II)V

    .line 112
    .line 113
    .line 114
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mTransitionCallBack:Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda27;

    .line 115
    .line 116
    if-eqz p2, :cond_5

    .line 117
    .line 118
    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 119
    .line 120
    invoke-virtual {p2, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda27;->onResult(IZ)V

    .line 121
    .line 122
    .line 123
    :cond_5
    monitor-exit p1

    .line 124
    goto :goto_3

    .line 125
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    throw p0

    .line 127
    :cond_6
    const-string p0, "MagnificationController"

    .line 128
    .line 129
    const-string/jumbo p1, "discard duplicate request"

    .line 130
    .line 131
    .line 132
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_7
    if-nez v7, :cond_8

    .line 137
    .line 138
    const-string p0, "MagnificationController"

    .line 139
    .line 140
    const-string p1, "Invalid center, ignore it"

    .line 141
    .line 142
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, p2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda27;->onResult(IZ)V

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v0, p0, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    const/4 v9, 0x2

    .line 169
    if-ne p1, v9, :cond_9

    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    :goto_1
    move v6, v1

    .line 180
    goto :goto_2

    .line 181
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    goto :goto_1

    .line 190
    :goto_2
    new-instance v10, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    .line 191
    .line 192
    move-object v1, v10

    .line 193
    move-object v2, v0

    .line 194
    move v4, p2

    .line 195
    move v5, p1

    .line 196
    invoke-direct/range {v1 .. v7}, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;-><init>(Lcom/android/server/accessibility/magnification/MagnificationController;Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda27;IIFLandroid/graphics/PointF;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, p2, v10}, Lcom/android/server/accessibility/magnification/MagnificationController;->setDisableMagnificationCallbackLocked(ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V

    .line 200
    .line 201
    .line 202
    if-ne p1, v9, :cond_a

    .line 203
    .line 204
    invoke-virtual {p0, p2, v10}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 205
    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_a
    const/4 p0, 0x0

    .line 209
    invoke-virtual {v8, p2, p0, v10}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 210
    .line 211
    .line 212
    :goto_3
    return-void
.end method

.method public final updateWindowsForAccessibilityCallbackLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 15
    .line 16
    move v3, v2

    .line 17
    :goto_0
    iget-object v4, v0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-ge v3, v4, :cond_2

    .line 24
    .line 25
    iget-object v4, v0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 32
    .line 33
    iget-boolean v4, v4, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    .line 34
    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    move v0, v1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move v0, v2

    .line 43
    :goto_1
    sget-boolean v3, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    .line 44
    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v4, "At least one proxy can retrieve windows: "

    .line 50
    .line 51
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    const-string v4, "ProxyManager"

    .line 62
    .line 63
    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :cond_3
    if-eqz v0, :cond_4

    .line 67
    .line 68
    :goto_2
    move v0, v1

    .line 69
    goto :goto_3

    .line 70
    :cond_4
    move v0, v2

    .line 71
    :goto_3
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    move v4, v2

    .line 78
    :goto_4
    if-nez v0, :cond_6

    .line 79
    .line 80
    if-ge v4, v3, :cond_6

    .line 81
    .line 82
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    check-cast v5, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 87
    .line 88
    iget-object v6, v5, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 89
    .line 90
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    and-int/2addr v6, v1

    .line 98
    if-eqz v6, :cond_5

    .line 99
    .line 100
    iget-boolean v5, v5, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    .line 101
    .line 102
    if-eqz v5, :cond_5

    .line 103
    .line 104
    move v0, v1

    .line 105
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    :goto_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-ge v2, v3, :cond_c

    .line 117
    .line 118
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    check-cast v3, Landroid/view/Display;

    .line 123
    .line 124
    if-eqz v3, :cond_b

    .line 125
    .line 126
    if-eqz v0, :cond_a

    .line 127
    .line 128
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 129
    .line 130
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 135
    .line 136
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    invoke-virtual {v6, v3}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDisplay(I)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    iget-object v6, v4, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    .line 145
    .line 146
    monitor-enter v6

    .line 147
    :try_start_0
    iget-object v7, v4, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 148
    .line 149
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    check-cast v7, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 154
    .line 155
    if-nez v7, :cond_7

    .line 156
    .line 157
    new-instance v7, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 158
    .line 159
    invoke-direct {v7, v4, v5}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;-><init>(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    .line 160
    .line 161
    .line 162
    goto :goto_6

    .line 163
    :catchall_0
    move-exception p0

    .line 164
    goto :goto_7

    .line 165
    :cond_7
    :goto_6
    if-eqz v3, :cond_8

    .line 166
    .line 167
    iget-boolean v3, v7, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mIsProxy:Z

    .line 168
    .line 169
    if-nez v3, :cond_8

    .line 170
    .line 171
    iput-boolean v1, v7, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mIsProxy:Z

    .line 172
    .line 173
    iput-boolean v1, v4, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHasProxy:Z

    .line 174
    .line 175
    :cond_8
    iget-boolean v3, v7, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    .line 176
    .line 177
    if-eqz v3, :cond_9

    .line 178
    .line 179
    monitor-exit v6

    .line 180
    goto :goto_8

    .line 181
    :cond_9
    invoke-virtual {v7}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->startTrackingWindowsLocked()V

    .line 182
    .line 183
    .line 184
    iget-object v3, v4, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 185
    .line 186
    invoke-virtual {v3, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    monitor-exit v6

    .line 190
    goto :goto_8

    .line 191
    :goto_7
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    throw p0

    .line 193
    :cond_a
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 194
    .line 195
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->stopTrackingWindows(I)V

    .line 200
    .line 201
    .line 202
    :cond_b
    :goto_8
    add-int/lit8 v2, v2, 0x1

    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_c
    return-void
.end method
