.class Lcom/android/incallui/CallButtonFragment$10;
.super Ljava/lang/Object;
.source "CallButtonFragment.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallButtonFragment;->createAddcallButtonListWidgetFromView(Landroid/view/View;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallButtonFragment$10;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v4

    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment$10;->this$0:Lcom/android/incallui/CallButtonFragment;

    const/4 v2, 0x1

    # setter for: Lcom/android/incallui/CallButtonFragment;->isHovering:Z
    invoke-static {v1, v2}, Lcom/android/incallui/CallButtonFragment;->access$402(Lcom/android/incallui/CallButtonFragment;Z)Z

    goto :goto_0

    :pswitch_1
    const-string v1, "onHover - ACTION_HOVER_EXIT"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment$10;->this$0:Lcom/android/incallui/CallButtonFragment;

    # getter for: Lcom/android/incallui/CallButtonFragment;->isHovering:Z
    invoke-static {v1}, Lcom/android/incallui/CallButtonFragment;->access$400(Lcom/android/incallui/CallButtonFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "onHover - ACTION_HOVER_EXIT - isShowing"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment$10;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.phone"

    const-string v3, "ADHV"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/utils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment$10;->this$0:Lcom/android/incallui/CallButtonFragment;

    # setter for: Lcom/android/incallui/CallButtonFragment;->isHovering:Z
    invoke-static {v1, v4}, Lcom/android/incallui/CallButtonFragment;->access$402(Lcom/android/incallui/CallButtonFragment;Z)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
