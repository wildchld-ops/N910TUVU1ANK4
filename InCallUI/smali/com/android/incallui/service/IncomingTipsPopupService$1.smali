.class Lcom/android/incallui/service/IncomingTipsPopupService$1;
.super Ljava/lang/Object;
.source "IncomingTipsPopupService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/IncomingTipsPopupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/IncomingTipsPopupService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/IncomingTipsPopupService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/IncomingTipsPopupService$1;->this$0:Lcom/android/incallui/service/IncomingTipsPopupService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/service/IncomingTipsPopupService$1;->this$0:Lcom/android/incallui/service/IncomingTipsPopupService;

    invoke-virtual {v1}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0e01a1
        :pswitch_0
    .end packed-switch
.end method
