.class Lcom/android/incallui/service/IncomingPopupService$3;
.super Ljava/lang/Object;
.source "IncomingPopupService.java"

# interfaces
.implements Lcom/android/incallui/EcidClient$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/IncomingPopupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/IncomingPopupService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/IncomingPopupService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/IncomingPopupService$3;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Lcom/android/services/telephony/common/Call;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService$3;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->onEcidUpdate(Lcom/android/services/telephony/common/Call;)V
    invoke-static {v0, p1}, Lcom/android/incallui/service/IncomingPopupService;->access$1900(Lcom/android/incallui/service/IncomingPopupService;Lcom/android/services/telephony/common/Call;)V

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService$3;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    iget-object v0, v0, Lcom/android/incallui/service/MiniModeCallService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->broadcastCallName(Landroid/content/Context;)V

    return-void
.end method
