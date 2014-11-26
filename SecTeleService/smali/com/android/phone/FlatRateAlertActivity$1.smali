.class Lcom/android/phone/FlatRateAlertActivity$1;
.super Ljava/lang/Object;
.source "FlatRateAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/FlatRateAlertActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/FlatRateAlertActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/FlatRateAlertActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/FlatRateAlertActivity$1;->this$0:Lcom/android/phone/FlatRateAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v1, p0, Lcom/android/phone/FlatRateAlertActivity$1;->this$0:Lcom/android/phone/FlatRateAlertActivity;

    # getter for: Lcom/android/phone/FlatRateAlertActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/FlatRateAlertActivity;->access$000(Lcom/android/phone/FlatRateAlertActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-string v1, "bootup_data_tariff_rate_popup"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/FlatRateAlertActivity$1;->this$0:Lcom/android/phone/FlatRateAlertActivity;

    # getter for: Lcom/android/phone/FlatRateAlertActivity;->radioOption1:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/android/phone/FlatRateAlertActivity;->access$100(Lcom/android/phone/FlatRateAlertActivity;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    sget-object v2, Lcom/android/phone/FlatRateAlertActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    :goto_1
    iget-object v1, p0, Lcom/android/phone/FlatRateAlertActivity$1;->this$0:Lcom/android/phone/FlatRateAlertActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/phone/FlatRateAlertActivity;->mCheckBox:Landroid/view/View;

    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_1
.end method
