.class Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$3;
.super Ljava/lang/Object;
.source "SafetyCareDisclaimerActivity.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

.field final synthetic val$okButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$3;->this$0:Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    iput-object p2, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$3;->val$okButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$3;->this$0:Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    # getter for: Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck1:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->access$200(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->playSoundEffect(I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$3;->this$0:Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    invoke-virtual {v0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->setCheckAll()V

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$3;->this$0:Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    # getter for: Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck1:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->access$200(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$3;->val$okButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$3;->val$okButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
