.class Lcom/android/phone/OtaInCallScreen$3;
.super Ljava/lang/Thread;
.source "OtaInCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/OtaInCallScreen;->onClickOtaActivateNextButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OtaInCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/OtaInCallScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/OtaInCallScreen$3;->this$0:Lcom/android/phone/OtaInCallScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen$3;->this$0:Lcom/android/phone/OtaInCallScreen;

    # getter for: Lcom/android/phone/OtaInCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;
    invoke-static {v0}, Lcom/android/phone/OtaInCallScreen;->access$300(Lcom/android/phone/OtaInCallScreen;)Lcom/android/phone/OtaUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen$3;->this$0:Lcom/android/phone/OtaInCallScreen;

    # getter for: Lcom/android/phone/OtaInCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;
    invoke-static {v0}, Lcom/android/phone/OtaInCallScreen;->access$300(Lcom/android/phone/OtaInCallScreen;)Lcom/android/phone/OtaUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->rebootSystemAfterOtaSuccess()V

    :cond_0
    return-void
.end method
