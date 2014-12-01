.class Lcom/android/incallui/service/OverlayPopupService$1;
.super Landroid/content/BroadcastReceiver;
.source "OverlayPopupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/OverlayPopupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/OverlayPopupService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/OverlayPopupService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/OverlayPopupService$1;->this$0:Lcom/android/incallui/service/OverlayPopupService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService$1;->this$0:Lcom/android/incallui/service/OverlayPopupService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive with intent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/incallui/service/OverlayPopupService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/incallui/service/OverlayPopupService;->access$000(Lcom/android/incallui/service/OverlayPopupService;Ljava/lang/String;)V

    const-string v1, "com.sec.android.action.NOTIFY_STOP_DRAG_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mini_popup_call_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService$1;->this$0:Lcom/android/incallui/service/OverlayPopupService;

    # invokes: Lcom/android/incallui/service/OverlayPopupService;->setCallPhoto()V
    invoke-static {v1}, Lcom/android/incallui/service/OverlayPopupService;->access$100(Lcom/android/incallui/service/OverlayPopupService;)V

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService$1;->this$0:Lcom/android/incallui/service/OverlayPopupService;

    # getter for: Lcom/android/incallui/service/OverlayPopupService;->mDragModeImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/incallui/service/OverlayPopupService;->access$200(Lcom/android/incallui/service/OverlayPopupService;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService$1;->this$0:Lcom/android/incallui/service/OverlayPopupService;

    # getter for: Lcom/android/incallui/service/OverlayPopupService;->mImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/incallui/service/OverlayPopupService;->access$300(Lcom/android/incallui/service/OverlayPopupService;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/service/OverlayPopupService$1;->this$0:Lcom/android/incallui/service/OverlayPopupService;

    # setter for: Lcom/android/incallui/service/OverlayPopupService;->mDragModeEnable:Z
    invoke-static {v1, v4}, Lcom/android/incallui/service/OverlayPopupService;->access$402(Lcom/android/incallui/service/OverlayPopupService;Z)Z

    :cond_0
    return-void
.end method
