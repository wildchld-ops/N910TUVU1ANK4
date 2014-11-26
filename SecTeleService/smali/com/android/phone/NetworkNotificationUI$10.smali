.class Lcom/android/phone/NetworkNotificationUI$10;
.super Ljava/lang/Object;
.source "NetworkNotificationUI.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkNotificationUI;->showLGTRoamingDataSelectionPopUp2_4()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkNotificationUI;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$10;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$10;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mBackGroundData:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$4700(Lcom/android/phone/NetworkNotificationUI;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$10;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mBackGroundData:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$4700(Lcom/android/phone/NetworkNotificationUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$10;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mBackGroundData:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$4700(Lcom/android/phone/NetworkNotificationUI;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$10;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mBackGroundMsgView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$5100(Lcom/android/phone/NetworkNotificationUI;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
