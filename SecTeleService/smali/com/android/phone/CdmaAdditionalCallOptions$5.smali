.class Lcom/android/phone/CdmaAdditionalCallOptions$5;
.super Ljava/lang/Object;
.source "CdmaAdditionalCallOptions.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CdmaAdditionalCallOptions;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaAdditionalCallOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CdmaAdditionalCallOptions$5;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    const/4 v3, 0x0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions$5;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    # invokes: Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$1500(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voicecall_eq_list_value"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/phone/CdmaAdditionalCallOptions$5;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    invoke-virtual {v3}, Lcom/android/phone/CdmaAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/android/phone/CdmaAdditionalCallOptions$5;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    # getter for: Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$1200(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/preference/ListPreference;

    move-result-object v3

    const v4, 0x7f0903e2

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(I)V

    :goto_1
    const/4 v3, 0x1

    :goto_2
    return v3

    :pswitch_0
    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions$5;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    # invokes: Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$800(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hearing_direction"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions$5;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    # invokes: Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$900(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voicecall_eq_list_value"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions$5;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    # invokes: Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$1000(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hearing_diagnosis"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions$5;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    # invokes: Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$1100(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voicecall_eq_list_value"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions$5;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    # getter for: Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$1200(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/preference/ListPreference;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions$5;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    const/16 v5, 0x1f7

    invoke-virtual {v4, v5}, Lcom/android/phone/CdmaAdditionalCallOptions;->showDialog(I)V

    goto :goto_2

    :cond_0
    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions$5;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    # invokes: Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$1300(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hearing_direction"

    add-int/lit8 v6, v2, -0x3

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/phone/CdmaAdditionalCallOptions$5;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    # invokes: Lcom/android/phone/CdmaAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$1400(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voicecall_eq_list_value"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/phone/CdmaAdditionalCallOptions$5;->this$0:Lcom/android/phone/CdmaAdditionalCallOptions;

    # getter for: Lcom/android/phone/CdmaAdditionalCallOptions;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/android/phone/CdmaAdditionalCallOptions;->access$1200(Lcom/android/phone/CdmaAdditionalCallOptions;)Landroid/preference/ListPreference;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
