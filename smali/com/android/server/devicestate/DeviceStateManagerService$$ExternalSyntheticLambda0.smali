.class public final synthetic Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/devicestate/DeviceStateManagerService$SystemPropertySetter;


# virtual methods
.method public final setDebugTracingDeviceStateProperty(Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string/jumbo p0, "debug.tracing.device_state"

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
