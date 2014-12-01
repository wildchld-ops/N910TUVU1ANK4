.class Lcom/android/phone/GsmUmtsAdditionalCallOptions$7;
.super Ljava/lang/Object;
.source "GsmUmtsAdditionalCallOptions.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GsmUmtsAdditionalCallOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$7;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/16 v2, 0x42

    if-ne p2, v2, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_2

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const-string v0, ""

    :cond_0
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$7;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOnKeyListener - KEYCODE_ENTER : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$200(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;Z)V

    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    if-eq v2, v5, :cond_1

    sget-boolean v2, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->IsSIM2only:Z

    if-eqz v2, :cond_4

    :cond_1
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$7;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    # invokes: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$1900(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "area_code_value"

    invoke-static {v3, v5}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$7;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    # invokes: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateSummaryAutoAreaCode(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$600(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$7;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    # invokes: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateAutoAreaCodeOnOff(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$700(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$7;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    # getter for: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;
    invoke-static {v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$2200(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/preference/EditTextPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$7;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    # getter for: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;
    invoke-static {v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$2200(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/preference/EditTextPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    const/4 v2, 0x0

    return v2

    :cond_3
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$7;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    # invokes: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$2000(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "area_code_sim2_value"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$7;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    # invokes: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$2100(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "area_code_value"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
