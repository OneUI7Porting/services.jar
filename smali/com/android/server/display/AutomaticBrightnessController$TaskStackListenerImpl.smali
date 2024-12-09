.class public final Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;
.super Landroid/app/TaskStackListener;
.source "qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTaskStackChanged()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method
