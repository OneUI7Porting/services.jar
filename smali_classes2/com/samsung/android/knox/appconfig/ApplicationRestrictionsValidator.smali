.class public final Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final TAG:Ljava/lang/String; = "ApplicationRestrictionsValidator"

.field public static final unusedBundleKeys:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    const-string/jumbo v11, "startActivity"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v12, "sendBroadcast"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "wificonfiguration"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "skip_welcome_screen"

    .line 11
    .line 12
    .line 13
    const-string v2, "flow_pointer_is_on_dex"

    .line 14
    .line 15
    const-string v3, "flow_pointer_from_where_dex"

    .line 16
    .line 17
    const-string v4, "app_config_skip_overscan"

    .line 18
    .line 19
    const-string v5, "app_config_hidden"

    .line 20
    .line 21
    const-string v6, "app_config_disable_ctx_menu"

    .line 22
    .line 23
    const-string v7, "app_config_disable_dex_labs_button"

    .line 24
    .line 25
    const-string v8, "app_config_disable_exit_dex_button"

    .line 26
    .line 27
    const-string v9, "dex_disable_file_copy_from_pc"

    .line 28
    .line 29
    const-string v10, "dex_disable_file_copy_from_mobile"

    .line 30
    .line 31
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->unusedBundleKeys:[Ljava/lang/String;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static checkKeyType(Ljava/lang/String;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->unusedBundleKeys:[Ljava/lang/String;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v3, v1, :cond_1

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return v2
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;)I
    .locals 1

    .line 1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    invoke-virtual {p2}, Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;->getPermission()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-interface {v0, p2, p1, p0}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_PERMISSION_DENIED:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    return p0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NONE:I

    .line 25
    .line 26
    return p0

    .line 27
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string p2, "fail to checkPermission  "

    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string p1, "ApplicationRestrictionsValidator"

    .line 42
    .line 43
    invoke-static {p1, p0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_UNKNOWN:I

    .line 47
    .line 48
    return p0
.end method

.method public static checkVersion(Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;)I
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;->getVersion()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getAPILevelForInternal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-le p0, v0, :cond_0

    .line 10
    .line 11
    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NOT_SUPPORTED:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    return p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NONE:I

    .line 17
    .line 18
    return p0

    .line 19
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "fail to checkVersion "

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v0, "ApplicationRestrictionsValidator"

    .line 34
    .line 35
    invoke-static {v0, p0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget p0, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_UNKNOWN:I

    .line 39
    .line 40
    return p0
.end method

.method public static checkWPCODMode(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const-string v0, "device_policy"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static getCallerPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static hasSystemVibrationMenu(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->isSupportDcHaptic(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->hasVibrator(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->isEnableIntensity(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v1, 0x0

    .line 23
    :goto_0
    return v1
.end method

.method public static hasVibrator(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const-string/jumbo v0, "vibrator"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/os/Vibrator;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    return p0
.end method

.method public static isEnableIntensity(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const-string/jumbo v0, "vibrator"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/os/Vibrator;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-le p0, v1, :cond_1

    .line 20
    .line 21
    move v0, v1

    .line 22
    :cond_1
    return v0
.end method

.method public static isSupportDcHaptic(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->hasVibrator(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->isEnableIntensity(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public static supportAutoBrightness(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->supportLightSensor(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->supportCameraSensor(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method

.method public static supportCameraSensor(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const-string/jumbo v0, "sensor"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/hardware/SensorManager;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v1, 0x5

    .line 15
    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    const v1, 0x10044

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    :cond_1
    return v0
.end method

.method public static supportLightSensor(Landroid/content/Context;)Z
    .locals 4

    .line 1
    const-string/jumbo v0, "sensor"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/hardware/SensorManager;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v1, -0x1

    .line 15
    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    move v1, v0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-ge v1, v2, :cond_3

    .line 25
    .line 26
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/hardware/Sensor;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x5

    .line 37
    if-eq v2, v3, :cond_2

    .line 38
    .line 39
    const v3, 0x10041

    .line 40
    .line 41
    .line 42
    if-ne v2, v3, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 49
    :cond_3
    return v0
.end method

.method public static supportPocketMode(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const-string/jumbo v0, "motion_recognition"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    const/high16 v0, 0x800000

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->isAvailable(I)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public static supportTaskBar(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SEC_FLOATING_FEATURE_LAUNCHER_SUPPORT_TASKBAR"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string/jumbo v0, "minimal_battery_use"

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    const/4 v0, 0x1

    .line 26
    if-eq p0, v0, :cond_0

    .line 27
    .line 28
    move v1, v0

    .line 29
    :cond_0
    return v1
.end method

.method public static validate(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 18

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    const-string v2, "ApplicationRestrictionsValidator"

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->getCallerPackage(Landroid/content/Context;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    sget-object v4, Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;->NONE:Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;

    .line 18
    .line 19
    new-instance v4, Landroid/os/Bundle;

    .line 20
    .line 21
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-eqz v6, :cond_27

    .line 37
    .line 38
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    check-cast v6, Ljava/lang/String;

    .line 43
    .line 44
    sget-object v7, Lcom/samsung/android/knox/appconfig/info/KeyInfo;->KEYMAP:Ljava/util/Map;

    .line 45
    .line 46
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    check-cast v7, Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;

    .line 51
    .line 52
    if-nez v7, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-static {v7}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->checkVersion(Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;)I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    sget v9, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NONE:I

    .line 60
    .line 61
    if-eq v9, v8, :cond_2

    .line 62
    .line 63
    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    move-object/from16 v8, p0

    .line 68
    .line 69
    invoke-static {v8, v3, v7}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->checkPermission(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;)I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    sget v9, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NONE:I

    .line 74
    .line 75
    if-eq v9, v7, :cond_3

    .line 76
    .line 77
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->checkWPCODMode(Landroid/content/Context;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    const-string v9, "location_services_wifi_scanning"

    .line 86
    .line 87
    const-string v10, "location_services_bluetooth_scanning"

    .line 88
    .line 89
    const-string/jumbo v11, "wifi_always_scanning"

    .line 90
    .line 91
    .line 92
    const-string v12, "bluetooth_always_scanning"

    .line 93
    .line 94
    const-string/jumbo v13, "top_level_location"

    .line 95
    .line 96
    .line 97
    const-string v14, "location_settings"

    .line 98
    .line 99
    const/4 v15, 0x1

    .line 100
    if-ne v7, v15, :cond_5

    .line 101
    .line 102
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-nez v7, :cond_4

    .line 107
    .line 108
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    if-nez v7, :cond_4

    .line 113
    .line 114
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    if-nez v7, :cond_4

    .line 119
    .line 120
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    if-nez v7, :cond_4

    .line 125
    .line 126
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-nez v7, :cond_4

    .line 131
    .line 132
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    if-eqz v7, :cond_5

    .line 137
    .line 138
    :cond_4
    sget v7, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NOT_SUPPORTED:I

    .line 139
    .line 140
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_5
    invoke-static {v6}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->checkKeyType(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    if-ne v7, v15, :cond_6

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_6
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    if-eqz v7, :cond_26

    .line 156
    .line 157
    invoke-virtual {v7}, Landroid/os/Bundle;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result v16

    .line 161
    if-eqz v16, :cond_7

    .line 162
    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :cond_7
    const-string/jumbo v15, "value"

    .line 166
    .line 167
    .line 168
    invoke-virtual {v7, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v15

    .line 172
    if-eqz v15, :cond_26

    .line 173
    .line 174
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 175
    .line 176
    .line 177
    move-result v17

    .line 178
    if-eqz v17, :cond_8

    .line 179
    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :cond_8
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 183
    .line 184
    .line 185
    move-result v17

    .line 186
    const/4 v1, 0x4

    .line 187
    sparse-switch v17, :sswitch_data_0

    .line 188
    .line 189
    .line 190
    goto/16 :goto_1

    .line 191
    .line 192
    :sswitch_0
    const-string/jumbo v9, "wifi_qrcode"

    .line 193
    .line 194
    .line 195
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v9

    .line 199
    if-eqz v9, :cond_9

    .line 200
    .line 201
    const/16 v9, 0x85

    .line 202
    .line 203
    goto/16 :goto_2

    .line 204
    .line 205
    :catch_0
    move-exception v0

    .line 206
    move-object v1, v0

    .line 207
    goto/16 :goto_7

    .line 208
    .line 209
    :sswitch_1
    const-string v9, "disableToolbarYoutube "

    .line 210
    .line 211
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v9

    .line 215
    if-eqz v9, :cond_9

    .line 216
    .line 217
    const/16 v9, 0xa5

    .line 218
    .line 219
    goto/16 :goto_2

    .line 220
    .line 221
    :sswitch_2
    const-string v9, "long_press_wake_bixby"

    .line 222
    .line 223
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v9

    .line 227
    if-eqz v9, :cond_9

    .line 228
    .line 229
    const/16 v9, 0x63

    .line 230
    .line 231
    goto/16 :goto_2

    .line 232
    .line 233
    :sswitch_3
    const-string/jumbo v9, "telephonyui_simcard_manager_data_preference"

    .line 234
    .line 235
    .line 236
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v9

    .line 240
    if-eqz v9, :cond_9

    .line 241
    .line 242
    const/16 v9, 0xb9

    .line 243
    .line 244
    goto/16 :goto_2

    .line 245
    .line 246
    :sswitch_4
    const-string/jumbo v9, "smart_capture"

    .line 247
    .line 248
    .line 249
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v9

    .line 253
    if-eqz v9, :cond_9

    .line 254
    .line 255
    const/4 v9, 0x3

    .line 256
    goto/16 :goto_2

    .line 257
    .line 258
    :sswitch_5
    const-string/jumbo v9, "xcover_top_long_press_key"

    .line 259
    .line 260
    .line 261
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v9

    .line 265
    if-eqz v9, :cond_9

    .line 266
    .line 267
    const/16 v9, 0x58

    .line 268
    .line 269
    goto/16 :goto_2

    .line 270
    .line 271
    :sswitch_6
    const-string/jumbo v9, "telephonyui_doemstic_roaming_data"

    .line 272
    .line 273
    .line 274
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v9

    .line 278
    if-eqz v9, :cond_9

    .line 279
    .line 280
    const/16 v9, 0xb4

    .line 281
    .line 282
    goto/16 :goto_2

    .line 283
    .line 284
    :sswitch_7
    const-string/jumbo v9, "nfc_settings"

    .line 285
    .line 286
    .line 287
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v9

    .line 291
    if-eqz v9, :cond_9

    .line 292
    .line 293
    const/16 v9, 0x9

    .line 294
    .line 295
    goto/16 :goto_2

    .line 296
    .line 297
    :sswitch_8
    const-string v9, "lock_screen_additional_info"

    .line 298
    .line 299
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v9

    .line 303
    if-eqz v9, :cond_9

    .line 304
    .line 305
    const/16 v9, 0x1e

    .line 306
    .line 307
    goto/16 :goto_2

    .line 308
    .line 309
    :sswitch_9
    const-string v9, "easy_mute"

    .line 310
    .line 311
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v9

    .line 315
    if-eqz v9, :cond_9

    .line 316
    .line 317
    const/4 v9, 0x0

    .line 318
    goto/16 :goto_2

    .line 319
    .line 320
    :sswitch_a
    const-string v9, "lockscreen_notifications"

    .line 321
    .line 322
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v9

    .line 326
    if-eqz v9, :cond_9

    .line 327
    .line 328
    const/16 v9, 0x8b

    .line 329
    .line 330
    goto/16 :goto_2

    .line 331
    .line 332
    :sswitch_b
    const-string/jumbo v9, "noti_card_seekbar"

    .line 333
    .line 334
    .line 335
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v9

    .line 339
    if-eqz v9, :cond_9

    .line 340
    .line 341
    const/16 v9, 0x23

    .line 342
    .line 343
    goto/16 :goto_2

    .line 344
    .line 345
    :sswitch_c
    const-string/jumbo v9, "top_level_apps"

    .line 346
    .line 347
    .line 348
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v9

    .line 352
    if-eqz v9, :cond_9

    .line 353
    .line 354
    const/16 v9, 0x7d

    .line 355
    .line 356
    goto/16 :goto_2

    .line 357
    .line 358
    :sswitch_d
    const-string/jumbo v9, "top_level_display_upsm"

    .line 359
    .line 360
    .line 361
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v9

    .line 365
    if-eqz v9, :cond_9

    .line 366
    .line 367
    const/16 v9, 0x50

    .line 368
    .line 369
    goto/16 :goto_2

    .line 370
    .line 371
    :sswitch_e
    const-string v9, "international_roaming_voice_text"

    .line 372
    .line 373
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v9

    .line 377
    if-eqz v9, :cond_9

    .line 378
    .line 379
    const/16 v9, 0xaf

    .line 380
    .line 381
    goto/16 :goto_2

    .line 382
    .line 383
    :sswitch_f
    const-string v9, "double_press_open_apps"

    .line 384
    .line 385
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v9

    .line 389
    if-eqz v9, :cond_9

    .line 390
    .line 391
    const/16 v9, 0x5c

    .line 392
    .line 393
    goto/16 :goto_2

    .line 394
    .line 395
    :sswitch_10
    const-string v9, "function_key_long_press"

    .line 396
    .line 397
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v9

    .line 401
    if-eqz v9, :cond_9

    .line 402
    .line 403
    const/16 v9, 0x5d

    .line 404
    .line 405
    goto/16 :goto_2

    .line 406
    .line 407
    :sswitch_11
    const-string v9, "blue_light_filter_user_schedule"

    .line 408
    .line 409
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result v9

    .line 413
    if-eqz v9, :cond_9

    .line 414
    .line 415
    const/16 v9, 0x40

    .line 416
    .line 417
    goto/16 :goto_2

    .line 418
    .line 419
    :sswitch_12
    const-string/jumbo v9, "notification_details"

    .line 420
    .line 421
    .line 422
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    move-result v9

    .line 426
    if-eqz v9, :cond_9

    .line 427
    .line 428
    const/16 v9, 0x6a

    .line 429
    .line 430
    goto/16 :goto_2

    .line 431
    .line 432
    :sswitch_13
    const-string v9, "change_language_shortcut"

    .line 433
    .line 434
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v9

    .line 438
    if-eqz v9, :cond_9

    .line 439
    .line 440
    const/16 v9, 0x66

    .line 441
    .line 442
    goto/16 :goto_2

    .line 443
    .line 444
    :sswitch_14
    const-string v9, "homescreen_noti_preview"

    .line 445
    .line 446
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v9

    .line 450
    if-eqz v9, :cond_9

    .line 451
    .line 452
    const/16 v9, 0x26

    .line 453
    .line 454
    goto/16 :goto_2

    .line 455
    .line 456
    :sswitch_15
    const-string/jumbo v9, "volume_key_control"

    .line 457
    .line 458
    .line 459
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    move-result v9

    .line 463
    if-eqz v9, :cond_9

    .line 464
    .line 465
    const/16 v9, 0x33

    .line 466
    .line 467
    goto/16 :goto_2

    .line 468
    .line 469
    :sswitch_16
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v9

    .line 473
    if-eqz v9, :cond_9

    .line 474
    .line 475
    const/16 v9, 0x86

    .line 476
    .line 477
    goto/16 :goto_2

    .line 478
    .line 479
    :sswitch_17
    const-string v9, "location_time_zone_detection"

    .line 480
    .line 481
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    move-result v9

    .line 485
    if-eqz v9, :cond_9

    .line 486
    .line 487
    const/16 v9, 0x91

    .line 488
    .line 489
    goto/16 :goto_2

    .line 490
    .line 491
    :sswitch_18
    const-string/jumbo v9, "xcover_top_short_press_key"

    .line 492
    .line 493
    .line 494
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    move-result v9

    .line 498
    if-eqz v9, :cond_9

    .line 499
    .line 500
    const/16 v9, 0x57

    .line 501
    .line 502
    goto/16 :goto_2

    .line 503
    .line 504
    :sswitch_19
    const-string v9, "backup_category"

    .line 505
    .line 506
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    move-result v9

    .line 510
    if-eqz v9, :cond_9

    .line 511
    .line 512
    const/16 v9, 0x83

    .line 513
    .line 514
    goto/16 :goto_2

    .line 515
    .line 516
    :sswitch_1a
    const-string v9, "international_roaming_data"

    .line 517
    .line 518
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 519
    .line 520
    .line 521
    move-result v9

    .line 522
    if-eqz v9, :cond_9

    .line 523
    .line 524
    const/16 v9, 0xb0

    .line 525
    .line 526
    goto/16 :goto_2

    .line 527
    .line 528
    :sswitch_1b
    const-string v9, "auto_wifi"

    .line 529
    .line 530
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    move-result v9

    .line 534
    if-eqz v9, :cond_9

    .line 535
    .line 536
    const/16 v9, 0xc

    .line 537
    .line 538
    goto/16 :goto_2

    .line 539
    .line 540
    :sswitch_1c
    const-string/jumbo v9, "notification_vibration"

    .line 541
    .line 542
    .line 543
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    move-result v9

    .line 547
    if-eqz v9, :cond_9

    .line 548
    .line 549
    const/16 v9, 0x6b

    .line 550
    .line 551
    goto/16 :goto_2

    .line 552
    .line 553
    :sswitch_1d
    const-string v9, "disableVoiceInput"

    .line 554
    .line 555
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    move-result v9

    .line 559
    if-eqz v9, :cond_9

    .line 560
    .line 561
    const/16 v9, 0x9e

    .line 562
    .line 563
    goto/16 :goto_2

    .line 564
    .line 565
    :sswitch_1e
    const-string v9, "double_press_quick_launch_camera"

    .line 566
    .line 567
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 568
    .line 569
    .line 570
    move-result v9

    .line 571
    if-eqz v9, :cond_9

    .line 572
    .line 573
    const/16 v9, 0x61

    .line 574
    .line 575
    goto/16 :goto_2

    .line 576
    .line 577
    :sswitch_1f
    const-string v9, "lock_screen_menu_notifications"

    .line 578
    .line 579
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 580
    .line 581
    .line 582
    move-result v9

    .line 583
    if-eqz v9, :cond_9

    .line 584
    .line 585
    const/16 v9, 0x22

    .line 586
    .line 587
    goto/16 :goto_2

    .line 588
    .line 589
    :sswitch_20
    const-string/jumbo v9, "telephonyui_simcard_manager_general_settings_sim2"

    .line 590
    .line 591
    .line 592
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    move-result v9

    .line 596
    if-eqz v9, :cond_9

    .line 597
    .line 598
    const/16 v9, 0xb8

    .line 599
    .line 600
    goto/16 :goto_2

    .line 601
    .line 602
    :sswitch_21
    const-string/jumbo v9, "telephonyui_simcard_manager_general_settings_sim1"

    .line 603
    .line 604
    .line 605
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 606
    .line 607
    .line 608
    move-result v9

    .line 609
    if-eqz v9, :cond_9

    .line 610
    .line 611
    const/16 v9, 0xbc

    .line 612
    .line 613
    goto/16 :goto_2

    .line 614
    .line 615
    :sswitch_22
    const-string/jumbo v9, "telephonyui_simcard_manager_general_settings_esim"

    .line 616
    .line 617
    .line 618
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    move-result v9

    .line 622
    if-eqz v9, :cond_9

    .line 623
    .line 624
    const/16 v9, 0xbd

    .line 625
    .line 626
    goto/16 :goto_2

    .line 627
    .line 628
    :sswitch_23
    const-string v9, "long_press_key"

    .line 629
    .line 630
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    move-result v9

    .line 634
    if-eqz v9, :cond_9

    .line 635
    .line 636
    const/16 v9, 0x55

    .line 637
    .line 638
    goto/16 :goto_2

    .line 639
    .line 640
    :sswitch_24
    const-string v9, "flow_pointer_from_where_dex"

    .line 641
    .line 642
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 643
    .line 644
    .line 645
    move-result v9

    .line 646
    if-eqz v9, :cond_9

    .line 647
    .line 648
    const/16 v9, 0xc6

    .line 649
    .line 650
    goto/16 :goto_2

    .line 651
    .line 652
    :sswitch_25
    const-string v9, "function_key_double_press"

    .line 653
    .line 654
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 655
    .line 656
    .line 657
    move-result v9

    .line 658
    if-eqz v9, :cond_9

    .line 659
    .line 660
    const/16 v9, 0x5a

    .line 661
    .line 662
    goto/16 :goto_2

    .line 663
    .line 664
    :sswitch_26
    const-string v9, "disable_connectivity_check"

    .line 665
    .line 666
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 667
    .line 668
    .line 669
    move-result v9

    .line 670
    if-eqz v9, :cond_9

    .line 671
    .line 672
    const/16 v9, 0xc3

    .line 673
    .line 674
    goto/16 :goto_2

    .line 675
    .line 676
    :sswitch_27
    const-string/jumbo v9, "restriction_app_suggestion"

    .line 677
    .line 678
    .line 679
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 680
    .line 681
    .line 682
    move-result v9

    .line 683
    if-eqz v9, :cond_9

    .line 684
    .line 685
    const/16 v9, 0xc1

    .line 686
    .line 687
    goto/16 :goto_2

    .line 688
    .line 689
    :sswitch_28
    const-string v9, "charging_sounds"

    .line 690
    .line 691
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 692
    .line 693
    .line 694
    move-result v9

    .line 695
    if-eqz v9, :cond_9

    .line 696
    .line 697
    const/16 v9, 0x2b

    .line 698
    .line 699
    goto/16 :goto_2

    .line 700
    .line 701
    :sswitch_29
    const-string/jumbo v9, "wifi_adps"

    .line 702
    .line 703
    .line 704
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 705
    .line 706
    .line 707
    move-result v9

    .line 708
    if-eqz v9, :cond_9

    .line 709
    .line 710
    const/16 v9, 0xd

    .line 711
    .line 712
    goto/16 :goto_2

    .line 713
    .line 714
    :sswitch_2a
    const-string/jumbo v9, "telephonyui_simcard_manager_data_switching_preference"

    .line 715
    .line 716
    .line 717
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 718
    .line 719
    .line 720
    move-result v9

    .line 721
    if-eqz v9, :cond_9

    .line 722
    .line 723
    const/16 v9, 0xbf

    .line 724
    .line 725
    goto/16 :goto_2

    .line 726
    .line 727
    :sswitch_2b
    const-string v9, "all_notification"

    .line 728
    .line 729
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 730
    .line 731
    .line 732
    move-result v9

    .line 733
    if-eqz v9, :cond_9

    .line 734
    .line 735
    const/16 v9, 0x46

    .line 736
    .line 737
    goto/16 :goto_2

    .line 738
    .line 739
    :sswitch_2c
    const-string v9, "default_autofill"

    .line 740
    .line 741
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 742
    .line 743
    .line 744
    move-result v9

    .line 745
    if-eqz v9, :cond_9

    .line 746
    .line 747
    const/16 v9, 0x81

    .line 748
    .line 749
    goto/16 :goto_2

    .line 750
    .line 751
    :sswitch_2d
    const-string v9, "button_order"

    .line 752
    .line 753
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 754
    .line 755
    .line 756
    move-result v9

    .line 757
    if-eqz v9, :cond_9

    .line 758
    .line 759
    const/16 v9, 0x1a

    .line 760
    .line 761
    goto/16 :goto_2

    .line 762
    .line 763
    :sswitch_2e
    const-string/jumbo v9, "where_to_show"

    .line 764
    .line 765
    .line 766
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 767
    .line 768
    .line 769
    move-result v9

    .line 770
    if-eqz v9, :cond_9

    .line 771
    .line 772
    const/16 v9, 0x1d

    .line 773
    .line 774
    goto/16 :goto_2

    .line 775
    .line 776
    :sswitch_2f
    const-string v9, "dex_disable_file_copy_from_mobile"

    .line 777
    .line 778
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 779
    .line 780
    .line 781
    move-result v9

    .line 782
    if-eqz v9, :cond_9

    .line 783
    .line 784
    const/16 v9, 0xcd

    .line 785
    .line 786
    goto/16 :goto_2

    .line 787
    .line 788
    :sswitch_30
    const-string v9, "blue_light_filter_turn_on_now"

    .line 789
    .line 790
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 791
    .line 792
    .line 793
    move-result v9

    .line 794
    if-eqz v9, :cond_9

    .line 795
    .line 796
    const/16 v9, 0x3d

    .line 797
    .line 798
    goto/16 :goto_2

    .line 799
    .line 800
    :sswitch_31
    const-string v9, "key_show_keyboard_button"

    .line 801
    .line 802
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 803
    .line 804
    .line 805
    move-result v9

    .line 806
    if-eqz v9, :cond_9

    .line 807
    .line 808
    const/16 v9, 0x37

    .line 809
    .line 810
    goto/16 :goto_2

    .line 811
    .line 812
    :sswitch_32
    const-string/jumbo v9, "noti_inverse_text"

    .line 813
    .line 814
    .line 815
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 816
    .line 817
    .line 818
    move-result v9

    .line 819
    if-eqz v9, :cond_9

    .line 820
    .line 821
    const/16 v9, 0x24

    .line 822
    .line 823
    goto/16 :goto_2

    .line 824
    .line 825
    :sswitch_33
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 826
    .line 827
    .line 828
    move-result v9

    .line 829
    if-eqz v9, :cond_9

    .line 830
    .line 831
    const/4 v9, 0x6

    .line 832
    goto/16 :goto_2

    .line 833
    .line 834
    :sswitch_34
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 835
    .line 836
    .line 837
    move-result v9

    .line 838
    if-eqz v9, :cond_9

    .line 839
    .line 840
    const/16 v9, 0x4a

    .line 841
    .line 842
    goto/16 :goto_2

    .line 843
    .line 844
    :sswitch_35
    const-string/jumbo v9, "notification_content"

    .line 845
    .line 846
    .line 847
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 848
    .line 849
    .line 850
    move-result v9

    .line 851
    if-eqz v9, :cond_9

    .line 852
    .line 853
    const/16 v9, 0x8c

    .line 854
    .line 855
    goto/16 :goto_2

    .line 856
    .line 857
    :sswitch_36
    const-string v9, "auto_brightness_no_pac"

    .line 858
    .line 859
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 860
    .line 861
    .line 862
    move-result v9

    .line 863
    if-eqz v9, :cond_9

    .line 864
    .line 865
    const/16 v9, 0x11

    .line 866
    .line 867
    goto/16 :goto_2

    .line 868
    .line 869
    :sswitch_37
    const-string v9, "app_config_disable_dex_labs_button"

    .line 870
    .line 871
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 872
    .line 873
    .line 874
    move-result v9

    .line 875
    if-eqz v9, :cond_9

    .line 876
    .line 877
    const/16 v9, 0xca

    .line 878
    .line 879
    goto/16 :goto_2

    .line 880
    .line 881
    :sswitch_38
    const-string v9, "eye_comfort_set_schedule"

    .line 882
    .line 883
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 884
    .line 885
    .line 886
    move-result v9

    .line 887
    if-eqz v9, :cond_9

    .line 888
    .line 889
    const/16 v9, 0x6e

    .line 890
    .line 891
    goto/16 :goto_2

    .line 892
    .line 893
    :sswitch_39
    const-string/jumbo v9, "tts_default_pitch"

    .line 894
    .line 895
    .line 896
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 897
    .line 898
    .line 899
    move-result v9

    .line 900
    if-eqz v9, :cond_9

    .line 901
    .line 902
    const/16 v9, 0x39

    .line 903
    .line 904
    goto/16 :goto_2

    .line 905
    .line 906
    :sswitch_3a
    const-string v9, "blue_light_filter_on_time"

    .line 907
    .line 908
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 909
    .line 910
    .line 911
    move-result v9

    .line 912
    if-eqz v9, :cond_9

    .line 913
    .line 914
    const/16 v9, 0x41

    .line 915
    .line 916
    goto/16 :goto_2

    .line 917
    .line 918
    :sswitch_3b
    const-string/jumbo v9, "sec_high_refresh_rate"

    .line 919
    .line 920
    .line 921
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 922
    .line 923
    .line 924
    move-result v9

    .line 925
    if-eqz v9, :cond_9

    .line 926
    .line 927
    const/16 v9, 0x8d

    .line 928
    .line 929
    goto/16 :goto_2

    .line 930
    .line 931
    :sswitch_3c
    const-string/jumbo v9, "resolution_user_setting"

    .line 932
    .line 933
    .line 934
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 935
    .line 936
    .line 937
    move-result v9

    .line 938
    if-eqz v9, :cond_9

    .line 939
    .line 940
    const/16 v9, 0xcc

    .line 941
    .line 942
    goto/16 :goto_2

    .line 943
    .line 944
    :sswitch_3d
    const-string v9, "app_config_hidden"

    .line 945
    .line 946
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 947
    .line 948
    .line 949
    move-result v9

    .line 950
    if-eqz v9, :cond_9

    .line 951
    .line 952
    const/16 v9, 0xc8

    .line 953
    .line 954
    goto/16 :goto_2

    .line 955
    .line 956
    :sswitch_3e
    const-string/jumbo v9, "top_level_location_upsm"

    .line 957
    .line 958
    .line 959
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 960
    .line 961
    .line 962
    move-result v9

    .line 963
    if-eqz v9, :cond_9

    .line 964
    .line 965
    const/16 v9, 0x4e

    .line 966
    .line 967
    goto/16 :goto_2

    .line 968
    .line 969
    :sswitch_3f
    const-string v9, "gesture_detailed"

    .line 970
    .line 971
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 972
    .line 973
    .line 974
    move-result v9

    .line 975
    if-eqz v9, :cond_9

    .line 976
    .line 977
    const/16 v9, 0x74

    .line 978
    .line 979
    goto/16 :goto_2

    .line 980
    .line 981
    :sswitch_40
    const-string/jumbo v9, "top_level_wifi_upsm"

    .line 982
    .line 983
    .line 984
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 985
    .line 986
    .line 987
    move-result v9

    .line 988
    if-eqz v9, :cond_9

    .line 989
    .line 990
    const/16 v9, 0x4b

    .line 991
    .line 992
    goto/16 :goto_2

    .line 993
    .line 994
    :sswitch_41
    const-string/jumbo v9, "screen_timeout"

    .line 995
    .line 996
    .line 997
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 998
    .line 999
    .line 1000
    move-result v9

    .line 1001
    if-eqz v9, :cond_9

    .line 1002
    .line 1003
    const/16 v9, 0x18

    .line 1004
    .line 1005
    goto/16 :goto_2

    .line 1006
    .line 1007
    :sswitch_42
    const-string/jumbo v9, "private_dns_settings_specifier"

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1011
    .line 1012
    .line 1013
    move-result v9

    .line 1014
    if-eqz v9, :cond_9

    .line 1015
    .line 1016
    const/16 v9, 0x95

    .line 1017
    .line 1018
    goto/16 :goto_2

    .line 1019
    .line 1020
    :sswitch_43
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1021
    .line 1022
    .line 1023
    move-result v9

    .line 1024
    if-eqz v9, :cond_9

    .line 1025
    .line 1026
    const/16 v9, 0x8

    .line 1027
    .line 1028
    goto/16 :goto_2

    .line 1029
    .line 1030
    :sswitch_44
    const-string/jumbo v9, "notification_2"

    .line 1031
    .line 1032
    .line 1033
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1034
    .line 1035
    .line 1036
    move-result v9

    .line 1037
    if-eqz v9, :cond_9

    .line 1038
    .line 1039
    const/16 v9, 0x30

    .line 1040
    .line 1041
    goto/16 :goto_2

    .line 1042
    .line 1043
    :sswitch_45
    const-string v9, "category_samsungservices"

    .line 1044
    .line 1045
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1046
    .line 1047
    .line 1048
    move-result v9

    .line 1049
    if-eqz v9, :cond_9

    .line 1050
    .line 1051
    const/16 v9, 0x82

    .line 1052
    .line 1053
    goto/16 :goto_2

    .line 1054
    .line 1055
    :sswitch_46
    const-string/jumbo v9, "wifi_hs20_list"

    .line 1056
    .line 1057
    .line 1058
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1059
    .line 1060
    .line 1061
    move-result v9

    .line 1062
    if-eqz v9, :cond_9

    .line 1063
    .line 1064
    const/16 v9, 0x49

    .line 1065
    .line 1066
    goto/16 :goto_2

    .line 1067
    .line 1068
    :sswitch_47
    const-string v9, "accessibility_installed_services"

    .line 1069
    .line 1070
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1071
    .line 1072
    .line 1073
    move-result v9

    .line 1074
    if-eqz v9, :cond_9

    .line 1075
    .line 1076
    const/16 v9, 0xab

    .line 1077
    .line 1078
    goto/16 :goto_2

    .line 1079
    .line 1080
    :sswitch_48
    const-string/jumbo v9, "phone_vibration"

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1084
    .line 1085
    .line 1086
    move-result v9

    .line 1087
    if-eqz v9, :cond_9

    .line 1088
    .line 1089
    const/16 v9, 0x35

    .line 1090
    .line 1091
    goto/16 :goto_2

    .line 1092
    .line 1093
    :sswitch_49
    const-string v9, "dashboard_tile_pref_com.samsung.android.app.telephonyui.netsettings.ui.NetSettingsActivity"

    .line 1094
    .line 1095
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1096
    .line 1097
    .line 1098
    move-result v9

    .line 1099
    if-eqz v9, :cond_9

    .line 1100
    .line 1101
    const/16 v9, 0x52

    .line 1102
    .line 1103
    goto/16 :goto_2

    .line 1104
    .line 1105
    :sswitch_4a
    const-string v9, "device_name_edit"

    .line 1106
    .line 1107
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1108
    .line 1109
    .line 1110
    move-result v9

    .line 1111
    if-eqz v9, :cond_9

    .line 1112
    .line 1113
    const/16 v9, 0x89

    .line 1114
    .line 1115
    goto/16 :goto_2

    .line 1116
    .line 1117
    :sswitch_4b
    const-string v9, "eye_comfort_adaptive_mode"

    .line 1118
    .line 1119
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1120
    .line 1121
    .line 1122
    move-result v9

    .line 1123
    if-eqz v9, :cond_9

    .line 1124
    .line 1125
    const/16 v9, 0x6c

    .line 1126
    .line 1127
    goto/16 :goto_2

    .line 1128
    .line 1129
    :sswitch_4c
    const-string/jumbo v9, "notification"

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1133
    .line 1134
    .line 1135
    move-result v9

    .line 1136
    if-eqz v9, :cond_9

    .line 1137
    .line 1138
    const/16 v9, 0x2f

    .line 1139
    .line 1140
    goto/16 :goto_2

    .line 1141
    .line 1142
    :sswitch_4d
    const-string v9, "lift_to_wake"

    .line 1143
    .line 1144
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1145
    .line 1146
    .line 1147
    move-result v9

    .line 1148
    if-eqz v9, :cond_9

    .line 1149
    .line 1150
    const/16 v9, 0x92

    .line 1151
    .line 1152
    goto/16 :goto_2

    .line 1153
    .line 1154
    :sswitch_4e
    const-string v9, "disableHWRInput"

    .line 1155
    .line 1156
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1157
    .line 1158
    .line 1159
    move-result v9

    .line 1160
    if-eqz v9, :cond_9

    .line 1161
    .line 1162
    const/16 v9, 0xa0

    .line 1163
    .line 1164
    goto/16 :goto_2

    .line 1165
    .line 1166
    :sswitch_4f
    const-string v9, "app_config_disable_exit_dex_button"

    .line 1167
    .line 1168
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1169
    .line 1170
    .line 1171
    move-result v9

    .line 1172
    if-eqz v9, :cond_9

    .line 1173
    .line 1174
    const/16 v9, 0xcb

    .line 1175
    .line 1176
    goto/16 :goto_2

    .line 1177
    .line 1178
    :sswitch_50
    const-string v9, "auto_brightness"

    .line 1179
    .line 1180
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1181
    .line 1182
    .line 1183
    move-result v9

    .line 1184
    if-eqz v9, :cond_9

    .line 1185
    .line 1186
    const/16 v9, 0x10

    .line 1187
    .line 1188
    goto/16 :goto_2

    .line 1189
    .line 1190
    :sswitch_51
    const-string/jumbo v9, "show_notification_icons"

    .line 1191
    .line 1192
    .line 1193
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1194
    .line 1195
    .line 1196
    move-result v9

    .line 1197
    if-eqz v9, :cond_9

    .line 1198
    .line 1199
    const/16 v9, 0x29

    .line 1200
    .line 1201
    goto/16 :goto_2

    .line 1202
    .line 1203
    :sswitch_52
    const-string/jumbo v9, "vibrate_when_ringing"

    .line 1204
    .line 1205
    .line 1206
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1207
    .line 1208
    .line 1209
    move-result v9

    .line 1210
    if-eqz v9, :cond_9

    .line 1211
    .line 1212
    const/16 v9, 0x36

    .line 1213
    .line 1214
    goto/16 :goto_2

    .line 1215
    .line 1216
    :sswitch_53
    const-string/jumbo v9, "screenshots_and_screen_recorder"

    .line 1217
    .line 1218
    .line 1219
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1220
    .line 1221
    .line 1222
    move-result v9

    .line 1223
    if-eqz v9, :cond_9

    .line 1224
    .line 1225
    move v9, v1

    .line 1226
    goto/16 :goto_2

    .line 1227
    .line 1228
    :sswitch_54
    const-string v9, "SETTINGS_USE_TOOLBAR"

    .line 1229
    .line 1230
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1231
    .line 1232
    .line 1233
    move-result v9

    .line 1234
    if-eqz v9, :cond_9

    .line 1235
    .line 1236
    const/16 v9, 0x96

    .line 1237
    .line 1238
    goto/16 :goto_2

    .line 1239
    .line 1240
    :sswitch_55
    const-string/jumbo v9, "picture_in_picture"

    .line 1241
    .line 1242
    .line 1243
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1244
    .line 1245
    .line 1246
    move-result v9

    .line 1247
    if-eqz v9, :cond_9

    .line 1248
    .line 1249
    const/16 v9, 0x65

    .line 1250
    .line 1251
    goto/16 :goto_2

    .line 1252
    .line 1253
    :sswitch_56
    const-string v9, "doemstic_roaming_data"

    .line 1254
    .line 1255
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1256
    .line 1257
    .line 1258
    move-result v9

    .line 1259
    if-eqz v9, :cond_9

    .line 1260
    .line 1261
    const/16 v9, 0xae

    .line 1262
    .line 1263
    goto/16 :goto_2

    .line 1264
    .line 1265
    :sswitch_57
    const-string v9, "disableGifKeyboard"

    .line 1266
    .line 1267
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1268
    .line 1269
    .line 1270
    move-result v9

    .line 1271
    if-eqz v9, :cond_9

    .line 1272
    .line 1273
    const/16 v9, 0x9d

    .line 1274
    .line 1275
    goto/16 :goto_2

    .line 1276
    .line 1277
    :sswitch_58
    const-string v9, "eye_comfort_seekbar_color_temperature"

    .line 1278
    .line 1279
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1280
    .line 1281
    .line 1282
    move-result v9

    .line 1283
    if-eqz v9, :cond_9

    .line 1284
    .line 1285
    const/16 v9, 0x6f

    .line 1286
    .line 1287
    goto/16 :goto_2

    .line 1288
    .line 1289
    :sswitch_59
    const-string/jumbo v9, "spen_detachment_sound"

    .line 1290
    .line 1291
    .line 1292
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1293
    .line 1294
    .line 1295
    move-result v9

    .line 1296
    if-eqz v9, :cond_9

    .line 1297
    .line 1298
    const/16 v9, 0x76

    .line 1299
    .line 1300
    goto/16 :goto_2

    .line 1301
    .line 1302
    :sswitch_5a
    const-string v9, "accessibility_power_and_volume_up_keys"

    .line 1303
    .line 1304
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1305
    .line 1306
    .line 1307
    move-result v9

    .line 1308
    if-eqz v9, :cond_9

    .line 1309
    .line 1310
    const/16 v9, 0xa9

    .line 1311
    .line 1312
    goto/16 :goto_2

    .line 1313
    .line 1314
    :sswitch_5b
    const-string/jumbo v9, "sec_font_size"

    .line 1315
    .line 1316
    .line 1317
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1318
    .line 1319
    .line 1320
    move-result v9

    .line 1321
    if-eqz v9, :cond_9

    .line 1322
    .line 1323
    const/16 v9, 0x16

    .line 1324
    .line 1325
    goto/16 :goto_2

    .line 1326
    .line 1327
    :sswitch_5c
    const-string/jumbo v9, "phone_language"

    .line 1328
    .line 1329
    .line 1330
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1331
    .line 1332
    .line 1333
    move-result v9

    .line 1334
    if-eqz v9, :cond_9

    .line 1335
    .line 1336
    const/16 v9, 0x7e

    .line 1337
    .line 1338
    goto/16 :goto_2

    .line 1339
    .line 1340
    :sswitch_5d
    const-string/jumbo v9, "screen_off_pocket"

    .line 1341
    .line 1342
    .line 1343
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1344
    .line 1345
    .line 1346
    move-result v9

    .line 1347
    if-eqz v9, :cond_9

    .line 1348
    .line 1349
    const/16 v9, 0x14

    .line 1350
    .line 1351
    goto/16 :goto_2

    .line 1352
    .line 1353
    :sswitch_5e
    const-string/jumbo v9, "navigation_Bar"

    .line 1354
    .line 1355
    .line 1356
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1357
    .line 1358
    .line 1359
    move-result v9

    .line 1360
    if-eqz v9, :cond_9

    .line 1361
    .line 1362
    const/16 v9, 0x43

    .line 1363
    .line 1364
    goto/16 :goto_2

    .line 1365
    .line 1366
    :sswitch_5f
    const-string v9, "disableClipboard"

    .line 1367
    .line 1368
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1369
    .line 1370
    .line 1371
    move-result v9

    .line 1372
    if-eqz v9, :cond_9

    .line 1373
    .line 1374
    const/16 v9, 0xa1

    .line 1375
    .line 1376
    goto/16 :goto_2

    .line 1377
    .line 1378
    :sswitch_60
    const-string/jumbo v9, "skip_welcome_screen"

    .line 1379
    .line 1380
    .line 1381
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1382
    .line 1383
    .line 1384
    move-result v9

    .line 1385
    if-eqz v9, :cond_9

    .line 1386
    .line 1387
    const/16 v9, 0xc4

    .line 1388
    .line 1389
    goto/16 :goto_2

    .line 1390
    .line 1391
    :sswitch_61
    const-string v9, "increse_touch_sensetivity"

    .line 1392
    .line 1393
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1394
    .line 1395
    .line 1396
    move-result v9

    .line 1397
    if-eqz v9, :cond_9

    .line 1398
    .line 1399
    const/16 v9, 0x72

    .line 1400
    .line 1401
    goto/16 :goto_2

    .line 1402
    .line 1403
    :sswitch_62
    const-string v9, "SETTINGS_PHYSICAL_KEYBOARD_TOOLBAR"

    .line 1404
    .line 1405
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1406
    .line 1407
    .line 1408
    move-result v9

    .line 1409
    if-eqz v9, :cond_9

    .line 1410
    .line 1411
    const/16 v9, 0x97

    .line 1412
    .line 1413
    goto/16 :goto_2

    .line 1414
    .line 1415
    :sswitch_63
    const-string/jumbo v9, "telephonyui_simcard_manager_call_preference"

    .line 1416
    .line 1417
    .line 1418
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1419
    .line 1420
    .line 1421
    move-result v9

    .line 1422
    if-eqz v9, :cond_9

    .line 1423
    .line 1424
    const/16 v9, 0xba

    .line 1425
    .line 1426
    goto/16 :goto_2

    .line 1427
    .line 1428
    :sswitch_64
    const-string v9, "blue_light_filter_seekbar"

    .line 1429
    .line 1430
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1431
    .line 1432
    .line 1433
    move-result v9

    .line 1434
    if-eqz v9, :cond_9

    .line 1435
    .line 1436
    const/16 v9, 0x3c

    .line 1437
    .line 1438
    goto/16 :goto_2

    .line 1439
    .line 1440
    :sswitch_65
    const-string v9, "disablePrediction"

    .line 1441
    .line 1442
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1443
    .line 1444
    .line 1445
    move-result v9

    .line 1446
    if-eqz v9, :cond_9

    .line 1447
    .line 1448
    const/16 v9, 0x99

    .line 1449
    .line 1450
    goto/16 :goto_2

    .line 1451
    .line 1452
    :sswitch_66
    const-string/jumbo v9, "verizon_dedicated_ptt"

    .line 1453
    .line 1454
    .line 1455
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1456
    .line 1457
    .line 1458
    move-result v9

    .line 1459
    if-eqz v9, :cond_9

    .line 1460
    .line 1461
    const/16 v9, 0x53

    .line 1462
    .line 1463
    goto/16 :goto_2

    .line 1464
    .line 1465
    :sswitch_67
    const-string/jumbo v9, "telephonyui_international_roaming_data"

    .line 1466
    .line 1467
    .line 1468
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1469
    .line 1470
    .line 1471
    move-result v9

    .line 1472
    if-eqz v9, :cond_9

    .line 1473
    .line 1474
    const/16 v9, 0xb1

    .line 1475
    .line 1476
    goto/16 :goto_2

    .line 1477
    .line 1478
    :sswitch_68
    const-string v9, "dial_pad_tones"

    .line 1479
    .line 1480
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1481
    .line 1482
    .line 1483
    move-result v9

    .line 1484
    if-eqz v9, :cond_9

    .line 1485
    .line 1486
    const/16 v9, 0x2c

    .line 1487
    .line 1488
    goto/16 :goto_2

    .line 1489
    .line 1490
    :sswitch_69
    const-string v9, "function_key_setting"

    .line 1491
    .line 1492
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1493
    .line 1494
    .line 1495
    move-result v9

    .line 1496
    if-eqz v9, :cond_9

    .line 1497
    .line 1498
    const/16 v9, 0x60

    .line 1499
    .line 1500
    goto/16 :goto_2

    .line 1501
    .line 1502
    :sswitch_6a
    const-string v9, "bluetooth_settings"

    .line 1503
    .line 1504
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1505
    .line 1506
    .line 1507
    move-result v9

    .line 1508
    if-eqz v9, :cond_9

    .line 1509
    .line 1510
    const/16 v9, 0x79

    .line 1511
    .line 1512
    goto/16 :goto_2

    .line 1513
    .line 1514
    :sswitch_6b
    const-string v9, "lock_screen_dualclock"

    .line 1515
    .line 1516
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1517
    .line 1518
    .line 1519
    move-result v9

    .line 1520
    if-eqz v9, :cond_9

    .line 1521
    .line 1522
    const/16 v9, 0x1b

    .line 1523
    .line 1524
    goto/16 :goto_2

    .line 1525
    .line 1526
    :sswitch_6c
    const-string/jumbo v9, "tts_engine_preference"

    .line 1527
    .line 1528
    .line 1529
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1530
    .line 1531
    .line 1532
    move-result v9

    .line 1533
    if-eqz v9, :cond_9

    .line 1534
    .line 1535
    const/16 v9, 0x38

    .line 1536
    .line 1537
    goto/16 :goto_2

    .line 1538
    .line 1539
    :sswitch_6d
    const-string/jumbo v9, "proxy_settings"

    .line 1540
    .line 1541
    .line 1542
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1543
    .line 1544
    .line 1545
    move-result v9

    .line 1546
    if-eqz v9, :cond_9

    .line 1547
    .line 1548
    const/16 v9, 0x77

    .line 1549
    .line 1550
    goto/16 :goto_2

    .line 1551
    .line 1552
    :sswitch_6e
    const-string v9, "blue_light_filter"

    .line 1553
    .line 1554
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1555
    .line 1556
    .line 1557
    move-result v9

    .line 1558
    if-eqz v9, :cond_9

    .line 1559
    .line 1560
    const/16 v9, 0x15

    .line 1561
    .line 1562
    goto/16 :goto_2

    .line 1563
    .line 1564
    :sswitch_6f
    const-string v9, "MobileWIPS"

    .line 1565
    .line 1566
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1567
    .line 1568
    .line 1569
    move-result v9

    .line 1570
    if-eqz v9, :cond_9

    .line 1571
    .line 1572
    const/16 v9, 0xf

    .line 1573
    .line 1574
    goto/16 :goto_2

    .line 1575
    .line 1576
    :sswitch_70
    const-string/jumbo v9, "wifi_hs20_profile"

    .line 1577
    .line 1578
    .line 1579
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1580
    .line 1581
    .line 1582
    move-result v9

    .line 1583
    if-eqz v9, :cond_9

    .line 1584
    .line 1585
    const/16 v9, 0xe

    .line 1586
    .line 1587
    goto/16 :goto_2

    .line 1588
    .line 1589
    :sswitch_71
    const-string/jumbo v9, "notification_badging"

    .line 1590
    .line 1591
    .line 1592
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1593
    .line 1594
    .line 1595
    move-result v9

    .line 1596
    if-eqz v9, :cond_9

    .line 1597
    .line 1598
    const/16 v9, 0x25

    .line 1599
    .line 1600
    goto/16 :goto_2

    .line 1601
    .line 1602
    :sswitch_72
    const-string/jumbo v9, "smart_alert"

    .line 1603
    .line 1604
    .line 1605
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1606
    .line 1607
    .line 1608
    move-result v9

    .line 1609
    if-eqz v9, :cond_9

    .line 1610
    .line 1611
    const/4 v9, 0x2

    .line 1612
    goto/16 :goto_2

    .line 1613
    .line 1614
    :sswitch_73
    const-string v9, "ds_notification_sound"

    .line 1615
    .line 1616
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1617
    .line 1618
    .line 1619
    move-result v9

    .line 1620
    if-eqz v9, :cond_9

    .line 1621
    .line 1622
    const/16 v9, 0x48

    .line 1623
    .line 1624
    goto/16 :goto_2

    .line 1625
    .line 1626
    :sswitch_74
    const-string v9, "blue_light_filter_off_time"

    .line 1627
    .line 1628
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1629
    .line 1630
    .line 1631
    move-result v9

    .line 1632
    if-eqz v9, :cond_9

    .line 1633
    .line 1634
    const/16 v9, 0x42

    .line 1635
    .line 1636
    goto/16 :goto_2

    .line 1637
    .line 1638
    :sswitch_75
    const-string/jumbo v9, "telephonyui_international_roaming_voice_text"

    .line 1639
    .line 1640
    .line 1641
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1642
    .line 1643
    .line 1644
    move-result v9

    .line 1645
    if-eqz v9, :cond_9

    .line 1646
    .line 1647
    const/16 v9, 0xb5

    .line 1648
    .line 1649
    goto/16 :goto_2

    .line 1650
    .line 1651
    :sswitch_76
    const-string/jumbo v9, "telephonyui_simcard_manager_text_preference"

    .line 1652
    .line 1653
    .line 1654
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1655
    .line 1656
    .line 1657
    move-result v9

    .line 1658
    if-eqz v9, :cond_9

    .line 1659
    .line 1660
    const/16 v9, 0xbb

    .line 1661
    .line 1662
    goto/16 :goto_2

    .line 1663
    .line 1664
    :sswitch_77
    const-string/jumbo v9, "telephonyui_simcard_manager_add_esim_preference"

    .line 1665
    .line 1666
    .line 1667
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1668
    .line 1669
    .line 1670
    move-result v9

    .line 1671
    if-eqz v9, :cond_9

    .line 1672
    .line 1673
    const/16 v9, 0xbe

    .line 1674
    .line 1675
    goto/16 :goto_2

    .line 1676
    .line 1677
    :sswitch_78
    const-string v9, "disableSticker"

    .line 1678
    .line 1679
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1680
    .line 1681
    .line 1682
    move-result v9

    .line 1683
    if-eqz v9, :cond_9

    .line 1684
    .line 1685
    const/16 v9, 0x9c

    .line 1686
    .line 1687
    goto/16 :goto_2

    .line 1688
    .line 1689
    :sswitch_79
    const-string v9, "app_icon_number"

    .line 1690
    .line 1691
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1692
    .line 1693
    .line 1694
    move-result v9

    .line 1695
    if-eqz v9, :cond_9

    .line 1696
    .line 1697
    const/16 v9, 0x27

    .line 1698
    .line 1699
    goto/16 :goto_2

    .line 1700
    .line 1701
    :sswitch_7a
    const-string/jumbo v9, "xcover_top_key_settings"

    .line 1702
    .line 1703
    .line 1704
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1705
    .line 1706
    .line 1707
    move-result v9

    .line 1708
    if-eqz v9, :cond_9

    .line 1709
    .line 1710
    const/16 v9, 0x5f

    .line 1711
    .line 1712
    goto/16 :goto_2

    .line 1713
    .line 1714
    :sswitch_7b
    const-string v9, "function_key_double_press_type"

    .line 1715
    .line 1716
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1717
    .line 1718
    .line 1719
    move-result v9

    .line 1720
    if-eqz v9, :cond_9

    .line 1721
    .line 1722
    const/16 v9, 0x5b

    .line 1723
    .line 1724
    goto/16 :goto_2

    .line 1725
    .line 1726
    :sswitch_7c
    const-string/jumbo v9, "secbrightness"

    .line 1727
    .line 1728
    .line 1729
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1730
    .line 1731
    .line 1732
    move-result v9

    .line 1733
    if-eqz v9, :cond_9

    .line 1734
    .line 1735
    const/16 v9, 0x8e

    .line 1736
    .line 1737
    goto/16 :goto_2

    .line 1738
    .line 1739
    :sswitch_7d
    const-string/jumbo v9, "wificonfiguration"

    .line 1740
    .line 1741
    .line 1742
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1743
    .line 1744
    .line 1745
    move-result v9

    .line 1746
    if-eqz v9, :cond_9

    .line 1747
    .line 1748
    const/16 v9, 0xc2

    .line 1749
    .line 1750
    goto/16 :goto_2

    .line 1751
    .line 1752
    :sswitch_7e
    const-string v9, "app_config_disable_ctx_menu"

    .line 1753
    .line 1754
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1755
    .line 1756
    .line 1757
    move-result v9

    .line 1758
    if-eqz v9, :cond_9

    .line 1759
    .line 1760
    const/16 v9, 0xc9

    .line 1761
    .line 1762
    goto/16 :goto_2

    .line 1763
    .line 1764
    :sswitch_7f
    const-string/jumbo v9, "wifi_poor_network_detection"

    .line 1765
    .line 1766
    .line 1767
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1768
    .line 1769
    .line 1770
    move-result v9

    .line 1771
    if-eqz v9, :cond_9

    .line 1772
    .line 1773
    const/16 v9, 0xa

    .line 1774
    .line 1775
    goto/16 :goto_2

    .line 1776
    .line 1777
    :sswitch_80
    const-string/jumbo v9, "task_bar"

    .line 1778
    .line 1779
    .line 1780
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1781
    .line 1782
    .line 1783
    move-result v9

    .line 1784
    if-eqz v9, :cond_9

    .line 1785
    .line 1786
    const/16 v9, 0x93

    .line 1787
    .line 1788
    goto/16 :goto_2

    .line 1789
    .line 1790
    :sswitch_81
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1791
    .line 1792
    .line 1793
    move-result v9

    .line 1794
    if-eqz v9, :cond_9

    .line 1795
    .line 1796
    const/16 v9, 0x87

    .line 1797
    .line 1798
    goto/16 :goto_2

    .line 1799
    .line 1800
    :sswitch_82
    const-string/jumbo v9, "wifi_settings"

    .line 1801
    .line 1802
    .line 1803
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1804
    .line 1805
    .line 1806
    move-result v9

    .line 1807
    if-eqz v9, :cond_9

    .line 1808
    .line 1809
    const/16 v9, 0x78

    .line 1810
    .line 1811
    goto/16 :goto_2

    .line 1812
    .line 1813
    :sswitch_83
    const-string/jumbo v9, "wifi_switch_for_individual_apps"

    .line 1814
    .line 1815
    .line 1816
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1817
    .line 1818
    .line 1819
    move-result v9

    .line 1820
    if-eqz v9, :cond_9

    .line 1821
    .line 1822
    const/16 v9, 0xb

    .line 1823
    .line 1824
    goto/16 :goto_2

    .line 1825
    .line 1826
    :sswitch_84
    const-string/jumbo v9, "xcover_top_key_on_lockscreen_key"

    .line 1827
    .line 1828
    .line 1829
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1830
    .line 1831
    .line 1832
    move-result v9

    .line 1833
    if-eqz v9, :cond_9

    .line 1834
    .line 1835
    const/16 v9, 0x59

    .line 1836
    .line 1837
    goto/16 :goto_2

    .line 1838
    .line 1839
    :sswitch_85
    const-string/jumbo v9, "recent_notifications"

    .line 1840
    .line 1841
    .line 1842
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1843
    .line 1844
    .line 1845
    move-result v9

    .line 1846
    if-eqz v9, :cond_9

    .line 1847
    .line 1848
    const/16 v9, 0x45

    .line 1849
    .line 1850
    goto/16 :goto_2

    .line 1851
    .line 1852
    :sswitch_86
    const-string v9, "disableTextEditPanel"

    .line 1853
    .line 1854
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1855
    .line 1856
    .line 1857
    move-result v9

    .line 1858
    if-eqz v9, :cond_9

    .line 1859
    .line 1860
    const/16 v9, 0xa3

    .line 1861
    .line 1862
    goto/16 :goto_2

    .line 1863
    .line 1864
    :sswitch_87
    const-string/jumbo v9, "show_virtual_keyboard_switch"

    .line 1865
    .line 1866
    .line 1867
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1868
    .line 1869
    .line 1870
    move-result v9

    .line 1871
    if-eqz v9, :cond_9

    .line 1872
    .line 1873
    const/16 v9, 0x80

    .line 1874
    .line 1875
    goto/16 :goto_2

    .line 1876
    .line 1877
    :sswitch_88
    const-string/jumbo v9, "short_press_key"

    .line 1878
    .line 1879
    .line 1880
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1881
    .line 1882
    .line 1883
    move-result v9

    .line 1884
    if-eqz v9, :cond_9

    .line 1885
    .line 1886
    const/16 v9, 0x54

    .line 1887
    .line 1888
    goto/16 :goto_2

    .line 1889
    .line 1890
    :sswitch_89
    const-string v9, "accessibility_flash_notificaitons"

    .line 1891
    .line 1892
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1893
    .line 1894
    .line 1895
    move-result v9

    .line 1896
    if-eqz v9, :cond_9

    .line 1897
    .line 1898
    const/16 v9, 0xaa

    .line 1899
    .line 1900
    goto/16 :goto_2

    .line 1901
    .line 1902
    :sswitch_8a
    const-string/jumbo v9, "reset_preference"

    .line 1903
    .line 1904
    .line 1905
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1906
    .line 1907
    .line 1908
    move-result v9

    .line 1909
    if-eqz v9, :cond_9

    .line 1910
    .line 1911
    const/16 v9, 0x7f

    .line 1912
    .line 1913
    goto/16 :goto_2

    .line 1914
    .line 1915
    :sswitch_8b
    const-string v9, "blue_light_filter_turn_on_as_scheduled"

    .line 1916
    .line 1917
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1918
    .line 1919
    .line 1920
    move-result v9

    .line 1921
    if-eqz v9, :cond_9

    .line 1922
    .line 1923
    const/16 v9, 0x3e

    .line 1924
    .line 1925
    goto/16 :goto_2

    .line 1926
    .line 1927
    :sswitch_8c
    const-string v9, "disableToolbarSpotify"

    .line 1928
    .line 1929
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1930
    .line 1931
    .line 1932
    move-result v9

    .line 1933
    if-eqz v9, :cond_9

    .line 1934
    .line 1935
    const/16 v9, 0xa4

    .line 1936
    .line 1937
    goto/16 :goto_2

    .line 1938
    .line 1939
    :sswitch_8d
    const-string/jumbo v9, "telephonyui_network_operator_menu"

    .line 1940
    .line 1941
    .line 1942
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1943
    .line 1944
    .line 1945
    move-result v9

    .line 1946
    if-eqz v9, :cond_9

    .line 1947
    .line 1948
    const/16 v9, 0xb7

    .line 1949
    .line 1950
    goto/16 :goto_2

    .line 1951
    .line 1952
    :sswitch_8e
    const-string v9, "flow_pointer_is_on_dex"

    .line 1953
    .line 1954
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1955
    .line 1956
    .line 1957
    move-result v9

    .line 1958
    if-eqz v9, :cond_9

    .line 1959
    .line 1960
    const/16 v9, 0xc5

    .line 1961
    .line 1962
    goto/16 :goto_2

    .line 1963
    .line 1964
    :sswitch_8f
    const-string v9, "disableAllToolbarItems"

    .line 1965
    .line 1966
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1967
    .line 1968
    .line 1969
    move-result v9

    .line 1970
    if-eqz v9, :cond_9

    .line 1971
    .line 1972
    const/16 v9, 0x9a

    .line 1973
    .line 1974
    goto/16 :goto_2

    .line 1975
    .line 1976
    :sswitch_90
    const-string/jumbo v9, "sync_vibration_with_ringtone"

    .line 1977
    .line 1978
    .line 1979
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1980
    .line 1981
    .line 1982
    move-result v9

    .line 1983
    if-eqz v9, :cond_9

    .line 1984
    .line 1985
    const/16 v9, 0x88

    .line 1986
    .line 1987
    goto/16 :goto_2

    .line 1988
    .line 1989
    :sswitch_91
    const-string/jumbo v9, "notification_vibration_pattern"

    .line 1990
    .line 1991
    .line 1992
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1993
    .line 1994
    .line 1995
    move-result v9

    .line 1996
    if-eqz v9, :cond_9

    .line 1997
    .line 1998
    const/16 v9, 0x71

    .line 1999
    .line 2000
    goto/16 :goto_2

    .line 2001
    .line 2002
    :sswitch_92
    const-string/jumbo v9, "telephonyui_verizon_data_on_off"

    .line 2003
    .line 2004
    .line 2005
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2006
    .line 2007
    .line 2008
    move-result v9

    .line 2009
    if-eqz v9, :cond_9

    .line 2010
    .line 2011
    const/16 v9, 0xb2

    .line 2012
    .line 2013
    goto/16 :goto_2

    .line 2014
    .line 2015
    :sswitch_93
    const-string v9, "disableSetting"

    .line 2016
    .line 2017
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2018
    .line 2019
    .line 2020
    move-result v9

    .line 2021
    if-eqz v9, :cond_9

    .line 2022
    .line 2023
    const/16 v9, 0x98

    .line 2024
    .line 2025
    goto/16 :goto_2

    .line 2026
    .line 2027
    :sswitch_94
    const-string v9, "eye_comfort_custom_mode"

    .line 2028
    .line 2029
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2030
    .line 2031
    .line 2032
    move-result v9

    .line 2033
    if-eqz v9, :cond_9

    .line 2034
    .line 2035
    const/16 v9, 0x6d

    .line 2036
    .line 2037
    goto/16 :goto_2

    .line 2038
    .line 2039
    :sswitch_95
    const-string v9, "keyboard_sound"

    .line 2040
    .line 2041
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2042
    .line 2043
    .line 2044
    move-result v9

    .line 2045
    if-eqz v9, :cond_9

    .line 2046
    .line 2047
    const/16 v9, 0x2d

    .line 2048
    .line 2049
    goto/16 :goto_2

    .line 2050
    .line 2051
    :sswitch_96
    const-string/jumbo v9, "swipe_to_call_or_send_messages"

    .line 2052
    .line 2053
    .line 2054
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2055
    .line 2056
    .line 2057
    move-result v9

    .line 2058
    if-eqz v9, :cond_9

    .line 2059
    .line 2060
    const/4 v9, 0x5

    .line 2061
    goto/16 :goto_2

    .line 2062
    .line 2063
    :sswitch_97
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2064
    .line 2065
    .line 2066
    move-result v9

    .line 2067
    if-eqz v9, :cond_9

    .line 2068
    .line 2069
    const/4 v9, 0x7

    .line 2070
    goto/16 :goto_2

    .line 2071
    .line 2072
    :sswitch_98
    const-string v9, "double_press_open_bixby"

    .line 2073
    .line 2074
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2075
    .line 2076
    .line 2077
    move-result v9

    .line 2078
    if-eqz v9, :cond_9

    .line 2079
    .line 2080
    const/16 v9, 0x62

    .line 2081
    .line 2082
    goto/16 :goto_2

    .line 2083
    .line 2084
    :sswitch_99
    const-string/jumbo v9, "top_level_lockscreen"

    .line 2085
    .line 2086
    .line 2087
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2088
    .line 2089
    .line 2090
    move-result v9

    .line 2091
    if-eqz v9, :cond_9

    .line 2092
    .line 2093
    const/16 v9, 0x7b

    .line 2094
    .line 2095
    goto/16 :goto_2

    .line 2096
    .line 2097
    :sswitch_9a
    const-string v9, "homecity_timezone"

    .line 2098
    .line 2099
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2100
    .line 2101
    .line 2102
    move-result v9

    .line 2103
    if-eqz v9, :cond_9

    .line 2104
    .line 2105
    const/16 v9, 0x1c

    .line 2106
    .line 2107
    goto/16 :goto_2

    .line 2108
    .line 2109
    :sswitch_9b
    const-string/jumbo v9, "phone_vibration_pattern"

    .line 2110
    .line 2111
    .line 2112
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2113
    .line 2114
    .line 2115
    move-result v9

    .line 2116
    if-eqz v9, :cond_9

    .line 2117
    .line 2118
    const/16 v9, 0x70

    .line 2119
    .line 2120
    goto/16 :goto_2

    .line 2121
    .line 2122
    :sswitch_9c
    const-string v9, "double_tap_to_sleep"

    .line 2123
    .line 2124
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2125
    .line 2126
    .line 2127
    move-result v9

    .line 2128
    if-eqz v9, :cond_9

    .line 2129
    .line 2130
    const/16 v9, 0x90

    .line 2131
    .line 2132
    goto/16 :goto_2

    .line 2133
    .line 2134
    :sswitch_9d
    const-string v9, "app_icon_dot"

    .line 2135
    .line 2136
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2137
    .line 2138
    .line 2139
    move-result v9

    .line 2140
    if-eqz v9, :cond_9

    .line 2141
    .line 2142
    const/16 v9, 0x44

    .line 2143
    .line 2144
    goto/16 :goto_2

    .line 2145
    .line 2146
    :sswitch_9e
    const-string v9, "app_config_skip_overscan"

    .line 2147
    .line 2148
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2149
    .line 2150
    .line 2151
    move-result v9

    .line 2152
    if-eqz v9, :cond_9

    .line 2153
    .line 2154
    const/16 v9, 0xc7

    .line 2155
    .line 2156
    goto/16 :goto_2

    .line 2157
    .line 2158
    :sswitch_9f
    const-string/jumbo v9, "toggle_airplane"

    .line 2159
    .line 2160
    .line 2161
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2162
    .line 2163
    .line 2164
    move-result v9

    .line 2165
    if-eqz v9, :cond_9

    .line 2166
    .line 2167
    const/16 v9, 0x7a

    .line 2168
    .line 2169
    goto/16 :goto_2

    .line 2170
    .line 2171
    :sswitch_a0
    const-string v9, "disableModes"

    .line 2172
    .line 2173
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2174
    .line 2175
    .line 2176
    move-result v9

    .line 2177
    if-eqz v9, :cond_9

    .line 2178
    .line 2179
    const/16 v9, 0xa2

    .line 2180
    .line 2181
    goto/16 :goto_2

    .line 2182
    .line 2183
    :sswitch_a1
    const-string/jumbo v9, "top_level_sounds_upsm"

    .line 2184
    .line 2185
    .line 2186
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2187
    .line 2188
    .line 2189
    move-result v9

    .line 2190
    if-eqz v9, :cond_9

    .line 2191
    .line 2192
    const/16 v9, 0x4f

    .line 2193
    .line 2194
    goto/16 :goto_2

    .line 2195
    .line 2196
    :sswitch_a2
    const-string/jumbo v9, "set_visibility"

    .line 2197
    .line 2198
    .line 2199
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2200
    .line 2201
    .line 2202
    move-result v9

    .line 2203
    if-eqz v9, :cond_9

    .line 2204
    .line 2205
    const/16 v9, 0x20

    .line 2206
    .line 2207
    goto/16 :goto_2

    .line 2208
    .line 2209
    :sswitch_a3
    const-string/jumbo v9, "outdoor_mode"

    .line 2210
    .line 2211
    .line 2212
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2213
    .line 2214
    .line 2215
    move-result v9

    .line 2216
    if-eqz v9, :cond_9

    .line 2217
    .line 2218
    const/16 v9, 0x13

    .line 2219
    .line 2220
    goto/16 :goto_2

    .line 2221
    .line 2222
    :sswitch_a4
    const-string/jumbo v9, "tts_default_rate"

    .line 2223
    .line 2224
    .line 2225
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2226
    .line 2227
    .line 2228
    move-result v9

    .line 2229
    if-eqz v9, :cond_9

    .line 2230
    .line 2231
    const/16 v9, 0x3a

    .line 2232
    .line 2233
    goto/16 :goto_2

    .line 2234
    .line 2235
    :sswitch_a5
    const-string/jumbo v9, "top_level_bluetooth_upsm"

    .line 2236
    .line 2237
    .line 2238
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2239
    .line 2240
    .line 2241
    move-result v9

    .line 2242
    if-eqz v9, :cond_9

    .line 2243
    .line 2244
    const/16 v9, 0x4c

    .line 2245
    .line 2246
    goto/16 :goto_2

    .line 2247
    .line 2248
    :sswitch_a6
    const-string v9, "disableToolbarNetflix"

    .line 2249
    .line 2250
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2251
    .line 2252
    .line 2253
    move-result v9

    .line 2254
    if-eqz v9, :cond_9

    .line 2255
    .line 2256
    const/16 v9, 0xa6

    .line 2257
    .line 2258
    goto/16 :goto_2

    .line 2259
    .line 2260
    :sswitch_a7
    const-string/jumbo v9, "vibrate_on_touch"

    .line 2261
    .line 2262
    .line 2263
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2264
    .line 2265
    .line 2266
    move-result v9

    .line 2267
    if-eqz v9, :cond_9

    .line 2268
    .line 2269
    const/16 v9, 0x34

    .line 2270
    .line 2271
    goto/16 :goto_2

    .line 2272
    .line 2273
    :sswitch_a8
    const-string v9, "dex_disable_file_copy_from_pc"

    .line 2274
    .line 2275
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2276
    .line 2277
    .line 2278
    move-result v9

    .line 2279
    if-eqz v9, :cond_9

    .line 2280
    .line 2281
    const/16 v9, 0xce

    .line 2282
    .line 2283
    goto/16 :goto_2

    .line 2284
    .line 2285
    :sswitch_a9
    const-string v9, "android_beam_settings"

    .line 2286
    .line 2287
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2288
    .line 2289
    .line 2290
    move-result v9

    .line 2291
    if-eqz v9, :cond_9

    .line 2292
    .line 2293
    const/16 v9, 0x3b

    .line 2294
    .line 2295
    goto/16 :goto_2

    .line 2296
    .line 2297
    :sswitch_aa
    const-string v9, "current_input_method"

    .line 2298
    .line 2299
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2300
    .line 2301
    .line 2302
    move-result v9

    .line 2303
    if-eqz v9, :cond_9

    .line 2304
    .line 2305
    const/16 v9, 0x67

    .line 2306
    .line 2307
    goto/16 :goto_2

    .line 2308
    .line 2309
    :sswitch_ab
    const-string/jumbo v9, "palm_swipe_to_capture"

    .line 2310
    .line 2311
    .line 2312
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2313
    .line 2314
    .line 2315
    move-result v9

    .line 2316
    if-eqz v9, :cond_9

    .line 2317
    .line 2318
    const/4 v9, 0x1

    .line 2319
    goto/16 :goto_2

    .line 2320
    .line 2321
    :sswitch_ac
    const-string v9, "long_press_power_off"

    .line 2322
    .line 2323
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2324
    .line 2325
    .line 2326
    move-result v9

    .line 2327
    if-eqz v9, :cond_9

    .line 2328
    .line 2329
    const/16 v9, 0x64

    .line 2330
    .line 2331
    goto/16 :goto_2

    .line 2332
    .line 2333
    :sswitch_ad
    const-string/jumbo v9, "telephonyui_simcard_manager_more_settings_preference"

    .line 2334
    .line 2335
    .line 2336
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2337
    .line 2338
    .line 2339
    move-result v9

    .line 2340
    if-eqz v9, :cond_9

    .line 2341
    .line 2342
    const/16 v9, 0xc0

    .line 2343
    .line 2344
    goto/16 :goto_2

    .line 2345
    .line 2346
    :sswitch_ae
    const-string v9, "disableLiveMessage"

    .line 2347
    .line 2348
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2349
    .line 2350
    .line 2351
    move-result v9

    .line 2352
    if-eqz v9, :cond_9

    .line 2353
    .line 2354
    const/16 v9, 0x9f

    .line 2355
    .line 2356
    goto/16 :goto_2

    .line 2357
    .line 2358
    :sswitch_af
    const-string v9, "blue_light_filter_auto_schedule"

    .line 2359
    .line 2360
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2361
    .line 2362
    .line 2363
    move-result v9

    .line 2364
    if-eqz v9, :cond_9

    .line 2365
    .line 2366
    const/16 v9, 0x3f

    .line 2367
    .line 2368
    goto/16 :goto_2

    .line 2369
    .line 2370
    :sswitch_b0
    const-string v9, "gesture_preview"

    .line 2371
    .line 2372
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2373
    .line 2374
    .line 2375
    move-result v9

    .line 2376
    if-eqz v9, :cond_9

    .line 2377
    .line 2378
    const/16 v9, 0x73

    .line 2379
    .line 2380
    goto/16 :goto_2

    .line 2381
    .line 2382
    :sswitch_b1
    const-string/jumbo v9, "xcover_key_settings"

    .line 2383
    .line 2384
    .line 2385
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2386
    .line 2387
    .line 2388
    move-result v9

    .line 2389
    if-eqz v9, :cond_9

    .line 2390
    .line 2391
    const/16 v9, 0x5e

    .line 2392
    .line 2393
    goto/16 :goto_2

    .line 2394
    .line 2395
    :sswitch_b2
    const-string/jumbo v9, "mobile_network_settings"

    .line 2396
    .line 2397
    .line 2398
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2399
    .line 2400
    .line 2401
    move-result v9

    .line 2402
    if-eqz v9, :cond_9

    .line 2403
    .line 2404
    const/16 v9, 0x8a

    .line 2405
    .line 2406
    goto/16 :goto_2

    .line 2407
    .line 2408
    :sswitch_b3
    const-string/jumbo v9, "show_password"

    .line 2409
    .line 2410
    .line 2411
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2412
    .line 2413
    .line 2414
    move-result v9

    .line 2415
    if-eqz v9, :cond_9

    .line 2416
    .line 2417
    const/16 v9, 0x2a

    .line 2418
    .line 2419
    goto/16 :goto_2

    .line 2420
    .line 2421
    :sswitch_b4
    const-string v9, "active_key_on_lockscreen_key"

    .line 2422
    .line 2423
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2424
    .line 2425
    .line 2426
    move-result v9

    .line 2427
    if-eqz v9, :cond_9

    .line 2428
    .line 2429
    const/16 v9, 0x56

    .line 2430
    .line 2431
    goto/16 :goto_2

    .line 2432
    .line 2433
    :sswitch_b5
    const-string/jumbo v9, "sec_font_style"

    .line 2434
    .line 2435
    .line 2436
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2437
    .line 2438
    .line 2439
    move-result v9

    .line 2440
    if-eqz v9, :cond_9

    .line 2441
    .line 2442
    const/16 v9, 0x17

    .line 2443
    .line 2444
    goto/16 :goto_2

    .line 2445
    .line 2446
    :sswitch_b6
    const-string v9, "double_tab_to_wake_up"

    .line 2447
    .line 2448
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2449
    .line 2450
    .line 2451
    move-result v9

    .line 2452
    if-eqz v9, :cond_9

    .line 2453
    .line 2454
    const/16 v9, 0x8f

    .line 2455
    .line 2456
    goto/16 :goto_2

    .line 2457
    .line 2458
    :sswitch_b7
    const-string/jumbo v9, "noti_view_style"

    .line 2459
    .line 2460
    .line 2461
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2462
    .line 2463
    .line 2464
    move-result v9

    .line 2465
    if-eqz v9, :cond_9

    .line 2466
    .line 2467
    const/16 v9, 0x21

    .line 2468
    .line 2469
    goto/16 :goto_2

    .line 2470
    .line 2471
    :sswitch_b8
    const-string/jumbo v9, "sendBroadcast"

    .line 2472
    .line 2473
    .line 2474
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2475
    .line 2476
    .line 2477
    move-result v9

    .line 2478
    if-eqz v9, :cond_9

    .line 2479
    .line 2480
    const/16 v9, 0xd0

    .line 2481
    .line 2482
    goto/16 :goto_2

    .line 2483
    .line 2484
    :sswitch_b9
    const-string v9, "dashboard_tile_pref_com.android.settings.Settings$DevelopmentSettingsDashboardActivity"

    .line 2485
    .line 2486
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2487
    .line 2488
    .line 2489
    move-result v9

    .line 2490
    if-eqz v9, :cond_9

    .line 2491
    .line 2492
    const/16 v9, 0x7c

    .line 2493
    .line 2494
    goto/16 :goto_2

    .line 2495
    .line 2496
    :sswitch_ba
    const-string/jumbo v9, "top_level_airplane_mode_upsm"

    .line 2497
    .line 2498
    .line 2499
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2500
    .line 2501
    .line 2502
    move-result v9

    .line 2503
    if-eqz v9, :cond_9

    .line 2504
    .line 2505
    const/16 v9, 0x4d

    .line 2506
    .line 2507
    goto/16 :goto_2

    .line 2508
    .line 2509
    :sswitch_bb
    const-string v9, "key_notification_icons_on_status_bar"

    .line 2510
    .line 2511
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2512
    .line 2513
    .line 2514
    move-result v9

    .line 2515
    if-eqz v9, :cond_9

    .line 2516
    .line 2517
    const/16 v9, 0x68

    .line 2518
    .line 2519
    goto/16 :goto_2

    .line 2520
    .line 2521
    :sswitch_bc
    const-string/jumbo v9, "notification_sound"

    .line 2522
    .line 2523
    .line 2524
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2525
    .line 2526
    .line 2527
    move-result v9

    .line 2528
    if-eqz v9, :cond_9

    .line 2529
    .line 2530
    const/16 v9, 0x47

    .line 2531
    .line 2532
    goto/16 :goto_2

    .line 2533
    .line 2534
    :sswitch_bd
    const-string/jumbo v9, "telephonyui_domestic_roaming_voice_text"

    .line 2535
    .line 2536
    .line 2537
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2538
    .line 2539
    .line 2540
    move-result v9

    .line 2541
    if-eqz v9, :cond_9

    .line 2542
    .line 2543
    const/16 v9, 0xb3

    .line 2544
    .line 2545
    goto/16 :goto_2

    .line 2546
    .line 2547
    :sswitch_be
    const-string/jumbo v9, "touch_sounds"

    .line 2548
    .line 2549
    .line 2550
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2551
    .line 2552
    .line 2553
    move-result v9

    .line 2554
    if-eqz v9, :cond_9

    .line 2555
    .line 2556
    const/16 v9, 0x32

    .line 2557
    .line 2558
    goto/16 :goto_2

    .line 2559
    .line 2560
    :sswitch_bf
    const-string/jumbo v9, "startActivity"

    .line 2561
    .line 2562
    .line 2563
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2564
    .line 2565
    .line 2566
    move-result v9

    .line 2567
    if-eqz v9, :cond_9

    .line 2568
    .line 2569
    const/16 v9, 0xcf

    .line 2570
    .line 2571
    goto/16 :goto_2

    .line 2572
    .line 2573
    :sswitch_c0
    const-string v9, "external_storage_transfer"

    .line 2574
    .line 2575
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2576
    .line 2577
    .line 2578
    move-result v9

    .line 2579
    if-eqz v9, :cond_9

    .line 2580
    .line 2581
    const/16 v9, 0x84

    .line 2582
    .line 2583
    goto/16 :goto_2

    .line 2584
    .line 2585
    :sswitch_c1
    const-string/jumbo v9, "private_dns_settings"

    .line 2586
    .line 2587
    .line 2588
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2589
    .line 2590
    .line 2591
    move-result v9

    .line 2592
    if-eqz v9, :cond_9

    .line 2593
    .line 2594
    const/16 v9, 0x94

    .line 2595
    .line 2596
    goto/16 :goto_2

    .line 2597
    .line 2598
    :sswitch_c2
    const-string v9, "domestic_roaming_voice_text"

    .line 2599
    .line 2600
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2601
    .line 2602
    .line 2603
    move-result v9

    .line 2604
    if-eqz v9, :cond_9

    .line 2605
    .line 2606
    const/16 v9, 0xad

    .line 2607
    .line 2608
    goto/16 :goto_2

    .line 2609
    .line 2610
    :sswitch_c3
    const-string v9, "facewidget_where_to_show"

    .line 2611
    .line 2612
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2613
    .line 2614
    .line 2615
    move-result v9

    .line 2616
    if-eqz v9, :cond_9

    .line 2617
    .line 2618
    const/16 v9, 0x1f

    .line 2619
    .line 2620
    goto/16 :goto_2

    .line 2621
    .line 2622
    :sswitch_c4
    const-string v9, "adaptive_brightness_no_ls"

    .line 2623
    .line 2624
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2625
    .line 2626
    .line 2627
    move-result v9

    .line 2628
    if-eqz v9, :cond_9

    .line 2629
    .line 2630
    const/16 v9, 0x12

    .line 2631
    .line 2632
    goto/16 :goto_2

    .line 2633
    .line 2634
    :sswitch_c5
    const-string v9, "disableToolbarMelon"

    .line 2635
    .line 2636
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2637
    .line 2638
    .line 2639
    move-result v9

    .line 2640
    if-eqz v9, :cond_9

    .line 2641
    .line 2642
    const/16 v9, 0xa7

    .line 2643
    .line 2644
    goto/16 :goto_2

    .line 2645
    .line 2646
    :sswitch_c6
    const-string/jumbo v9, "telephonyui_access_point_names_menu"

    .line 2647
    .line 2648
    .line 2649
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2650
    .line 2651
    .line 2652
    move-result v9

    .line 2653
    if-eqz v9, :cond_9

    .line 2654
    .line 2655
    const/16 v9, 0xb6

    .line 2656
    .line 2657
    goto/16 :goto_2

    .line 2658
    .line 2659
    :sswitch_c7
    const-string/jumbo v9, "top_level_accessibility"

    .line 2660
    .line 2661
    .line 2662
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2663
    .line 2664
    .line 2665
    move-result v9

    .line 2666
    if-eqz v9, :cond_9

    .line 2667
    .line 2668
    const/16 v9, 0x51

    .line 2669
    .line 2670
    goto/16 :goto_2

    .line 2671
    .line 2672
    :sswitch_c8
    const-string/jumbo v9, "notification_icons_only"

    .line 2673
    .line 2674
    .line 2675
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2676
    .line 2677
    .line 2678
    move-result v9

    .line 2679
    if-eqz v9, :cond_9

    .line 2680
    .line 2681
    const/16 v9, 0x69

    .line 2682
    .line 2683
    goto :goto_2

    .line 2684
    :sswitch_c9
    const-string/jumbo v9, "show_battery_percent"

    .line 2685
    .line 2686
    .line 2687
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2688
    .line 2689
    .line 2690
    move-result v9

    .line 2691
    if-eqz v9, :cond_9

    .line 2692
    .line 2693
    const/16 v9, 0x28

    .line 2694
    .line 2695
    goto :goto_2

    .line 2696
    :sswitch_ca
    const-string/jumbo v9, "onehand_operation_settings"

    .line 2697
    .line 2698
    .line 2699
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2700
    .line 2701
    .line 2702
    move-result v9

    .line 2703
    if-eqz v9, :cond_9

    .line 2704
    .line 2705
    const/16 v9, 0x75

    .line 2706
    .line 2707
    goto :goto_2

    .line 2708
    :sswitch_cb
    const-string v9, "accessibility_advanced_settings"

    .line 2709
    .line 2710
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2711
    .line 2712
    .line 2713
    move-result v9

    .line 2714
    if-eqz v9, :cond_9

    .line 2715
    .line 2716
    const/16 v9, 0xa8

    .line 2717
    .line 2718
    goto :goto_2

    .line 2719
    :sswitch_cc
    const-string v9, "disableEmoticonInput"

    .line 2720
    .line 2721
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2722
    .line 2723
    .line 2724
    move-result v9

    .line 2725
    if-eqz v9, :cond_9

    .line 2726
    .line 2727
    const/16 v9, 0x9b

    .line 2728
    .line 2729
    goto :goto_2

    .line 2730
    :sswitch_cd
    const-string/jumbo v9, "sec_screen_size"

    .line 2731
    .line 2732
    .line 2733
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2734
    .line 2735
    .line 2736
    move-result v9

    .line 2737
    if-eqz v9, :cond_9

    .line 2738
    .line 2739
    const/16 v9, 0x19

    .line 2740
    .line 2741
    goto :goto_2

    .line 2742
    :sswitch_ce
    const-string/jumbo v9, "verizon_data_on_off"

    .line 2743
    .line 2744
    .line 2745
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2746
    .line 2747
    .line 2748
    move-result v9

    .line 2749
    if-eqz v9, :cond_9

    .line 2750
    .line 2751
    const/16 v9, 0xac

    .line 2752
    .line 2753
    goto :goto_2

    .line 2754
    :sswitch_cf
    const-string v9, "keyboard_vibration"

    .line 2755
    .line 2756
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2757
    .line 2758
    .line 2759
    move-result v9

    .line 2760
    if-eqz v9, :cond_9

    .line 2761
    .line 2762
    const/16 v9, 0x2e

    .line 2763
    .line 2764
    goto :goto_2

    .line 2765
    :sswitch_d0
    const-string/jumbo v9, "screen_locking_sounds"

    .line 2766
    .line 2767
    .line 2768
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2769
    .line 2770
    .line 2771
    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2772
    if-eqz v9, :cond_9

    .line 2773
    .line 2774
    const/16 v9, 0x31

    .line 2775
    .line 2776
    goto :goto_2

    .line 2777
    :cond_9
    :goto_1
    const/4 v9, -0x1

    .line 2778
    :goto_2
    const-string v10, "0"

    .line 2779
    .line 2780
    const-string v11, "1"

    .line 2781
    .line 2782
    if-eqz v9, :cond_25

    .line 2783
    .line 2784
    const/4 v12, 0x1

    .line 2785
    if-eq v9, v12, :cond_24

    .line 2786
    .line 2787
    const/4 v12, 0x2

    .line 2788
    if-eq v9, v12, :cond_23

    .line 2789
    .line 2790
    const/4 v12, 0x3

    .line 2791
    if-eq v9, v12, :cond_22

    .line 2792
    .line 2793
    if-eq v9, v1, :cond_21

    .line 2794
    .line 2795
    const/4 v12, 0x5

    .line 2796
    if-eq v9, v12, :cond_20

    .line 2797
    .line 2798
    const-string v12, "3"

    .line 2799
    .line 2800
    const-string v13, "2"

    .line 2801
    .line 2802
    const/4 v14, 0x6

    .line 2803
    if-eq v9, v14, :cond_1f

    .line 2804
    .line 2805
    const/4 v14, 0x7

    .line 2806
    if-eq v9, v14, :cond_1e

    .line 2807
    .line 2808
    const/16 v14, 0x36

    .line 2809
    .line 2810
    if-eq v9, v14, :cond_1d

    .line 2811
    .line 2812
    const/16 v14, 0x37

    .line 2813
    .line 2814
    if-eq v9, v14, :cond_1c

    .line 2815
    .line 2816
    const/16 v14, 0x39

    .line 2817
    .line 2818
    if-eq v9, v14, :cond_1a

    .line 2819
    .line 2820
    const/16 v14, 0x3a

    .line 2821
    .line 2822
    if-eq v9, v14, :cond_18

    .line 2823
    .line 2824
    const/16 v14, 0x49

    .line 2825
    .line 2826
    if-eq v9, v14, :cond_17

    .line 2827
    .line 2828
    const/16 v14, 0x4a

    .line 2829
    .line 2830
    if-eq v9, v14, :cond_16

    .line 2831
    .line 2832
    const/16 v14, 0x68

    .line 2833
    .line 2834
    if-eq v9, v14, :cond_15

    .line 2835
    .line 2836
    const/16 v14, 0x69

    .line 2837
    .line 2838
    if-eq v9, v14, :cond_14

    .line 2839
    .line 2840
    const/16 v14, 0x72

    .line 2841
    .line 2842
    if-eq v9, v14, :cond_13

    .line 2843
    .line 2844
    const/16 v14, 0x73

    .line 2845
    .line 2846
    if-eq v9, v14, :cond_12

    .line 2847
    .line 2848
    const-string v14, "false"

    .line 2849
    .line 2850
    const-string/jumbo v1, "true"

    .line 2851
    .line 2852
    .line 2853
    sparse-switch v9, :sswitch_data_1

    .line 2854
    .line 2855
    .line 2856
    packed-switch v9, :pswitch_data_0

    .line 2857
    .line 2858
    .line 2859
    packed-switch v9, :pswitch_data_1

    .line 2860
    .line 2861
    .line 2862
    packed-switch v9, :pswitch_data_2

    .line 2863
    .line 2864
    .line 2865
    packed-switch v9, :pswitch_data_3

    .line 2866
    .line 2867
    .line 2868
    goto/16 :goto_8

    .line 2869
    .line 2870
    :pswitch_0
    :try_start_1
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2871
    .line 2872
    .line 2873
    move-result v1

    .line 2874
    if-nez v1, :cond_26

    .line 2875
    .line 2876
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2877
    .line 2878
    .line 2879
    move-result v1

    .line 2880
    if-nez v1, :cond_26

    .line 2881
    .line 2882
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2883
    .line 2884
    .line 2885
    move-result v1

    .line 2886
    if-nez v1, :cond_26

    .line 2887
    .line 2888
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 2889
    .line 2890
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2891
    .line 2892
    .line 2893
    goto/16 :goto_8

    .line 2894
    .line 2895
    :pswitch_1
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2896
    .line 2897
    .line 2898
    move-result v1

    .line 2899
    if-nez v1, :cond_26

    .line 2900
    .line 2901
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2902
    .line 2903
    .line 2904
    move-result v1

    .line 2905
    if-nez v1, :cond_26

    .line 2906
    .line 2907
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 2908
    .line 2909
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2910
    .line 2911
    .line 2912
    goto/16 :goto_8

    .line 2913
    .line 2914
    :pswitch_2
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2915
    .line 2916
    .line 2917
    move-result v1

    .line 2918
    if-nez v1, :cond_26

    .line 2919
    .line 2920
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2921
    .line 2922
    .line 2923
    move-result v1

    .line 2924
    if-nez v1, :cond_26

    .line 2925
    .line 2926
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 2927
    .line 2928
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2929
    .line 2930
    .line 2931
    goto/16 :goto_8

    .line 2932
    .line 2933
    :pswitch_3
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    .line 2934
    .line 2935
    .line 2936
    move-result v1

    .line 2937
    if-nez v1, :cond_a

    .line 2938
    .line 2939
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NOT_SUPPORTED:I

    .line 2940
    .line 2941
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2942
    .line 2943
    .line 2944
    :cond_a
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2945
    .line 2946
    .line 2947
    move-result v1

    .line 2948
    if-nez v1, :cond_26

    .line 2949
    .line 2950
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2951
    .line 2952
    .line 2953
    move-result v1

    .line 2954
    if-nez v1, :cond_26

    .line 2955
    .line 2956
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 2957
    .line 2958
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2959
    .line 2960
    .line 2961
    goto/16 :goto_8

    .line 2962
    .line 2963
    :pswitch_4
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2964
    .line 2965
    .line 2966
    move-result v1

    .line 2967
    if-nez v1, :cond_26

    .line 2968
    .line 2969
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2970
    .line 2971
    .line 2972
    move-result v1

    .line 2973
    if-nez v1, :cond_26

    .line 2974
    .line 2975
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 2976
    .line 2977
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2978
    .line 2979
    .line 2980
    goto/16 :goto_8

    .line 2981
    .line 2982
    :pswitch_5
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2983
    .line 2984
    .line 2985
    move-result v1

    .line 2986
    if-nez v1, :cond_26

    .line 2987
    .line 2988
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2989
    .line 2990
    .line 2991
    move-result v1

    .line 2992
    if-nez v1, :cond_26

    .line 2993
    .line 2994
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 2995
    .line 2996
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2997
    .line 2998
    .line 2999
    goto/16 :goto_8

    .line 3000
    .line 3001
    :pswitch_6
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3002
    .line 3003
    .line 3004
    move-result v1

    .line 3005
    if-nez v1, :cond_26

    .line 3006
    .line 3007
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3008
    .line 3009
    .line 3010
    move-result v1

    .line 3011
    if-nez v1, :cond_26

    .line 3012
    .line 3013
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3014
    .line 3015
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3016
    .line 3017
    .line 3018
    goto/16 :goto_8

    .line 3019
    .line 3020
    :pswitch_7
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3021
    .line 3022
    .line 3023
    move-result v1

    .line 3024
    if-nez v1, :cond_26

    .line 3025
    .line 3026
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3027
    .line 3028
    .line 3029
    move-result v1

    .line 3030
    if-nez v1, :cond_26

    .line 3031
    .line 3032
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3033
    .line 3034
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3035
    .line 3036
    .line 3037
    goto/16 :goto_8

    .line 3038
    .line 3039
    :pswitch_8
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3040
    .line 3041
    .line 3042
    move-result v1

    .line 3043
    if-nez v1, :cond_26

    .line 3044
    .line 3045
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3046
    .line 3047
    .line 3048
    move-result v1

    .line 3049
    if-nez v1, :cond_26

    .line 3050
    .line 3051
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3052
    .line 3053
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3054
    .line 3055
    .line 3056
    goto/16 :goto_8

    .line 3057
    .line 3058
    :pswitch_9
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3059
    .line 3060
    .line 3061
    move-result v1

    .line 3062
    if-nez v1, :cond_26

    .line 3063
    .line 3064
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3065
    .line 3066
    .line 3067
    move-result v1

    .line 3068
    if-nez v1, :cond_26

    .line 3069
    .line 3070
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3071
    .line 3072
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3073
    .line 3074
    .line 3075
    goto/16 :goto_8

    .line 3076
    .line 3077
    :pswitch_a
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3078
    .line 3079
    .line 3080
    move-result v1

    .line 3081
    if-nez v1, :cond_26

    .line 3082
    .line 3083
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3084
    .line 3085
    .line 3086
    move-result v1

    .line 3087
    if-nez v1, :cond_26

    .line 3088
    .line 3089
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3090
    .line 3091
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3092
    .line 3093
    .line 3094
    goto/16 :goto_8

    .line 3095
    .line 3096
    :pswitch_b
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3097
    .line 3098
    .line 3099
    move-result v1

    .line 3100
    if-nez v1, :cond_26

    .line 3101
    .line 3102
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3103
    .line 3104
    .line 3105
    move-result v1

    .line 3106
    if-nez v1, :cond_26

    .line 3107
    .line 3108
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3109
    .line 3110
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3111
    .line 3112
    .line 3113
    goto/16 :goto_8

    .line 3114
    .line 3115
    :pswitch_c
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3116
    .line 3117
    .line 3118
    move-result v1

    .line 3119
    if-nez v1, :cond_26

    .line 3120
    .line 3121
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3122
    .line 3123
    .line 3124
    move-result v1

    .line 3125
    if-nez v1, :cond_26

    .line 3126
    .line 3127
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3128
    .line 3129
    .line 3130
    move-result v1

    .line 3131
    if-nez v1, :cond_26

    .line 3132
    .line 3133
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3134
    .line 3135
    .line 3136
    move-result v1

    .line 3137
    if-nez v1, :cond_26

    .line 3138
    .line 3139
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3140
    .line 3141
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3142
    .line 3143
    .line 3144
    goto/16 :goto_8

    .line 3145
    .line 3146
    :pswitch_d
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3147
    .line 3148
    .line 3149
    move-result v1

    .line 3150
    if-nez v1, :cond_26

    .line 3151
    .line 3152
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3153
    .line 3154
    .line 3155
    move-result v1

    .line 3156
    if-nez v1, :cond_26

    .line 3157
    .line 3158
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3159
    .line 3160
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3161
    .line 3162
    .line 3163
    goto/16 :goto_8

    .line 3164
    .line 3165
    :pswitch_e
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3166
    .line 3167
    .line 3168
    move-result v1

    .line 3169
    if-nez v1, :cond_26

    .line 3170
    .line 3171
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3172
    .line 3173
    .line 3174
    move-result v1

    .line 3175
    if-nez v1, :cond_26

    .line 3176
    .line 3177
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3178
    .line 3179
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3180
    .line 3181
    .line 3182
    goto/16 :goto_8

    .line 3183
    .line 3184
    :pswitch_f
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3185
    .line 3186
    .line 3187
    move-result v1

    .line 3188
    if-nez v1, :cond_26

    .line 3189
    .line 3190
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3191
    .line 3192
    .line 3193
    move-result v1

    .line 3194
    if-nez v1, :cond_26

    .line 3195
    .line 3196
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3197
    .line 3198
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3199
    .line 3200
    .line 3201
    goto/16 :goto_8

    .line 3202
    .line 3203
    :pswitch_10
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3204
    .line 3205
    .line 3206
    move-result v1

    .line 3207
    if-nez v1, :cond_26

    .line 3208
    .line 3209
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3210
    .line 3211
    .line 3212
    move-result v1

    .line 3213
    if-nez v1, :cond_26

    .line 3214
    .line 3215
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3216
    .line 3217
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3218
    .line 3219
    .line 3220
    goto/16 :goto_8

    .line 3221
    .line 3222
    :pswitch_11
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3223
    .line 3224
    .line 3225
    move-result v1

    .line 3226
    if-nez v1, :cond_26

    .line 3227
    .line 3228
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3229
    .line 3230
    .line 3231
    move-result v1

    .line 3232
    if-nez v1, :cond_26

    .line 3233
    .line 3234
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3235
    .line 3236
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3237
    .line 3238
    .line 3239
    goto/16 :goto_8

    .line 3240
    .line 3241
    :pswitch_12
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 3242
    .line 3243
    .line 3244
    move-result v1

    .line 3245
    if-ltz v1, :cond_b

    .line 3246
    .line 3247
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 3248
    .line 3249
    .line 3250
    move-result v1

    .line 3251
    const/16 v7, 0x4b

    .line 3252
    .line 3253
    if-le v1, v7, :cond_26

    .line 3254
    .line 3255
    :cond_b
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3256
    .line 3257
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3258
    .line 3259
    .line 3260
    goto/16 :goto_8

    .line 3261
    .line 3262
    :pswitch_13
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3263
    .line 3264
    .line 3265
    move-result v1

    .line 3266
    if-nez v1, :cond_26

    .line 3267
    .line 3268
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3269
    .line 3270
    .line 3271
    move-result v1

    .line 3272
    if-nez v1, :cond_26

    .line 3273
    .line 3274
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3275
    .line 3276
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3277
    .line 3278
    .line 3279
    goto/16 :goto_8

    .line 3280
    .line 3281
    :pswitch_14
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3282
    .line 3283
    .line 3284
    move-result v1

    .line 3285
    if-nez v1, :cond_26

    .line 3286
    .line 3287
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3288
    .line 3289
    .line 3290
    move-result v1

    .line 3291
    if-nez v1, :cond_26

    .line 3292
    .line 3293
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3294
    .line 3295
    .line 3296
    move-result v1

    .line 3297
    if-nez v1, :cond_26

    .line 3298
    .line 3299
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3300
    .line 3301
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3302
    .line 3303
    .line 3304
    goto/16 :goto_8

    .line 3305
    .line 3306
    :pswitch_15
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3307
    .line 3308
    .line 3309
    move-result v1

    .line 3310
    if-nez v1, :cond_26

    .line 3311
    .line 3312
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3313
    .line 3314
    .line 3315
    move-result v1

    .line 3316
    if-nez v1, :cond_26

    .line 3317
    .line 3318
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3319
    .line 3320
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3321
    .line 3322
    .line 3323
    goto/16 :goto_8

    .line 3324
    .line 3325
    :pswitch_16
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3326
    .line 3327
    .line 3328
    move-result v1

    .line 3329
    if-nez v1, :cond_26

    .line 3330
    .line 3331
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3332
    .line 3333
    .line 3334
    move-result v1

    .line 3335
    if-nez v1, :cond_26

    .line 3336
    .line 3337
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3338
    .line 3339
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3340
    .line 3341
    .line 3342
    goto/16 :goto_8

    .line 3343
    .line 3344
    :pswitch_17
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3345
    .line 3346
    .line 3347
    move-result v1

    .line 3348
    if-nez v1, :cond_26

    .line 3349
    .line 3350
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3351
    .line 3352
    .line 3353
    move-result v1

    .line 3354
    if-nez v1, :cond_26

    .line 3355
    .line 3356
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3357
    .line 3358
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3359
    .line 3360
    .line 3361
    goto/16 :goto_8

    .line 3362
    .line 3363
    :pswitch_18
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3364
    .line 3365
    .line 3366
    move-result v1

    .line 3367
    if-nez v1, :cond_26

    .line 3368
    .line 3369
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3370
    .line 3371
    .line 3372
    move-result v1

    .line 3373
    if-nez v1, :cond_26

    .line 3374
    .line 3375
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3376
    .line 3377
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3378
    .line 3379
    .line 3380
    goto/16 :goto_8

    .line 3381
    .line 3382
    :pswitch_19
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 3383
    .line 3384
    .line 3385
    move-result v1

    .line 3386
    if-ltz v1, :cond_c

    .line 3387
    .line 3388
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 3389
    .line 3390
    .line 3391
    move-result v1

    .line 3392
    const/4 v7, 0x4

    .line 3393
    if-le v1, v7, :cond_26

    .line 3394
    .line 3395
    :cond_c
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3396
    .line 3397
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3398
    .line 3399
    .line 3400
    goto/16 :goto_8

    .line 3401
    .line 3402
    :sswitch_d1
    const-string v1, "UWQHD"

    .line 3403
    .line 3404
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3405
    .line 3406
    .line 3407
    move-result v1

    .line 3408
    if-nez v1, :cond_26

    .line 3409
    .line 3410
    const-string v1, "WQXGA"

    .line 3411
    .line 3412
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3413
    .line 3414
    .line 3415
    move-result v1

    .line 3416
    if-nez v1, :cond_26

    .line 3417
    .line 3418
    const-string v1, "WQHD"

    .line 3419
    .line 3420
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3421
    .line 3422
    .line 3423
    move-result v1

    .line 3424
    if-nez v1, :cond_26

    .line 3425
    .line 3426
    const-string v1, "UWFHD"

    .line 3427
    .line 3428
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3429
    .line 3430
    .line 3431
    move-result v1

    .line 3432
    if-nez v1, :cond_26

    .line 3433
    .line 3434
    const-string v1, "WUXGA"

    .line 3435
    .line 3436
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3437
    .line 3438
    .line 3439
    move-result v1

    .line 3440
    if-nez v1, :cond_26

    .line 3441
    .line 3442
    const-string v1, "FHD"

    .line 3443
    .line 3444
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3445
    .line 3446
    .line 3447
    move-result v1

    .line 3448
    if-nez v1, :cond_26

    .line 3449
    .line 3450
    const-string v1, "HD"

    .line 3451
    .line 3452
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3453
    .line 3454
    .line 3455
    move-result v1

    .line 3456
    if-nez v1, :cond_26

    .line 3457
    .line 3458
    const-string/jumbo v1, "null"

    .line 3459
    .line 3460
    .line 3461
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3462
    .line 3463
    .line 3464
    move-result v1

    .line 3465
    if-nez v1, :cond_26

    .line 3466
    .line 3467
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3468
    .line 3469
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3470
    .line 3471
    .line 3472
    goto/16 :goto_8

    .line 3473
    .line 3474
    :sswitch_d2
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3475
    .line 3476
    .line 3477
    move-result v1

    .line 3478
    if-nez v1, :cond_26

    .line 3479
    .line 3480
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3481
    .line 3482
    .line 3483
    move-result v1

    .line 3484
    if-nez v1, :cond_26

    .line 3485
    .line 3486
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3487
    .line 3488
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3489
    .line 3490
    .line 3491
    goto/16 :goto_8

    .line 3492
    .line 3493
    :sswitch_d3
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3494
    .line 3495
    .line 3496
    move-result v1

    .line 3497
    if-nez v1, :cond_26

    .line 3498
    .line 3499
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3500
    .line 3501
    .line 3502
    move-result v1

    .line 3503
    if-nez v1, :cond_26

    .line 3504
    .line 3505
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3506
    .line 3507
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3508
    .line 3509
    .line 3510
    goto/16 :goto_8

    .line 3511
    .line 3512
    :sswitch_d4
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3513
    .line 3514
    .line 3515
    move-result v1

    .line 3516
    if-nez v1, :cond_d

    .line 3517
    .line 3518
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3519
    .line 3520
    .line 3521
    move-result v1

    .line 3522
    if-nez v1, :cond_d

    .line 3523
    .line 3524
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3525
    .line 3526
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3527
    .line 3528
    .line 3529
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3530
    .line 3531
    .line 3532
    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3533
    :try_start_2
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 3534
    .line 3535
    .line 3536
    move-result v1

    .line 3537
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 3538
    .line 3539
    .line 3540
    move-result-object v9

    .line 3541
    const-string v10, "data_preferred_mode_during_calling"

    .line 3542
    .line 3543
    invoke-static {v9, v10, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3544
    .line 3545
    .line 3546
    :goto_3
    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 3547
    .line 3548
    .line 3549
    goto/16 :goto_8

    .line 3550
    .line 3551
    :catchall_0
    move-exception v0

    .line 3552
    move-object v1, v0

    .line 3553
    goto :goto_4

    .line 3554
    :catch_1
    move-exception v0

    .line 3555
    move-object v1, v0

    .line 3556
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    .line 3557
    .line 3558
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 3559
    .line 3560
    .line 3561
    const-string v10, "auto brightness level fail :  "

    .line 3562
    .line 3563
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3564
    .line 3565
    .line 3566
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3567
    .line 3568
    .line 3569
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3570
    .line 3571
    .line 3572
    move-result-object v1

    .line 3573
    invoke-static {v2, v1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3574
    .line 3575
    .line 3576
    goto :goto_3

    .line 3577
    :goto_4
    :try_start_5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3578
    .line 3579
    .line 3580
    throw v1

    .line 3581
    :sswitch_d5
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3582
    .line 3583
    .line 3584
    move-result v1

    .line 3585
    if-nez v1, :cond_26

    .line 3586
    .line 3587
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3588
    .line 3589
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3590
    .line 3591
    .line 3592
    goto/16 :goto_8

    .line 3593
    .line 3594
    :sswitch_d6
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3595
    .line 3596
    .line 3597
    move-result v1

    .line 3598
    if-nez v1, :cond_26

    .line 3599
    .line 3600
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3601
    .line 3602
    .line 3603
    move-result v1

    .line 3604
    if-nez v1, :cond_26

    .line 3605
    .line 3606
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3607
    .line 3608
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3609
    .line 3610
    .line 3611
    goto/16 :goto_8

    .line 3612
    .line 3613
    :sswitch_d7
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3614
    .line 3615
    .line 3616
    move-result v1

    .line 3617
    if-nez v1, :cond_26

    .line 3618
    .line 3619
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3620
    .line 3621
    .line 3622
    move-result v1

    .line 3623
    if-nez v1, :cond_26

    .line 3624
    .line 3625
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3626
    .line 3627
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3628
    .line 3629
    .line 3630
    goto/16 :goto_8

    .line 3631
    .line 3632
    :sswitch_d8
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3633
    .line 3634
    .line 3635
    move-result v1

    .line 3636
    if-nez v1, :cond_26

    .line 3637
    .line 3638
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3639
    .line 3640
    .line 3641
    move-result v1

    .line 3642
    if-nez v1, :cond_26

    .line 3643
    .line 3644
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3645
    .line 3646
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3647
    .line 3648
    .line 3649
    goto/16 :goto_8

    .line 3650
    .line 3651
    :sswitch_d9
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3652
    .line 3653
    .line 3654
    move-result v1

    .line 3655
    if-nez v1, :cond_26

    .line 3656
    .line 3657
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3658
    .line 3659
    .line 3660
    move-result v1

    .line 3661
    if-nez v1, :cond_26

    .line 3662
    .line 3663
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3664
    .line 3665
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3666
    .line 3667
    .line 3668
    goto/16 :goto_8

    .line 3669
    .line 3670
    :sswitch_da
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3671
    .line 3672
    .line 3673
    move-result v1

    .line 3674
    if-nez v1, :cond_26

    .line 3675
    .line 3676
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3677
    .line 3678
    .line 3679
    move-result v1

    .line 3680
    if-nez v1, :cond_26

    .line 3681
    .line 3682
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3683
    .line 3684
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3685
    .line 3686
    .line 3687
    goto/16 :goto_8

    .line 3688
    .line 3689
    :sswitch_db
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3690
    .line 3691
    .line 3692
    move-result v1

    .line 3693
    if-nez v1, :cond_26

    .line 3694
    .line 3695
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3696
    .line 3697
    .line 3698
    move-result v1

    .line 3699
    if-nez v1, :cond_26

    .line 3700
    .line 3701
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3702
    .line 3703
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3704
    .line 3705
    .line 3706
    goto/16 :goto_8

    .line 3707
    .line 3708
    :sswitch_dc
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3709
    .line 3710
    .line 3711
    move-result v1

    .line 3712
    if-nez v1, :cond_26

    .line 3713
    .line 3714
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3715
    .line 3716
    .line 3717
    move-result v1

    .line 3718
    if-nez v1, :cond_26

    .line 3719
    .line 3720
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3721
    .line 3722
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3723
    .line 3724
    .line 3725
    goto/16 :goto_8

    .line 3726
    .line 3727
    :sswitch_dd
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3728
    .line 3729
    .line 3730
    move-result v1

    .line 3731
    if-nez v1, :cond_26

    .line 3732
    .line 3733
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3734
    .line 3735
    .line 3736
    move-result v1

    .line 3737
    if-nez v1, :cond_26

    .line 3738
    .line 3739
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3740
    .line 3741
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3742
    .line 3743
    .line 3744
    goto/16 :goto_8

    .line 3745
    .line 3746
    :sswitch_de
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3747
    .line 3748
    .line 3749
    move-result v1

    .line 3750
    if-nez v1, :cond_26

    .line 3751
    .line 3752
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3753
    .line 3754
    .line 3755
    move-result v1

    .line 3756
    if-nez v1, :cond_26

    .line 3757
    .line 3758
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3759
    .line 3760
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3761
    .line 3762
    .line 3763
    goto/16 :goto_8

    .line 3764
    .line 3765
    :sswitch_df
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3766
    .line 3767
    .line 3768
    move-result v1

    .line 3769
    if-nez v1, :cond_26

    .line 3770
    .line 3771
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3772
    .line 3773
    .line 3774
    move-result v1

    .line 3775
    if-nez v1, :cond_26

    .line 3776
    .line 3777
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3778
    .line 3779
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3780
    .line 3781
    .line 3782
    goto/16 :goto_8

    .line 3783
    .line 3784
    :sswitch_e0
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3785
    .line 3786
    .line 3787
    move-result v1

    .line 3788
    if-nez v1, :cond_26

    .line 3789
    .line 3790
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3791
    .line 3792
    .line 3793
    move-result v1

    .line 3794
    if-nez v1, :cond_26

    .line 3795
    .line 3796
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3797
    .line 3798
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3799
    .line 3800
    .line 3801
    goto/16 :goto_8

    .line 3802
    .line 3803
    :sswitch_e1
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3804
    .line 3805
    .line 3806
    move-result v1

    .line 3807
    if-nez v1, :cond_26

    .line 3808
    .line 3809
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3810
    .line 3811
    .line 3812
    move-result v1

    .line 3813
    if-nez v1, :cond_26

    .line 3814
    .line 3815
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3816
    .line 3817
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3818
    .line 3819
    .line 3820
    goto/16 :goto_8

    .line 3821
    .line 3822
    :sswitch_e2
    const-string/jumbo v1, "off"

    .line 3823
    .line 3824
    .line 3825
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3826
    .line 3827
    .line 3828
    move-result v1

    .line 3829
    if-nez v1, :cond_26

    .line 3830
    .line 3831
    const-string v1, "hostname"

    .line 3832
    .line 3833
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3834
    .line 3835
    .line 3836
    move-result v1

    .line 3837
    if-nez v1, :cond_26

    .line 3838
    .line 3839
    const-string/jumbo v1, "opportunistic"

    .line 3840
    .line 3841
    .line 3842
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3843
    .line 3844
    .line 3845
    move-result v1

    .line 3846
    if-nez v1, :cond_26

    .line 3847
    .line 3848
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3849
    .line 3850
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3851
    .line 3852
    .line 3853
    goto/16 :goto_8

    .line 3854
    .line 3855
    :sswitch_e3
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->supportTaskBar(Landroid/content/Context;)Z

    .line 3856
    .line 3857
    .line 3858
    move-result v1

    .line 3859
    if-nez v1, :cond_e

    .line 3860
    .line 3861
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NOT_SUPPORTED:I

    .line 3862
    .line 3863
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3864
    .line 3865
    .line 3866
    :cond_e
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3867
    .line 3868
    .line 3869
    move-result v1

    .line 3870
    if-nez v1, :cond_26

    .line 3871
    .line 3872
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3873
    .line 3874
    .line 3875
    move-result v1

    .line 3876
    if-nez v1, :cond_26

    .line 3877
    .line 3878
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3879
    .line 3880
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3881
    .line 3882
    .line 3883
    goto/16 :goto_8

    .line 3884
    .line 3885
    :sswitch_e4
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3886
    .line 3887
    .line 3888
    move-result v1

    .line 3889
    if-nez v1, :cond_26

    .line 3890
    .line 3891
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3892
    .line 3893
    .line 3894
    move-result v1

    .line 3895
    if-nez v1, :cond_26

    .line 3896
    .line 3897
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3898
    .line 3899
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3900
    .line 3901
    .line 3902
    goto/16 :goto_8

    .line 3903
    .line 3904
    :sswitch_e5
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3905
    .line 3906
    .line 3907
    move-result v1

    .line 3908
    if-nez v1, :cond_26

    .line 3909
    .line 3910
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3911
    .line 3912
    .line 3913
    move-result v1

    .line 3914
    if-nez v1, :cond_26

    .line 3915
    .line 3916
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3917
    .line 3918
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3919
    .line 3920
    .line 3921
    goto/16 :goto_8

    .line 3922
    .line 3923
    :sswitch_e6
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3924
    .line 3925
    .line 3926
    move-result v1

    .line 3927
    if-nez v1, :cond_26

    .line 3928
    .line 3929
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3930
    .line 3931
    .line 3932
    move-result v1

    .line 3933
    if-nez v1, :cond_26

    .line 3934
    .line 3935
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3936
    .line 3937
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3938
    .line 3939
    .line 3940
    goto/16 :goto_8

    .line 3941
    .line 3942
    :sswitch_e7
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3943
    .line 3944
    .line 3945
    move-result v1

    .line 3946
    if-nez v1, :cond_26

    .line 3947
    .line 3948
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3949
    .line 3950
    .line 3951
    move-result v1

    .line 3952
    if-nez v1, :cond_26

    .line 3953
    .line 3954
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3955
    .line 3956
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3957
    .line 3958
    .line 3959
    goto/16 :goto_8

    .line 3960
    .line 3961
    :sswitch_e8
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3962
    .line 3963
    .line 3964
    move-result v1

    .line 3965
    if-nez v1, :cond_26

    .line 3966
    .line 3967
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3968
    .line 3969
    .line 3970
    move-result v1

    .line 3971
    if-nez v1, :cond_26

    .line 3972
    .line 3973
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3974
    .line 3975
    .line 3976
    move-result v1

    .line 3977
    if-nez v1, :cond_26

    .line 3978
    .line 3979
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3980
    .line 3981
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3982
    .line 3983
    .line 3984
    goto/16 :goto_8

    .line 3985
    .line 3986
    :sswitch_e9
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3987
    .line 3988
    .line 3989
    move-result v1

    .line 3990
    if-nez v1, :cond_26

    .line 3991
    .line 3992
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3993
    .line 3994
    .line 3995
    move-result v1

    .line 3996
    if-nez v1, :cond_26

    .line 3997
    .line 3998
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 3999
    .line 4000
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4001
    .line 4002
    .line 4003
    goto/16 :goto_8

    .line 4004
    .line 4005
    :sswitch_ea
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4006
    .line 4007
    .line 4008
    move-result v1

    .line 4009
    if-nez v1, :cond_26

    .line 4010
    .line 4011
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4012
    .line 4013
    .line 4014
    move-result v1

    .line 4015
    if-nez v1, :cond_26

    .line 4016
    .line 4017
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4018
    .line 4019
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4020
    .line 4021
    .line 4022
    goto/16 :goto_8

    .line 4023
    .line 4024
    :sswitch_eb
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4025
    .line 4026
    .line 4027
    move-result v1

    .line 4028
    if-nez v1, :cond_26

    .line 4029
    .line 4030
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4031
    .line 4032
    .line 4033
    move-result v1

    .line 4034
    if-nez v1, :cond_26

    .line 4035
    .line 4036
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4037
    .line 4038
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4039
    .line 4040
    .line 4041
    goto/16 :goto_8

    .line 4042
    .line 4043
    :sswitch_ec
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4044
    .line 4045
    .line 4046
    move-result v1

    .line 4047
    if-nez v1, :cond_26

    .line 4048
    .line 4049
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4050
    .line 4051
    .line 4052
    move-result v1

    .line 4053
    if-nez v1, :cond_26

    .line 4054
    .line 4055
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4056
    .line 4057
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4058
    .line 4059
    .line 4060
    goto/16 :goto_8

    .line 4061
    .line 4062
    :sswitch_ed
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4063
    .line 4064
    .line 4065
    move-result v1

    .line 4066
    if-nez v1, :cond_26

    .line 4067
    .line 4068
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4069
    .line 4070
    .line 4071
    move-result v1

    .line 4072
    if-nez v1, :cond_26

    .line 4073
    .line 4074
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4075
    .line 4076
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4077
    .line 4078
    .line 4079
    goto/16 :goto_8

    .line 4080
    .line 4081
    :sswitch_ee
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4082
    .line 4083
    .line 4084
    move-result v1

    .line 4085
    if-nez v1, :cond_26

    .line 4086
    .line 4087
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4088
    .line 4089
    .line 4090
    move-result v1

    .line 4091
    if-nez v1, :cond_26

    .line 4092
    .line 4093
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4094
    .line 4095
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4096
    .line 4097
    .line 4098
    goto/16 :goto_8

    .line 4099
    .line 4100
    :sswitch_ef
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4101
    .line 4102
    .line 4103
    move-result v1

    .line 4104
    if-nez v1, :cond_26

    .line 4105
    .line 4106
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4107
    .line 4108
    .line 4109
    move-result v1

    .line 4110
    if-nez v1, :cond_26

    .line 4111
    .line 4112
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4113
    .line 4114
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4115
    .line 4116
    .line 4117
    goto/16 :goto_8

    .line 4118
    .line 4119
    :sswitch_f0
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4120
    .line 4121
    .line 4122
    move-result v1

    .line 4123
    if-nez v1, :cond_26

    .line 4124
    .line 4125
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4126
    .line 4127
    .line 4128
    move-result v1

    .line 4129
    if-nez v1, :cond_26

    .line 4130
    .line 4131
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4132
    .line 4133
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4134
    .line 4135
    .line 4136
    goto/16 :goto_8

    .line 4137
    .line 4138
    :sswitch_f1
    const-string v1, "7"

    .line 4139
    .line 4140
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4141
    .line 4142
    .line 4143
    move-result v1

    .line 4144
    if-nez v1, :cond_26

    .line 4145
    .line 4146
    const-string v1, "6"

    .line 4147
    .line 4148
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4149
    .line 4150
    .line 4151
    move-result v1

    .line 4152
    if-nez v1, :cond_26

    .line 4153
    .line 4154
    const-string v1, "5"

    .line 4155
    .line 4156
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4157
    .line 4158
    .line 4159
    move-result v1

    .line 4160
    if-nez v1, :cond_26

    .line 4161
    .line 4162
    const-string v1, "4"

    .line 4163
    .line 4164
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4165
    .line 4166
    .line 4167
    move-result v1

    .line 4168
    if-nez v1, :cond_26

    .line 4169
    .line 4170
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4171
    .line 4172
    .line 4173
    move-result v1

    .line 4174
    if-nez v1, :cond_26

    .line 4175
    .line 4176
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4177
    .line 4178
    .line 4179
    move-result v1

    .line 4180
    if-nez v1, :cond_26

    .line 4181
    .line 4182
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4183
    .line 4184
    .line 4185
    move-result v1

    .line 4186
    if-nez v1, :cond_26

    .line 4187
    .line 4188
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4189
    .line 4190
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4191
    .line 4192
    .line 4193
    goto/16 :goto_8

    .line 4194
    .line 4195
    :sswitch_f2
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4196
    .line 4197
    .line 4198
    move-result v1

    .line 4199
    if-nez v1, :cond_26

    .line 4200
    .line 4201
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4202
    .line 4203
    .line 4204
    move-result v1

    .line 4205
    if-nez v1, :cond_26

    .line 4206
    .line 4207
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4208
    .line 4209
    .line 4210
    move-result v1

    .line 4211
    if-nez v1, :cond_26

    .line 4212
    .line 4213
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4214
    .line 4215
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4216
    .line 4217
    .line 4218
    goto/16 :goto_8

    .line 4219
    .line 4220
    :sswitch_f3
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4221
    .line 4222
    .line 4223
    move-result v1

    .line 4224
    if-nez v1, :cond_26

    .line 4225
    .line 4226
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4227
    .line 4228
    .line 4229
    move-result v1

    .line 4230
    if-nez v1, :cond_26

    .line 4231
    .line 4232
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4233
    .line 4234
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4235
    .line 4236
    .line 4237
    goto/16 :goto_8

    .line 4238
    .line 4239
    :sswitch_f4
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4240
    .line 4241
    .line 4242
    move-result v1

    .line 4243
    if-nez v1, :cond_26

    .line 4244
    .line 4245
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4246
    .line 4247
    .line 4248
    move-result v1

    .line 4249
    if-nez v1, :cond_26

    .line 4250
    .line 4251
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4252
    .line 4253
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4254
    .line 4255
    .line 4256
    goto/16 :goto_8

    .line 4257
    .line 4258
    :sswitch_f5
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4259
    .line 4260
    .line 4261
    move-result v1

    .line 4262
    if-nez v1, :cond_26

    .line 4263
    .line 4264
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4265
    .line 4266
    .line 4267
    move-result v1

    .line 4268
    if-nez v1, :cond_26

    .line 4269
    .line 4270
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4271
    .line 4272
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4273
    .line 4274
    .line 4275
    goto/16 :goto_8

    .line 4276
    .line 4277
    :sswitch_f6
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4278
    .line 4279
    .line 4280
    move-result v1

    .line 4281
    if-nez v1, :cond_26

    .line 4282
    .line 4283
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4284
    .line 4285
    .line 4286
    move-result v1

    .line 4287
    if-nez v1, :cond_26

    .line 4288
    .line 4289
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4290
    .line 4291
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4292
    .line 4293
    .line 4294
    goto/16 :goto_8

    .line 4295
    .line 4296
    :sswitch_f7
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->supportPocketMode(Landroid/content/Context;)Z

    .line 4297
    .line 4298
    .line 4299
    move-result v1

    .line 4300
    if-nez v1, :cond_f

    .line 4301
    .line 4302
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NOT_SUPPORTED:I

    .line 4303
    .line 4304
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4305
    .line 4306
    .line 4307
    :cond_f
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4308
    .line 4309
    .line 4310
    move-result v1

    .line 4311
    if-nez v1, :cond_26

    .line 4312
    .line 4313
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4314
    .line 4315
    .line 4316
    move-result v1

    .line 4317
    if-nez v1, :cond_26

    .line 4318
    .line 4319
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4320
    .line 4321
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4322
    .line 4323
    .line 4324
    goto/16 :goto_8

    .line 4325
    .line 4326
    :sswitch_f8
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4327
    .line 4328
    .line 4329
    move-result v1

    .line 4330
    if-nez v1, :cond_26

    .line 4331
    .line 4332
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4333
    .line 4334
    .line 4335
    move-result v1

    .line 4336
    if-nez v1, :cond_26

    .line 4337
    .line 4338
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4339
    .line 4340
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4341
    .line 4342
    .line 4343
    goto/16 :goto_8

    .line 4344
    .line 4345
    :sswitch_f9
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4346
    .line 4347
    .line 4348
    move-result v1

    .line 4349
    if-nez v1, :cond_26

    .line 4350
    .line 4351
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4352
    .line 4353
    .line 4354
    move-result v1

    .line 4355
    if-nez v1, :cond_26

    .line 4356
    .line 4357
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4358
    .line 4359
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4360
    .line 4361
    .line 4362
    goto/16 :goto_8

    .line 4363
    .line 4364
    :sswitch_fa
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4365
    .line 4366
    .line 4367
    move-result v1

    .line 4368
    if-nez v1, :cond_26

    .line 4369
    .line 4370
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4371
    .line 4372
    .line 4373
    move-result v1

    .line 4374
    if-nez v1, :cond_26

    .line 4375
    .line 4376
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4377
    .line 4378
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4379
    .line 4380
    .line 4381
    goto/16 :goto_8

    .line 4382
    .line 4383
    :sswitch_fb
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsValidator;->supportAutoBrightness(Landroid/content/Context;)Z

    .line 4384
    .line 4385
    .line 4386
    move-result v1

    .line 4387
    if-nez v1, :cond_10

    .line 4388
    .line 4389
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NOT_SUPPORTED:I

    .line 4390
    .line 4391
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4392
    .line 4393
    .line 4394
    :cond_10
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4395
    .line 4396
    .line 4397
    move-result v1

    .line 4398
    if-nez v1, :cond_11

    .line 4399
    .line 4400
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4401
    .line 4402
    .line 4403
    move-result v1

    .line 4404
    if-nez v1, :cond_11

    .line 4405
    .line 4406
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4407
    .line 4408
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4409
    .line 4410
    .line 4411
    :cond_11
    const-string v1, "level"

    .line 4412
    .line 4413
    invoke-virtual {v7, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 4414
    .line 4415
    .line 4416
    move-result v1

    .line 4417
    if-eqz v1, :cond_26

    .line 4418
    .line 4419
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4420
    .line 4421
    .line 4422
    move-result-wide v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 4423
    :try_start_6
    const-string v1, "level"

    .line 4424
    .line 4425
    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4426
    .line 4427
    .line 4428
    move-result-object v1

    .line 4429
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 4430
    .line 4431
    .line 4432
    move-result v1

    .line 4433
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4434
    .line 4435
    .line 4436
    move-result-object v6

    .line 4437
    const-string/jumbo v7, "screen_brightness"

    .line 4438
    .line 4439
    .line 4440
    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 4441
    .line 4442
    .line 4443
    :goto_5
    :try_start_7
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 4444
    .line 4445
    .line 4446
    goto/16 :goto_8

    .line 4447
    .line 4448
    :catchall_1
    move-exception v0

    .line 4449
    move-object v1, v0

    .line 4450
    goto :goto_6

    .line 4451
    :catch_2
    move-exception v0

    .line 4452
    move-object v1, v0

    .line 4453
    :try_start_8
    new-instance v6, Ljava/lang/StringBuilder;

    .line 4454
    .line 4455
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 4456
    .line 4457
    .line 4458
    const-string v7, "auto brightness level fail :  "

    .line 4459
    .line 4460
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4461
    .line 4462
    .line 4463
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4464
    .line 4465
    .line 4466
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4467
    .line 4468
    .line 4469
    move-result-object v1

    .line 4470
    invoke-static {v2, v1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 4471
    .line 4472
    .line 4473
    goto :goto_5

    .line 4474
    :goto_6
    :try_start_9
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4475
    .line 4476
    .line 4477
    throw v1

    .line 4478
    :sswitch_fc
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4479
    .line 4480
    .line 4481
    move-result v1

    .line 4482
    if-nez v1, :cond_26

    .line 4483
    .line 4484
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4485
    .line 4486
    .line 4487
    move-result v1

    .line 4488
    if-nez v1, :cond_26

    .line 4489
    .line 4490
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4491
    .line 4492
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4493
    .line 4494
    .line 4495
    goto/16 :goto_8

    .line 4496
    .line 4497
    :sswitch_fd
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4498
    .line 4499
    .line 4500
    move-result v1

    .line 4501
    if-nez v1, :cond_26

    .line 4502
    .line 4503
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4504
    .line 4505
    .line 4506
    move-result v1

    .line 4507
    if-nez v1, :cond_26

    .line 4508
    .line 4509
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4510
    .line 4511
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4512
    .line 4513
    .line 4514
    goto/16 :goto_8

    .line 4515
    .line 4516
    :sswitch_fe
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4517
    .line 4518
    .line 4519
    move-result v1

    .line 4520
    if-nez v1, :cond_26

    .line 4521
    .line 4522
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4523
    .line 4524
    .line 4525
    move-result v1

    .line 4526
    if-nez v1, :cond_26

    .line 4527
    .line 4528
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4529
    .line 4530
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4531
    .line 4532
    .line 4533
    goto/16 :goto_8

    .line 4534
    .line 4535
    :sswitch_ff
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4536
    .line 4537
    .line 4538
    move-result v1

    .line 4539
    if-nez v1, :cond_26

    .line 4540
    .line 4541
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4542
    .line 4543
    .line 4544
    move-result v1

    .line 4545
    if-nez v1, :cond_26

    .line 4546
    .line 4547
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4548
    .line 4549
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4550
    .line 4551
    .line 4552
    goto/16 :goto_8

    .line 4553
    .line 4554
    :sswitch_100
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4555
    .line 4556
    .line 4557
    move-result v1

    .line 4558
    if-nez v1, :cond_26

    .line 4559
    .line 4560
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4561
    .line 4562
    .line 4563
    move-result v1

    .line 4564
    if-nez v1, :cond_26

    .line 4565
    .line 4566
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4567
    .line 4568
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4569
    .line 4570
    .line 4571
    goto/16 :goto_8

    .line 4572
    .line 4573
    :sswitch_101
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4574
    .line 4575
    .line 4576
    move-result v1

    .line 4577
    if-nez v1, :cond_26

    .line 4578
    .line 4579
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4580
    .line 4581
    .line 4582
    move-result v1

    .line 4583
    if-nez v1, :cond_26

    .line 4584
    .line 4585
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4586
    .line 4587
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4588
    .line 4589
    .line 4590
    goto/16 :goto_8

    .line 4591
    .line 4592
    :sswitch_102
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4593
    .line 4594
    .line 4595
    move-result v1

    .line 4596
    if-nez v1, :cond_26

    .line 4597
    .line 4598
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4599
    .line 4600
    .line 4601
    move-result v1

    .line 4602
    if-nez v1, :cond_26

    .line 4603
    .line 4604
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4605
    .line 4606
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4607
    .line 4608
    .line 4609
    goto/16 :goto_8

    .line 4610
    .line 4611
    :sswitch_103
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4612
    .line 4613
    .line 4614
    move-result v1

    .line 4615
    if-nez v1, :cond_26

    .line 4616
    .line 4617
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4618
    .line 4619
    .line 4620
    move-result v1

    .line 4621
    if-nez v1, :cond_26

    .line 4622
    .line 4623
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4624
    .line 4625
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4626
    .line 4627
    .line 4628
    goto/16 :goto_8

    .line 4629
    .line 4630
    :cond_12
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4631
    .line 4632
    .line 4633
    move-result v1

    .line 4634
    if-nez v1, :cond_26

    .line 4635
    .line 4636
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4637
    .line 4638
    .line 4639
    move-result v1

    .line 4640
    if-nez v1, :cond_26

    .line 4641
    .line 4642
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4643
    .line 4644
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4645
    .line 4646
    .line 4647
    goto/16 :goto_8

    .line 4648
    .line 4649
    :cond_13
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4650
    .line 4651
    .line 4652
    move-result v1

    .line 4653
    if-nez v1, :cond_26

    .line 4654
    .line 4655
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4656
    .line 4657
    .line 4658
    move-result v1

    .line 4659
    if-nez v1, :cond_26

    .line 4660
    .line 4661
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4662
    .line 4663
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4664
    .line 4665
    .line 4666
    goto/16 :goto_8

    .line 4667
    .line 4668
    :cond_14
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4669
    .line 4670
    .line 4671
    move-result v1

    .line 4672
    if-nez v1, :cond_26

    .line 4673
    .line 4674
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4675
    .line 4676
    .line 4677
    move-result v1

    .line 4678
    if-nez v1, :cond_26

    .line 4679
    .line 4680
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4681
    .line 4682
    .line 4683
    move-result v1

    .line 4684
    if-nez v1, :cond_26

    .line 4685
    .line 4686
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4687
    .line 4688
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4689
    .line 4690
    .line 4691
    goto/16 :goto_8

    .line 4692
    .line 4693
    :cond_15
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4694
    .line 4695
    .line 4696
    move-result v1

    .line 4697
    if-nez v1, :cond_26

    .line 4698
    .line 4699
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4700
    .line 4701
    .line 4702
    move-result v1

    .line 4703
    if-nez v1, :cond_26

    .line 4704
    .line 4705
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4706
    .line 4707
    .line 4708
    move-result v1

    .line 4709
    if-nez v1, :cond_26

    .line 4710
    .line 4711
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4712
    .line 4713
    .line 4714
    move-result v1

    .line 4715
    if-nez v1, :cond_26

    .line 4716
    .line 4717
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4718
    .line 4719
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4720
    .line 4721
    .line 4722
    goto/16 :goto_8

    .line 4723
    .line 4724
    :cond_16
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4725
    .line 4726
    .line 4727
    move-result v1

    .line 4728
    if-nez v1, :cond_26

    .line 4729
    .line 4730
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4731
    .line 4732
    .line 4733
    move-result v1

    .line 4734
    if-nez v1, :cond_26

    .line 4735
    .line 4736
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4737
    .line 4738
    .line 4739
    move-result v1

    .line 4740
    if-nez v1, :cond_26

    .line 4741
    .line 4742
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4743
    .line 4744
    .line 4745
    move-result v1

    .line 4746
    if-nez v1, :cond_26

    .line 4747
    .line 4748
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4749
    .line 4750
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4751
    .line 4752
    .line 4753
    goto/16 :goto_8

    .line 4754
    .line 4755
    :cond_17
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4756
    .line 4757
    .line 4758
    move-result v1

    .line 4759
    if-nez v1, :cond_26

    .line 4760
    .line 4761
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4762
    .line 4763
    .line 4764
    move-result v1

    .line 4765
    if-nez v1, :cond_26

    .line 4766
    .line 4767
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4768
    .line 4769
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4770
    .line 4771
    .line 4772
    goto/16 :goto_8

    .line 4773
    .line 4774
    :cond_18
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 4775
    .line 4776
    .line 4777
    move-result v1

    .line 4778
    const/16 v7, 0xa

    .line 4779
    .line 4780
    if-lt v1, v7, :cond_19

    .line 4781
    .line 4782
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 4783
    .line 4784
    .line 4785
    move-result v1

    .line 4786
    const/16 v7, 0x258

    .line 4787
    .line 4788
    if-le v1, v7, :cond_26

    .line 4789
    .line 4790
    :cond_19
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4791
    .line 4792
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4793
    .line 4794
    .line 4795
    goto/16 :goto_8

    .line 4796
    .line 4797
    :cond_1a
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 4798
    .line 4799
    .line 4800
    move-result v1

    .line 4801
    const/16 v7, 0x19

    .line 4802
    .line 4803
    if-lt v1, v7, :cond_1b

    .line 4804
    .line 4805
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 4806
    .line 4807
    .line 4808
    move-result v1

    .line 4809
    const/16 v7, 0x190

    .line 4810
    .line 4811
    if-le v1, v7, :cond_26

    .line 4812
    .line 4813
    :cond_1b
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4814
    .line 4815
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4816
    .line 4817
    .line 4818
    goto/16 :goto_8

    .line 4819
    .line 4820
    :cond_1c
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4821
    .line 4822
    .line 4823
    move-result v1

    .line 4824
    if-nez v1, :cond_26

    .line 4825
    .line 4826
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4827
    .line 4828
    .line 4829
    move-result v1

    .line 4830
    if-nez v1, :cond_26

    .line 4831
    .line 4832
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4833
    .line 4834
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4835
    .line 4836
    .line 4837
    goto/16 :goto_8

    .line 4838
    .line 4839
    :cond_1d
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4840
    .line 4841
    .line 4842
    move-result v1

    .line 4843
    if-nez v1, :cond_26

    .line 4844
    .line 4845
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4846
    .line 4847
    .line 4848
    move-result v1

    .line 4849
    if-nez v1, :cond_26

    .line 4850
    .line 4851
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4852
    .line 4853
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4854
    .line 4855
    .line 4856
    goto/16 :goto_8

    .line 4857
    .line 4858
    :cond_1e
    :sswitch_104
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4859
    .line 4860
    .line 4861
    move-result v1

    .line 4862
    if-nez v1, :cond_26

    .line 4863
    .line 4864
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4865
    .line 4866
    .line 4867
    move-result v1

    .line 4868
    if-nez v1, :cond_26

    .line 4869
    .line 4870
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4871
    .line 4872
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4873
    .line 4874
    .line 4875
    goto/16 :goto_8

    .line 4876
    .line 4877
    :cond_1f
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4878
    .line 4879
    .line 4880
    move-result v1

    .line 4881
    if-nez v1, :cond_26

    .line 4882
    .line 4883
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4884
    .line 4885
    .line 4886
    move-result v1

    .line 4887
    if-nez v1, :cond_26

    .line 4888
    .line 4889
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4890
    .line 4891
    .line 4892
    move-result v1

    .line 4893
    if-nez v1, :cond_26

    .line 4894
    .line 4895
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4896
    .line 4897
    .line 4898
    move-result v1

    .line 4899
    if-nez v1, :cond_26

    .line 4900
    .line 4901
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4902
    .line 4903
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4904
    .line 4905
    .line 4906
    goto/16 :goto_8

    .line 4907
    .line 4908
    :cond_20
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_NOT_SUPPORTED:I

    .line 4909
    .line 4910
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4911
    .line 4912
    .line 4913
    goto/16 :goto_8

    .line 4914
    .line 4915
    :cond_21
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4916
    .line 4917
    .line 4918
    move-result v1

    .line 4919
    if-nez v1, :cond_26

    .line 4920
    .line 4921
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4922
    .line 4923
    .line 4924
    move-result v1

    .line 4925
    if-nez v1, :cond_26

    .line 4926
    .line 4927
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4928
    .line 4929
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4930
    .line 4931
    .line 4932
    goto :goto_8

    .line 4933
    :cond_22
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4934
    .line 4935
    .line 4936
    move-result v1

    .line 4937
    if-nez v1, :cond_26

    .line 4938
    .line 4939
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4940
    .line 4941
    .line 4942
    move-result v1

    .line 4943
    if-nez v1, :cond_26

    .line 4944
    .line 4945
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4946
    .line 4947
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4948
    .line 4949
    .line 4950
    goto :goto_8

    .line 4951
    :cond_23
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4952
    .line 4953
    .line 4954
    move-result v1

    .line 4955
    if-nez v1, :cond_26

    .line 4956
    .line 4957
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4958
    .line 4959
    .line 4960
    move-result v1

    .line 4961
    if-nez v1, :cond_26

    .line 4962
    .line 4963
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4964
    .line 4965
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4966
    .line 4967
    .line 4968
    goto :goto_8

    .line 4969
    :cond_24
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4970
    .line 4971
    .line 4972
    move-result v1

    .line 4973
    if-nez v1, :cond_26

    .line 4974
    .line 4975
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4976
    .line 4977
    .line 4978
    move-result v1

    .line 4979
    if-nez v1, :cond_26

    .line 4980
    .line 4981
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 4982
    .line 4983
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4984
    .line 4985
    .line 4986
    goto :goto_8

    .line 4987
    :cond_25
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4988
    .line 4989
    .line 4990
    move-result v1

    .line 4991
    if-nez v1, :cond_26

    .line 4992
    .line 4993
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4994
    .line 4995
    .line 4996
    move-result v1

    .line 4997
    if-nez v1, :cond_26

    .line 4998
    .line 4999
    sget v1, Lcom/samsung/android/knox/appconfig/info/ResultInfo;->ERROR_INVALID_VALUE:I

    .line 5000
    .line 5001
    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 5002
    .line 5003
    .line 5004
    goto :goto_8

    .line 5005
    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    .line 5006
    .line 5007
    const-string v7, "fail to validate "

    .line 5008
    .line 5009
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5010
    .line 5011
    .line 5012
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5013
    .line 5014
    .line 5015
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5016
    .line 5017
    .line 5018
    move-result-object v1

    .line 5019
    invoke-static {v2, v1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5020
    .line 5021
    .line 5022
    :cond_26
    :goto_8
    move-object/from16 v1, p1

    .line 5023
    .line 5024
    goto/16 :goto_0

    .line 5025
    .line 5026
    :cond_27
    return-object v4

    :sswitch_data_0
    .sparse-switch
        -0x7f5cb021 -> :sswitch_d0
        -0x787013c6 -> :sswitch_cf
        -0x72e8c808 -> :sswitch_ce
        -0x70e89afa -> :sswitch_cd
        -0x70cc2d24 -> :sswitch_cc
        -0x705f4111 -> :sswitch_cb
        -0x6bafcb5b -> :sswitch_ca
        -0x6b770d2f -> :sswitch_c9
        -0x6b1bfe7b -> :sswitch_c8
        -0x6a1df617 -> :sswitch_c7
        -0x69a85713 -> :sswitch_c6
        -0x67379d00 -> :sswitch_c5
        -0x65712a00 -> :sswitch_c4
        -0x640f2df5 -> :sswitch_c3
        -0x63de4f3f -> :sswitch_c2
        -0x62d0484b -> :sswitch_c1
        -0x62ae10dd -> :sswitch_c0
        -0x5b20666f -> :sswitch_bf
        -0x58d55dbc -> :sswitch_be
        -0x58cef052 -> :sswitch_bd
        -0x588de745 -> :sswitch_bc
        -0x574ec733 -> :sswitch_bb
        -0x56fd1517 -> :sswitch_ba
        -0x55af4883 -> :sswitch_b9
        -0x5424cde7 -> :sswitch_b8
        -0x53046480 -> :sswitch_b7
        -0x5293f996 -> :sswitch_b6
        -0x5270bd91 -> :sswitch_b5
        -0x503c9082 -> :sswitch_b4
        -0x4fbce263 -> :sswitch_b3
        -0x4f5feeef -> :sswitch_b2
        -0x4ec70bfd -> :sswitch_b1
        -0x4d0a712e -> :sswitch_b0
        -0x4ccd4ad2 -> :sswitch_af
        -0x4bdf968d -> :sswitch_ae
        -0x4b81ee16 -> :sswitch_ad
        -0x4b0c998a -> :sswitch_ac
        -0x4a8376ec -> :sswitch_ab
        -0x4a34e804 -> :sswitch_aa
        -0x4969d71d -> :sswitch_a9
        -0x485b6dfe -> :sswitch_a8
        -0x47f26a51 -> :sswitch_a7
        -0x42717761 -> :sswitch_a6
        -0x4261e015 -> :sswitch_a5
        -0x3ffd6516 -> :sswitch_a4
        -0x3f046bfa -> :sswitch_a3
        -0x3e9934f1 -> :sswitch_a2
        -0x3e8fe055 -> :sswitch_a1
        -0x3bc386d8 -> :sswitch_a0
        -0x3bb86c23 -> :sswitch_9f
        -0x3b2c12ce -> :sswitch_9e
        -0x3812671f -> :sswitch_9d
        -0x37d9a523 -> :sswitch_9c
        -0x354445ae -> :sswitch_9b
        -0x314d8a32 -> :sswitch_9a
        -0x313a5164 -> :sswitch_99
        -0x2f80f0e3 -> :sswitch_98
        -0x2f73aab0 -> :sswitch_97
        -0x2ea4a2d7 -> :sswitch_96
        -0x2d772949 -> :sswitch_95
        -0x2bff1350 -> :sswitch_94
        -0x2bc011b8 -> :sswitch_93
        -0x2b692c1b -> :sswitch_92
        -0x2b0fff71 -> :sswitch_91
        -0x2ab92996 -> :sswitch_90
        -0x29c9d2c2 -> :sswitch_8f
        -0x28f70de7 -> :sswitch_8e
        -0x28897b8a -> :sswitch_8d
        -0x276d2439 -> :sswitch_8c
        -0x2487d469 -> :sswitch_8b
        -0x22cd2235 -> :sswitch_8a
        -0x2171b40e -> :sswitch_89
        -0x1fbd53a0 -> :sswitch_88
        -0x1dd1a9ea -> :sswitch_87
        -0x1d2bba9b -> :sswitch_86
        -0x1d090dfc -> :sswitch_85
        -0x1b8d2d73 -> :sswitch_84
        -0x1ad7d13f -> :sswitch_83
        -0x191499f3 -> :sswitch_82
        -0x189833bc -> :sswitch_81
        -0x186d69a7 -> :sswitch_80
        -0x1827bcbf -> :sswitch_7f
        -0x17cba8d3 -> :sswitch_7e
        -0x179e4fff -> :sswitch_7d
        -0x16fa889e -> :sswitch_7c
        -0x159b1c23 -> :sswitch_7b
        -0x14e8d153 -> :sswitch_7a
        -0x142aff4f -> :sswitch_79
        -0x12ca16cb -> :sswitch_78
        -0x127d2833 -> :sswitch_77
        -0x122bc0d0 -> :sswitch_76
        -0x114d657c -> :sswitch_75
        -0xe56d6ca -> :sswitch_74
        -0xce06d95 -> :sswitch_73
        -0x9d1b89a -> :sswitch_72
        -0x8d18fb4 -> :sswitch_71
        -0x7ffc723 -> :sswitch_70
        -0x7980be9 -> :sswitch_6f
        -0x76e157a -> :sswitch_6e
        -0x5c6012c -> :sswitch_6d
        -0x57f5054 -> :sswitch_6c
        -0x421126d -> :sswitch_6b
        -0x38db16c -> :sswitch_6a
        -0x2f3ad77 -> :sswitch_69
        -0x2aea77a -> :sswitch_68
        0x6a1594 -> :sswitch_67
        0xb5ce54 -> :sswitch_66
        0x1268597 -> :sswitch_65
        0x2f125e2 -> :sswitch_64
        0x319915f -> :sswitch_63
        0x59b944f -> :sswitch_62
        0x91483ff -> :sswitch_61
        0x9c1eaa9 -> :sswitch_60
        0x9c49f8e -> :sswitch_5f
        0xa371348 -> :sswitch_5e
        0xa801419 -> :sswitch_5d
        0xcbfc309 -> :sswitch_5c
        0xddb2b83 -> :sswitch_5b
        0xea853a6 -> :sswitch_5a
        0xebf6e1a -> :sswitch_59
        0x1089c6b3 -> :sswitch_58
        0x114887c3 -> :sswitch_57
        0x12bde081 -> :sswitch_56
        0x14a5a9c5 -> :sswitch_55
        0x14f49e67 -> :sswitch_54
        0x14fee157 -> :sswitch_53
        0x1528b87d -> :sswitch_52
        0x1642ab48 -> :sswitch_51
        0x176690e1 -> :sswitch_50
        0x18f662a5 -> :sswitch_4f
        0x1c19474f -> :sswitch_4e
        0x1cc32bb4 -> :sswitch_4d
        0x237a88eb -> :sswitch_4c
        0x2668f90b -> :sswitch_4b
        0x29373095 -> :sswitch_4a
        0x29de8e28 -> :sswitch_49
        0x2bd7b901 -> :sswitch_48
        0x2d890a14 -> :sswitch_47
        0x2dee6dea -> :sswitch_46
        0x2eb98d17 -> :sswitch_45
        0x2efc05de -> :sswitch_44
        0x306993b7 -> :sswitch_43
        0x322891b4 -> :sswitch_42
        0x3343888e -> :sswitch_41
        0x35b5df3a -> :sswitch_40
        0x35ee0ae6 -> :sswitch_3f
        0x3780cd1a -> :sswitch_3e
        0x383dc7a9 -> :sswitch_3d
        0x38730e8f -> :sswitch_3c
        0x39abdad3 -> :sswitch_3b
        0x3e637c74 -> :sswitch_3a
        0x40383676 -> :sswitch_39
        0x4104aeb5 -> :sswitch_38
        0x424d656d -> :sswitch_37
        0x436e0232 -> :sswitch_36
        0x448b4925 -> :sswitch_35
        0x470f223a -> :sswitch_34
        0x47a8296d -> :sswitch_33
        0x47b87a85 -> :sswitch_32
        0x4857e328 -> :sswitch_31
        0x4a05f63f -> :sswitch_30
        0x4ae07531 -> :sswitch_2f
        0x4cbee6e9 -> :sswitch_2e
        0x4cce6401 -> :sswitch_2d
        0x4fb137f0 -> :sswitch_2c
        0x5080e6c9 -> :sswitch_2b
        0x52e83744 -> :sswitch_2a
        0x537bcc50 -> :sswitch_29
        0x55d982d2 -> :sswitch_28
        0x57037fb5 -> :sswitch_27
        0x5a047737 -> :sswitch_26
        0x5ae319bc -> :sswitch_25
        0x5bbc62dd -> :sswitch_24
        0x5bc56e60 -> :sswitch_23
        0x5bdd179a -> :sswitch_22
        0x5be34f82 -> :sswitch_21
        0x5be34f83 -> :sswitch_20
        0x5d584ea7 -> :sswitch_1f
        0x5ed3e575 -> :sswitch_1e
        0x606bf2c0 -> :sswitch_1d
        0x62408c3e -> :sswitch_1c
        0x6306bfa5 -> :sswitch_1b
        0x63278621 -> :sswitch_1a
        0x6402d2db -> :sswitch_19
        0x642f4f76 -> :sswitch_18
        0x650f09da -> :sswitch_17
        0x6568c319 -> :sswitch_16
        0x65f349d8 -> :sswitch_15
        0x662ee633 -> :sswitch_14
        0x663b2e7e -> :sswitch_13
        0x68ad06ee -> :sswitch_12
        0x6981c692 -> :sswitch_11
        0x69bd25e7 -> :sswitch_10
        0x69d231dd -> :sswitch_f
        0x6c6aad51 -> :sswitch_e
        0x6dc86397 -> :sswitch_d
        0x6e355777 -> :sswitch_c
        0x6f216615 -> :sswitch_b
        0x705a7c00 -> :sswitch_a
        0x72a6d836 -> :sswitch_9
        0x734e5d87 -> :sswitch_8
        0x74c2f437 -> :sswitch_7
        0x78c6352e -> :sswitch_6
        0x78cd108a -> :sswitch_5
        0x7b5d2ad0 -> :sswitch_4
        0x7c6b1493 -> :sswitch_3
        0x7ceb0fac -> :sswitch_2
        0x7e6be5f0 -> :sswitch_1
        0x7fc6dff8 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x7 -> :sswitch_104
        0x8 -> :sswitch_103
        0x9 -> :sswitch_102
        0xa -> :sswitch_101
        0xb -> :sswitch_100
        0xc -> :sswitch_ff
        0xd -> :sswitch_fe
        0xe -> :sswitch_fd
        0xf -> :sswitch_fc
        0x10 -> :sswitch_fb
        0x11 -> :sswitch_fa
        0x12 -> :sswitch_f9
        0x13 -> :sswitch_f8
        0x14 -> :sswitch_f7
        0x15 -> :sswitch_f6
        0x1d -> :sswitch_f5
        0x53 -> :sswitch_f4
        0x56 -> :sswitch_f3
        0x5d -> :sswitch_f2
        0x66 -> :sswitch_f1
        0x75 -> :sswitch_f0
        0x76 -> :sswitch_ef
        0x80 -> :sswitch_ee
        0x86 -> :sswitch_ed
        0x87 -> :sswitch_ec
        0x88 -> :sswitch_eb
        0x8b -> :sswitch_ea
        0x8c -> :sswitch_e9
        0x8d -> :sswitch_e8
        0x8f -> :sswitch_e7
        0x90 -> :sswitch_e6
        0x91 -> :sswitch_e5
        0x92 -> :sswitch_e4
        0x93 -> :sswitch_e3
        0x94 -> :sswitch_e2
        0x96 -> :sswitch_e1
        0x97 -> :sswitch_e0
        0xac -> :sswitch_df
        0xad -> :sswitch_de
        0xae -> :sswitch_dd
        0xaf -> :sswitch_dc
        0xb0 -> :sswitch_db
        0xb1 -> :sswitch_da
        0xb2 -> :sswitch_d9
        0xb3 -> :sswitch_d8
        0xb4 -> :sswitch_d7
        0xb5 -> :sswitch_d6
        0xbd -> :sswitch_d5
        0xbf -> :sswitch_d4
        0xc1 -> :sswitch_d3
        0xc3 -> :sswitch_d2
        0xcc -> :sswitch_d1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x31
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x59
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
