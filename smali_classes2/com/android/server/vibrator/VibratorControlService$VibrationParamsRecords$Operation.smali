.class final enum Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;
.super Ljava/lang/Enum;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

.field public static final enum CLEAR:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

.field public static final enum PULL:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

.field public static final enum PUSH:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    .line 2
    .line 3
    const-string v1, "PULL"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->PULL:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    .line 12
    .line 13
    const-string v2, "PUSH"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->PUSH:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    .line 20
    .line 21
    new-instance v2, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    .line 22
    .line 23
    const-string v3, "CLEAR"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->CLEAR:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    .line 30
    .line 31
    filled-new-array {v0, v1, v2}, [Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->$VALUES:[Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    .line 36
    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->$VALUES:[Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    .line 8
    .line 9
    return-object v0
.end method
