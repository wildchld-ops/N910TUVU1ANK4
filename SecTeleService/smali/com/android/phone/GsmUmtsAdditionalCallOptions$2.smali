.class Lcom/android/phone/GsmUmtsAdditionalCallOptions$2;
.super Ljava/lang/Object;
.source "GsmUmtsAdditionalCallOptions.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/GsmUmtsAdditionalCallOptions;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$2;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    const/4 v7, 0x1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    const-string v0, ""

    :cond_0
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$2;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceChange - mAutoAreaCodeButton "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v7}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$200(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;Z)V

    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    if-eq v4, v7, :cond_1

    sget-boolean v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->IsSIM2only:Z

    if-eqz v4, :cond_4

    :cond_1
    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$2;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    # invokes: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$300(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "area_code_value"

    invoke-static {v5, v7}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$2;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    # invokes: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateSummaryAutoAreaCode(Ljava/lang/String;)V
    invoke-static {v4, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$600(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$2;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    # invokes: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateAutoAreaCodeOnOff(Ljava/lang/String;)V
    invoke-static {v4, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$700(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;)V

    return v7

    :cond_3
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$2;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    # invokes: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$400(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "area_code_sim2_value"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$2;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    # invokes: Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->access$500(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "area_code_value"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "feature_dcm"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$2;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-virtual {v4}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "network_service_settings"

    invoke-virtual {v4, v5, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "prefix_setting_code1"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "prefix_setting_name1"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "prefix_setting_code_index"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v4, "prefix_setting_name_index"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
