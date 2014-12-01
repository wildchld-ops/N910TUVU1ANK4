.class Lcom/android/mms/freemessage/FreeMessageBubbleView$1$1;
.super Ljava/lang/Object;
.source "FreeMessageBubbleView.java"

# interfaces
.implements Landroid/widget/HoverPopupWindow$HoverPopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/freemessage/FreeMessageBubbleView$1;


# direct methods
.method constructor <init>(Lcom/android/mms/freemessage/FreeMessageBubbleView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1$1;->this$1:Lcom/android/mms/freemessage/FreeMessageBubbleView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1$1;->this$1:Lcom/android/mms/freemessage/FreeMessageBubbleView$1;

    iget-object v0, v0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mHoverPopupWindowimg:Landroid/widget/HoverPopupWindow;
    invoke-static {v0}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$800(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/widget/HoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1$1;->this$1:Lcom/android/mms/freemessage/FreeMessageBubbleView$1;

    iget-object v0, v0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mHoverPopupWindowimg:Landroid/widget/HoverPopupWindow;
    invoke-static {v0}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$800(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/widget/HoverPopupWindow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setTouchablePopup(Z)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1$1;->this$1:Lcom/android/mms/freemessage/FreeMessageBubbleView$1;

    iget-object v0, v0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mHoverPopupWindowimg:Landroid/widget/HoverPopupWindow;
    invoke-static {v0}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$800(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/widget/HoverPopupWindow;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1$1;->this$1:Lcom/android/mms/freemessage/FreeMessageBubbleView$1;

    iget-object v0, v0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mHoverPopupWindowimg:Landroid/widget/HoverPopupWindow;
    invoke-static {v0}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$800(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/widget/HoverPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1$1;->this$1:Lcom/android/mms/freemessage/FreeMessageBubbleView$1;

    iget-object v1, v1, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImgContent:Landroid/view/View;
    invoke-static {v1}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$100(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1$1;->this$1:Lcom/android/mms/freemessage/FreeMessageBubbleView$1;

    iget-object v0, v0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mPreviewImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$200(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1$1;->this$1:Lcom/android/mms/freemessage/FreeMessageBubbleView$1;

    iget-object v0, v0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mPreviewImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$200(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/android/mms/freemessage/FreeMessageBubbleView$1$1$1;

    invoke-direct {v1, p0}, Lcom/android/mms/freemessage/FreeMessageBubbleView$1$1$1;-><init>(Lcom/android/mms/freemessage/FreeMessageBubbleView$1$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1$1;->this$1:Lcom/android/mms/freemessage/FreeMessageBubbleView$1;

    iget-object v0, v0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mPlayImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$300(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1$1;->this$1:Lcom/android/mms/freemessage/FreeMessageBubbleView$1;

    iget-object v0, v0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mPlayImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$300(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/android/mms/freemessage/FreeMessageBubbleView$1$1$2;

    invoke-direct {v1, p0}, Lcom/android/mms/freemessage/FreeMessageBubbleView$1$1$2;-><init>(Lcom/android/mms/freemessage/FreeMessageBubbleView$1$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
