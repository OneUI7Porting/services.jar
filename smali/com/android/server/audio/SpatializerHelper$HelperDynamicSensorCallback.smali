.class public final Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;
.super Landroid/hardware/SensorManager$DynamicSensorCallback;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/SpatializerHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/SpatializerHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/SensorManager$DynamicSensorCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDynamicSensorConnected(Landroid/hardware/Sensor;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->postInitSensors()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onDynamicSensorDisconnected(Landroid/hardware/Sensor;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper$HelperDynamicSensorCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->postInitSensors()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
