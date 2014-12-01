.class Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$3;
.super Ljava/lang/Object;
.source "SafetyCareDisasterDisclaimerActivity.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;

.field final synthetic val$okButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$3;->this$0:Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;

    iput-object p2, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$3;->val$okButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$3;->this$0:Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;

    iget-object v0, v0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->agreeToShareLocationCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->playSoundEffect(I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$3;->this$0:Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;

    iget-object v0, v0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->agreeTermsAndConditionsCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$3;->this$0:Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;

    iget-object v0, v0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity;->agreeToTurnOnMobileDataCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$3;->val$okButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisasterDisclaimerActivity$3;->val$okButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
