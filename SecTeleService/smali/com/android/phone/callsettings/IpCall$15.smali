.class Lcom/android/phone/callsettings/IpCall$15;
.super Ljava/lang/Object;
.source "IpCall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCall;->editDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IpCall;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCall;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall$15;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$15;->this$0:Lcom/android/phone/callsettings/IpCall;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/callsettings/IpCall;->mAnyPopupDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/IpCall;->access$102(Lcom/android/phone/callsettings/IpCall;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$15;->this$0:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/IpCall;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$15;->this$0:Lcom/android/phone/callsettings/IpCall;

    # invokes: Lcom/android/phone/callsettings/IpCall;->updateIpNumberList()V
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$200(Lcom/android/phone/callsettings/IpCall;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$15;->this$0:Lcom/android/phone/callsettings/IpCall;

    # getter for: Lcom/android/phone/callsettings/IpCall;->mState:I
    invoke-static {v0}, Lcom/android/phone/callsettings/IpCall;->access$300(Lcom/android/phone/callsettings/IpCall;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall$15;->this$0:Lcom/android/phone/callsettings/IpCall;

    iget-object v0, v0, Lcom/android/phone/callsettings/IpCall;->emptyText:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method
