.class Lcom/android/mms/help/AirButtonMainActivity$2;
.super Ljava/lang/Object;
.source "AirButtonMainActivity.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/help/AirButtonMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/help/AirButtonMainActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/help/AirButtonMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/help/AirButtonMainActivity$2;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity$2;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    # getter for: Lcom/android/mms/help/AirButtonMainActivity;->helpguide:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/mms/help/AirButtonMainActivity;->access$000(Lcom/android/mms/help/AirButtonMainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity$2;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    # getter for: Lcom/android/mms/help/AirButtonMainActivity;->helpguide:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/mms/help/AirButtonMainActivity;->access$000(Lcom/android/mms/help/AirButtonMainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity$2;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    iget-object v0, v0, Lcom/android/mms/help/AirButtonMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity$2;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    iget-object v0, v0, Lcom/android/mms/help/AirButtonMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity$2;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    iget-object v0, v0, Lcom/android/mms/help/AirButtonMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity$2;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    iget-object v0, v0, Lcom/android/mms/help/AirButtonMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0b0061 -> :sswitch_0
        0x7f0b0067 -> :sswitch_1
    .end sparse-switch
.end method
