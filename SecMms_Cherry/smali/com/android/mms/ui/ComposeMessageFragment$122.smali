.class Lcom/android/mms/ui/ComposeMessageFragment$122;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->createAttachLeftListWidgetFromView(Landroid/view/View;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$122;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$122;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsAttachShowing:Z
    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6502(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$122;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAirButtonSipCheck:Z
    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9902(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$122;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAirButtonSipCheck:Z
    invoke-static {v0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9902(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    goto :goto_0
.end method
