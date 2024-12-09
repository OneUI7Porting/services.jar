.class public final Lcom/android/server/bgslotmanager/CustomEFKManager;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final APP_EFK_DECREASE_BOOST_ENABLE:Z

.field public static final BOOTING_EFK_BOOST_ENABLE:Z

.field public static final DECEFK_EXCEPT_PROC_ARRAY:[Ljava/lang/String;

.field public static final mTotalMemMb:J


# instance fields
.field public addBonusEFK:I

.field public isBlockDecEFK:Z

.field public isStillDecEFK:Z

.field public last_Watermark_EFK:I

.field public origin_EFK:I

.field public vDecreaseEFK:I

.field public vDecreaseEFKTime:I

.field public vWatermarkScaleGetPerTickTime:I

.field public vWatermarkScaleGetTime:I

.field public v_BonusEFK:I

.field public v_bonusEFKWhileBoot:I

.field public v_watermark_scale:I


# direct methods
.method public static -$$Nest$mrestoreEFKAfterBoot(Lcom/android/server/bgslotmanager/CustomEFKManager;)V
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->origin_EFK:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-eq p0, v0, :cond_0

    .line 5
    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget v0, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_2ND:I

    .line 11
    .line 12
    const-string/jumbo v0, "sys.sysctl.extra_free_kbytes"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x100000

    .line 6
    .line 7
    .line 8
    div-long/2addr v0, v2

    .line 9
    sput-wide v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->mTotalMemMb:J

    .line 10
    .line 11
    const-string/jumbo v0, "dec_EFK_enable"

    .line 12
    .line 13
    .line 14
    const-string/jumbo v1, "false"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sput-boolean v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->APP_EFK_DECREASE_BOOST_ENABLE:Z

    .line 22
    .line 23
    const-string/jumbo v0, "bEFKb_enable"

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    sput-boolean v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->BOOTING_EFK_BOOST_ENABLE:Z

    .line 31
    .line 32
    const-string v0, "Y29tLnNlYy5hbmRyb2lkLmFwcC5zYnJvd3Nlcg=="

    .line 33
    .line 34
    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "Y29tLnNlYy5hbmRyb2lkLmFwcC5jYW1lcmE="

    .line 39
    .line 40
    invoke-static {v1}, Lcom/android/server/am/DynamicHiddenApp;->decodeToStr(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->DECEFK_EXCEPT_PROC_ARRAY:[Ljava/lang/String;

    .line 49
    .line 50
    return-void
.end method
