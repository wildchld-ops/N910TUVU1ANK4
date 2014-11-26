.class Lcom/android/phone/OtaInCallScreen$2;
.super Ljava/lang/Object;
.source "OtaInCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/OtaInCallScreen;->onClickOtaActivateSkipButton()V
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

    iput-object p1, p0, Lcom/android/phone/OtaInCallScreen$2;->this$0:Lcom/android/phone/OtaInCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/phone/OtaInCallScreen$2;->this$0:Lcom/android/phone/OtaInCallScreen;

    # invokes: Lcom/android/phone/OtaInCallScreen;->otaSkipActivation()V
    invoke-static {v0}, Lcom/android/phone/OtaInCallScreen;->access$200(Lcom/android/phone/OtaInCallScreen;)V

    return-void
.end method
