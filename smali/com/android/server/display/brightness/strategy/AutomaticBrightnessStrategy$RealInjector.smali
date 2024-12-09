.class public final Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$RealInjector;
.super Ljava/lang/Object;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$Injector;


# virtual methods
.method public final getBrightnessEvent(I)Lcom/android/server/display/brightness/BrightnessEvent;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/server/display/brightness/BrightnessEvent;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/android/server/display/brightness/BrightnessEvent;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
