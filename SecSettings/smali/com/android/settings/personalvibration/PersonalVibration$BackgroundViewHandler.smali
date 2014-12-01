.class Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;
.super Landroid/os/Handler;
.source "PersonalVibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/personalvibration/PersonalVibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundViewHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personalvibration/PersonalVibration;


# direct methods
.method private constructor <init>(Lcom/android/settings/personalvibration/PersonalVibration;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/personalvibration/PersonalVibration;Lcom/android/settings/personalvibration/PersonalVibration$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;-><init>(Lcom/android/settings/personalvibration/PersonalVibration;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "PersonalVibration"

    const-string v1, "handleMessage : 111"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->centerText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    const-string v0, "PersonalVibration"

    const-string v1, "handleMessage : 112"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020560

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f091697

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->getPatternString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->rightButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    :pswitch_2
    const-string v0, "PersonalVibration"

    const-string v1, "handleMessage : 112"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
