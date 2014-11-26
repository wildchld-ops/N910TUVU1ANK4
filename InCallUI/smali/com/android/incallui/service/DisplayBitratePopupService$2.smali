.class Lcom/android/incallui/service/DisplayBitratePopupService$2;
.super Ljava/lang/Object;
.source "DisplayBitratePopupService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/DisplayBitratePopupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/DisplayBitratePopupService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/DisplayBitratePopupService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/DisplayBitratePopupService$2;->this$0:Lcom/android/incallui/service/DisplayBitratePopupService;

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
    iget-object v1, p0, Lcom/android/incallui/service/DisplayBitratePopupService$2;->this$0:Lcom/android/incallui/service/DisplayBitratePopupService;

    invoke-virtual {v1}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0e008d
        :pswitch_0
    .end packed-switch
.end method
